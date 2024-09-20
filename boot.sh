#!/bin/bash

export SERVER_HOME="/home/arcadi4/server-runtime"

export SURVIVAL_HOME="main"
export CREATIVE_HOME="creative"
export MIRROR_ONE_HOME="mirror1"
export MIRROR_TWO_HOME="mirror2"
export BITCRAFT_HOME="bitcraft"
export WATERFALL_HOME="waterfall"

if [ "$1" == "cb" ]; then
    # echo "Starting ChatBridge Server..."
    # cd $SERVER_HOME/server-CB
    # mcdreforged
    echo "This is temporarily disabled."
elif [ "$1" == "creative" -o "$1" == "c" ]; then
    echo "Starting Creative Server..."
    cd $SERVER_HOME/$CREATIVE_HOME
    mcdreforged
elif [ "$1" == "waterfall" -o "$1" == "proxy" -o "$1" == "px" -o "$1" == "wf" ]; then
    echo "Starting Proxy Server..."
    cd $SERVER_HOME/$WATERFALL_HOME
    mcdreforged
elif [ -z "$1" -o "$1" == "main" -o "$1" == "s" ]; then
    echo "Starting Main Server..."
    pushd $SERVER_HOME/$SURVIVAL_HOME
    mcdreforged
    popd
elif [ "$1" == "bitcraft" -o "$1" == "bit" ]; then
    echo "Starting bitcraft..."
    java -Xms4G -Xmx16G -jar $SERVER_HOME/$BITCRAFT_HOME/server.jar nogui
else
    echo "Wrong parameters."
fi
