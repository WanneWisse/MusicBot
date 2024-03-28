#!/bin/bash
pkill -x "java"
pkill -x "python"

nohup java -jar /home/ubuntu/musicBot/MusicBot/Lavalink.jar >/home/ubuntu/musicBot/MusicBot/output_java.txt 2>&1 &

source /home/ubuntu/musicBot/env/bin/activate

nohup python /home/ubuntu/musicBot/MusicBot/main.py >/home/ubuntu/musicBot/MusicBot/output_python.txt 2>&1 &


