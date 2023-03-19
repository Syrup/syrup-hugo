---
title: "Create a Discord Bot #1"
date: 2023-03-18T00:38:20Z
tags: ["discordbot", "nodejs"]
categories: ["tutorial", "discord", "bot", "javascript"]
draft: false
---

_Discord_ is a popular communication platform among gamers and communities, providing voice, text, and video chat capabilities. However, what makes _Discord_ even more special is its extensibility through the use of bots. These bots can be programmed to perform various tasks, such as moderating chat, playing music, or even just responding to certain commands.

If you want to create your own Discord bot, you're in luck! In this tutorial, we'll go through the steps of creating a basic bot using the Discord API.

But before we go, do you know what a Discord bot really is?

## What is Discord Bot?
A Discord bot is a program designed to automate tasks on Discord servers, such as moderating chat, managing users, or providing helpful information.

You can make it a game like RPG, or you can create it according to what you want, such as telling that a YouTuber uploaded a video using the YouTube API, or twitch.

## Set Up Application
Firstly, you'll need to set up an application on Discord's developer portal. To do this, go to the [Discord Developer Portal](https://discord.com/developers/applications) and click on the `New Application` button. Give your application a name and click on `Create`. To do this, you need to create a Discord account first, if you don't have one and then login

After creating your application, click on the `Bot` tab and then click on `Add Bot`. This will create a bot user for your application.

### Get the Token
Next, you'll need to get your bot's token. Click on the `Copy` button under the `Token` section and keep this token secret. This token is essentially your bot's password, so never share it with anyone.

## Use Your Favorite Code Editor
You can use an Code Editor like VSCode, Sublime, Vim, Nvim, or an online IDE.
Now that you have your bot set up on Discord's developer portal, it's time to start coding! You can use any programming language to create your bot, but for the purposes of this article, we'll use JavaScript.

Install `discord.js` library using npm
```sh
npm install discord.js
```
Please note that you must have at least nodejs version 16 or above


```js
const Discord = require('discord.js');
const client = new Discord.Client({
  intents: ["GUILDS", "GUILD_MESSAGE"]
});

client.once('ready', () => {
  console.log('Bot is online!');
});

client.on('messageCreate', message => {
  if (message.content === '!ping') {
    message.channel.send('Pong!');
  }
});

client.login('YOUR_BOT_TOKEN_HERE');
```


Do you get it? No? It's okay i will explain it for you :).

---

```js
const client = new Discord.Client({
  intents: ["GUILDS", "GUILD_MESSAGE"]
});
```
This line creates a new Client object, which represents our bot. The intents option is used to specify the Discord events the bot will receive. In this case, the `GUILDS` intent is for receiving guild events and the `GUILD_MESSAGE` intent is for receiving messages from guilds.

[See here for further explanation.](https://gist.github.com/advaith1/e69bcc1cdd6d0087322734451f15aa2f)

---

```js
client.once('ready', () => {
  console.log('Bot is online!');
});
```
This code sets up an event listener for the `ready` event, which is triggered once the bot has connected to the Discord API. 

When this event is fired, the callback function is executed, which simply logs a message `"Bot is online!"` to the console.

---

```js
client.on('messageCreate', message => {
  if (message.content === '!ping') {
    message.channel.send('Pong!');
  }
});
```
This code sets up an event listener for the `messageCreate` event, which is triggered whenever a message is sent in a server where the bot is a member. The message parameter represents the message object that was sent.

In this code, we're checking if the message content matches the string `"!ping"`. If it does, we send a response of "Pong!" to the channel where the message was sent.

---

```js
client.login('YOUR_BOT_TOKEN_HERE');
```
This line logs our bot into the Discord API using the token we obtained earlier. Make sure to replace the string `'YOUR_BOT_TOKEN_HERE'` with your actual bot token before running the code.

## Conclusion
And that's it for this tutorial! We hope this has helped you get started with creating your own Discord bot using `discord.js`.

Overall, this code creates a simple Discord bot that responds with `"Pong!"` when a user types `"!ping"` in a guild where the bot is a member.

In the next tutorial, We will learn how to use interaction. See you there!