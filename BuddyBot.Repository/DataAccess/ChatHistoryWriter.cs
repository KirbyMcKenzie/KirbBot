﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using BuddyBot.Repository.DataAccess.Contracts;
using BuddyBot.Repository.Models;
using BuddyBot.Repository.Settings;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Table;

namespace BuddyBot.Repository.DataAccess
{
    public class ChatHistoryWriter: IChatHistoryWriter
    {

        public async Task SaveMessage(ChatHistoryEntity chatHistoryEntity)
        {
            RepositorySettings repositorySettings = new RepositorySettings();

            // Retrieve the storage account from the connection string.
            CloudStorageAccount storageAccount = CloudStorageAccount.Parse(
                repositorySettings.ConnectionString);

            // Create the table client.
            CloudTableClient tableClient = storageAccount.CreateCloudTableClient();

            // Create the CloudTable object that represents the "people" table.
            CloudTable table = tableClient.GetTableReference(repositorySettings.ChatHistoryTableName);

            // Create the table if it doesn't exist.
            await table.CreateIfNotExistsAsync();

            // Create the TableOperation object that inserts the chat history entity.
            TableOperation insertOperation = TableOperation.Insert(chatHistoryEntity);

            // Execute the insert operation.
            await table.ExecuteAsync(insertOperation);

        }
    }
}
