#!/bin/bash

export SERVER_HOME="/home/arcadi4/server-runtime"

export SURVIVAL_HOME="main"
export CREATIVE_HOME="creative"
export MIRROR_ONE_HOME=$SURVIVAL_HOME/"mirror1"
export MIRROR_TWO_HOME=$SURVIVAL_HOME/"mirror2"
export WATERFALL_HOME="waterfall"

if [ "$1" == "creative" -o "$1" == "c" ]; then
    echo "Starting Creative Server..."
    pushd $SERVER_HOME/$CREATIVE_HOME
elif [ "$1" == "waterfall" -o "$1" == "proxy" -o "$1" == "px" -o "$1" == "wf" ]; then
    echo "Starting Proxy Server..."
    pushd $SERVER_HOME/$WATERFALL_HOME
elif [ -z "$1" -o "$1" == "main" -o "$1" == "s" ]; then
    echo "Starting Main Server..."
    pushd $SERVER_HOME/$SURVIVAL_HOME
else
    echo "Wrong parameters."
    exit 1
fi

mcdreforged
popd
exit 0
