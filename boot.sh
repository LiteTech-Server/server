#!/bin/bash
cd $SERVER_HOME

if [ "$1" == "cb" ]; then
    echo "Starting ChatBridge Server..."
    cd server-CB
    mcdreforged
elif [ "$1" == "creative" -o "$1" == "cr" ]; then
    echo "Starting Creative Server..."
    cd server-creative
    mcdreforged
elif [ "$1" == "proxy" -o "$1" == "px" ]; then
    echo "Starting Proxy Server..."
    cd server-proxy
    mcdreforged
elif [ -z "$1" -o "$1" == "main" ]; then
    echo "Starting Main Server..."
    cd server-main
    mcdreforged
elif [ "$1" == "bitcraft" -o "$1" == "bit" ]; then
    echo "Starting bitcraft..."
    cd server-bitcraft
    java -Xms4G -Xmx16G -jar server.jar nogui
else
    echo "Wrong parameters"
fi