#!/bin/bash

server="/home/arcadi4/server-runtime"
survival="main"
creative="creative"
# MIRROR_ONE_HOME=$SURVIVAL_HOME/"mirror1"
# MIRROR_TWO_HOME=$SURVIVAL_HOME/"mirror2"
waterfall="waterfall"

if [ "$1" == "creative" ] || [ "$1" == "c" ]; then
    echo "Starting Creative Server..."
    pushd $server/$creative || exit
elif [ "$1" == "waterfall" ] || [ "$1" == "proxy" ] || [ "$1" == "px" ] || [ "$1" == "wf" ]; then
    echo "Starting Proxy Server..."
    pushd $server/$waterfall || exit
elif [ -z "$1" ] || [ "$1" == "main" ] || [ "$1" == "s" ]; then
    echo "Starting Main Server..."
    pushd $server/$survival || exit
else
    echo "Wrong parameters."
    exit 1
fi

mcdreforged
popd || exit
exit 0
