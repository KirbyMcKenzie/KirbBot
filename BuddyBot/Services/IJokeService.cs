﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuddyBot.Services
{
    public interface IJokeService
    {
        Task<String> GetRandomJoke();
    }
}