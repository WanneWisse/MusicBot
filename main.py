import discord
from discord.ext import commands
import discord
from discord.ext import commands
from bot import Music
import configparser

# Bot prefix
BOT_PREFIX = "!"


intents = discord.Intents().all()
# Create a bot instance
bot = commands.Bot(command_prefix=BOT_PREFIX,intents=intents)
# Event: Bot is ready
@bot.event
async def on_ready():
    print(f'{bot.user.name} has connected to Discord!')
    await bot.add_cog(Music(bot))

config = configparser.ConfigParser()
config.read('config.ini')
token = config.get('Bot', 'token')
bot.run(token)

