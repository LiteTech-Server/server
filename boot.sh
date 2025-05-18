#!/bin/bash

export SERVER_HOME="/home/arcadi4/server-runtime"

export SURVIVAL_HOME="main"
export CREATIVE_HOME="creative"
export MIRROR_ONE_HOME=$SURVIVAL_HOME/"mirror1"
export MIRROR_TWO_HOME=$SURVIVAL_HOME/"mirror2"
export BITCRAFT_HOME="bitcraft"
export WATERFALL_HOME="waterfall"
export S2KNO33C_HOME="s2kno33c"
export OB2_HOME="ob2"

if [ "$1" == "cb" ]; then
    # echo "Starting ChatBridge Server..."
    echo "This is temporarily disabled."
    exit 1
elif [ "$1" == "creative" -o "$1" == "c" ]; then
    echo "Starting Creative Server..."
    pushd $SERVER_HOME/$CREATIVE_HOME
elif [ "$1" == "waterfall" -o "$1" == "proxy" -o "$1" == "px" -o "$1" == "wf" ]; then
    echo "Starting Proxy Server..."
    pushd $SERVER_HOME/$WATERFALL_HOME
elif [ -z "$1" -o "$1" == "main" -o "$1" == "s" ]; then
    echo "Starting Main Server..."
    pushd $SERVER_HOME/$SURVIVAL_HOME
elif [ "$1" == "bitcraft" -o "$1" == "bit" ]; then
    echo "Starting bitcraft..."
    java -Xms4G -Xmx16G -jar $SERVER_HOME/$BITCRAFT_HOME/server.jar nogui
    exit 0
elif [ "$1" == "s2kno33c" -o "$1" == "s2k" ]; then
    echo "Starting s2kno33c's server..."
    java -Xms2G -Xmx8G -jar $SERVER_HOME/$S2KNO33C_HOME/server/server.jar nogui
    exit 0
elif [ "$1" == "ob2" ]; then
    echo "Starting OB2..."
    pushd $SERVER_HOME/$OB2_HOME/server
    ./run.sh
    popd
    exit 0
else
    echo "Wrong parameters."
    exit 1
fi

mcdreforged
popd
exit 0
