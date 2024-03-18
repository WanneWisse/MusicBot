#!/bin/bash
pkill -x "java"
pkill -x "python"

nohup "java -jar Lavalink.jar" &

source "/home/ubuntu/musicBot/env/bin/activate"
nohup "python main.py" &


