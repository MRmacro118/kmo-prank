#!/bin/bash

# Usage: ./popup.sh image.png

IMAGE="$1"

if [ -z "$IMAGE" ]; then
    echo "Usage: ./popup.sh <image-file>"
    exit 1
fi

# Show the image fullscreen for 4 seconds
feh -F -Y -D 4 "$IMAGE"
