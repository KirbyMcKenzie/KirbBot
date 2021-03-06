﻿using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using BuddyBot.Helpers;
using BuddyBot.Models;
using BuddyBot.Services.Contracts;
using Microsoft.Bot.Connector;
using BuddyBot.Models.Enums;
using BuddyBot.Helpers.Contracts;

namespace BuddyBot.Dialogs
{
    [Serializable]
    public class GetWeatherForecastDialog : IDialog<string>
    {
        private readonly IWeatherService _weatherService;
        private readonly IList<EntityRecommendation> _entities;
        private readonly IBotDataService _botDataService;
        private readonly IMessageHelper _messageHelpers;

        public GetWeatherForecastDialog(IWeatherService weatherService, IList<EntityRecommendation> entities, 
            IBotDataService botDataService, IMessageHelper messageHelpers)
        {
            _weatherService = weatherService;
            _entities = entities;
            _botDataService = botDataService;
            _messageHelpers = messageHelpers;
        }


        /// <summary>
        /// Execution for the <see cref="GetWeatherForecastDialog"/> starts here. 
        /// </summary>
        /// <param name="context">Mandatory. The context for the execution of a dialog's conversational process.</param>
        public async Task StartAsync(IDialogContext context)
        {
            string cityName = _messageHelpers.ExtractEntityFromMessage("City.Name", _entities);
            string countryCode = _messageHelpers.ExtractEntityFromMessage("City.CountryCode", _entities, TextCaseType.UpperCase);
            string countryName = _messageHelpers.ExtractEntityFromMessage("City.CountryName", _entities);

            City preferredCity = _botDataService.GetPreferredWeatherLocation(context);

            if (string.IsNullOrEmpty(cityName))
            {

                if (preferredCity?.Name == null)
                {
                    PromptDialog.Text(context, ResumeAfterSpecifyCityNamePrompt, "What's the name of the city you want the forecast for?", 
                        "I can't understand you. Tell me the name of the city you want the forecast for");
                }
                else
                {
                    var weatherForecast = await _weatherService.GetWeather(preferredCity);

                        context.Done(weatherForecast != null
                            ? $"Currently the weather in {preferredCity.Name} is {weatherForecast}"
                            : "🤧⛅ - I'm having trouble accessing weather reports. We'll have to try again later!");
                }
            }
            else
            {
                IList<City> citySearchResults = await _weatherService.SearchForCities(cityName, countryCode, countryName);
                await ResumeAfterCitySearch(context, cityName, citySearchResults);
            }
        }


        /// <summary>
        /// Method called after the <see cref="IWeatherService.SearchForCities"/> method has searched for cities.
        /// </summary>
        /// <param name="context">Mandatory. The context for the execution of a dialog's conversational process.</param>
        /// <param name="cityName">Mandatory. The name of the city the user wants to get the weather for.</param>
        /// <param name="citySearchResults">Mandatory. List of potential cities retrieved from the 
        /// <see cref="IWeatherService.SearchForCities"/> method.</param>
        private async Task ResumeAfterCitySearch(IDialogContext context, string cityName, IList<City> citySearchResults)
        {

            if (citySearchResults != null && citySearchResults.Count <= 0)
            {

                context.Done($"I'm sorry, I couldn't find any results for '{cityName}'. " +
                             $"Make sure you've spelt everything correctly and try again 😊");
            }
            else if (citySearchResults != null && citySearchResults.Count == 1)
            {
                var weatherForecast = await _weatherService.GetWeather(citySearchResults.FirstOrDefault());

                context.Done(weatherForecast != string.Empty
                    ? $"The weather in {cityName} right now is {weatherForecast}"
                    : "🤧⛅ - I'm having trouble accessing weather reports. We'll have to try again later!");
            }
            else if (citySearchResults != null && citySearchResults.Count >= 2)
            {

                List<CardAction> cityCardActionList = CreateCardActionList(citySearchResults);

                HeroCard card = new HeroCard
                {
                    Title = $"I found {citySearchResults.Count} results for '{cityName}'",
                    Subtitle = "please select your closest location",
                    Buttons = cityCardActionList
                };

                var message = context.MakeMessage();
                message.Attachments.Add(card.ToAttachment());

                await context.PostAsync(message);

                context.Wait(this.ResumeAfterHeroCardCitySelect);
            }
        }


        /// <summary>
        /// Method called after the user has entered the name of the city they'd like the weather for.
        /// </summary>
        /// <param name="context">Mandatory. The context for the execution of a dialog's conversational process.</param>
        /// <param name="result">Mandatory. The result of the city the user entered to get the weather for.</param>
        private async Task ResumeAfterSpecifyCityNamePrompt(IDialogContext context, IAwaitable<string> result)
        {
            var cityName = await result;
            cityName = Regex.Replace(cityName, @"[\W_]", string.Empty);

            IList<City> citySearchResults = await _weatherService.SearchForCities(cityName, null, null);

            await  ResumeAfterCitySearch(context, cityName, citySearchResults);
        }


        /// <summary>
        /// Method called after the user has selected a specific city from the HeroCard selection. 
        /// </summary>
        /// <param name="context">Mandatory. The context for the execution of a dialog's conversational process.</param>
        /// <param name="result">Mandatory. The specific city the user wants the weather for.</param>
        private async Task ResumeAfterHeroCardCitySelect(IDialogContext context, IAwaitable<IMessageActivity> result)
        {
            var message = await result;

            WeatherHelper weatherHelper = new WeatherHelper();
            City city = weatherHelper.ExtractCityFromMessagePrompt(message.Text);

            var weatherForecast = await _weatherService.GetWeather(city);

            context.Done(weatherForecast != string.Empty
                ? $"Currently the weather in {message.Text} is {weatherForecast}"
                : "🤧⛅ - I'm having trouble accessing weather reports. We'll have to try again later!");
        }


        /// <summary>
        /// Creates a carousel of <see cref="CardAction"/>'s for the user to select a city to get the weather of. 
        /// </summary>
        /// <param name="cityResultList">Mandatory. The list of cities for the user to select from.</param>
        private List<CardAction> CreateCardActionList(IList<City> cityResultList)
        {
            List<CardAction> cardOptionsList = new List<CardAction>();

            foreach (var city in cityResultList)
            {
                cardOptionsList.Add(new CardAction(ActionTypes.ImBack,
                    title: $"{city.Name}, {city.Country}",
                    value: $"{city.Name}, {city.Country}"));
            }

            return cardOptionsList;
        }
    }
}