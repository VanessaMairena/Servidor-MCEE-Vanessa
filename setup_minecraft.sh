#!/bin/bash
sudo apt update && sudo apt install unzip screen wget ufw -y
mkdir -p ~/minecraft && cd ~/minecraft
wget -O bedrock.zip https://minecraft.azureedge.net/bin-linux/bedrock-server-1.21.0.03.zip
unzip bedrock.zip
echo "eula=true" > eula.txt
chmod +x bedrock_server
sudo ufw allow 19132
sudo ufw enable
screen -dmS mcee ./bedrock_server
