#!/bin/bash
pkill -x "java"
pkill -x "python"

nohup java -jar /home/ubuntu/musicBot/MusicBot/Lavalink.jar >/dev/null 2>&1 &

source /home/ubuntu/musicBot/env/bin/activate

nohup python /home/ubuntu/musicBot/MusicBot/main.py >/dev/null 2>&1 &


