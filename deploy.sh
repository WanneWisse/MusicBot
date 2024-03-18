#!/bin/bash
pkill -x "java"
pkill -x "python"

nohup java -jar /home/ubuntu/musicBot/MusicBot/Lavalink.jar &

source /home/ubuntu/musicBot/env/bin/activate

nohup python /home/ubuntu/musicBot/MusicBot/main.py &


