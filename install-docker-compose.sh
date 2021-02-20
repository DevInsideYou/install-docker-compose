#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="1.28.4"

if [ "$1" == "" ]; then
    VERSION="$FALLBACK_VERSION"
else
    VERSION="$1"
fi

# install curl
sudo apt install -yqqq curl

SOURCE="https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-Linux-x86_64"
TARGET="/usr/local/bin/docker-compose"

# install docker-compose
sudo curl -L $SOURCE -o $TARGET
sudo chmod +x $TARGET

echo
docker-compose --version

echo
echo '"docker-compose" is now on the path'
