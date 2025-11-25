#!/bin/bash

# usage: ./popup.sh images/file.jpg

IMAGE="$1"

if [ ! -f "$IMAGE" ]; then
    echo "Error: Image '$IMAGE' not found!"
    exit 1
fi

# show image for 4 seconds
feh -F "$IMAGE" &
PID=$!

sleep 4

kill $PID
