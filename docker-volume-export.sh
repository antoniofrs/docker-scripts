#!/bin/bash

sudo true

if [ $# -eq 0 ]; then
  echo "Usage: $0 [volume_name]"
  exit 1
fi

VOLUME_NAME=$1
ZIP_FILE="$VOLUME_NAME.zip"
TEMP_DIR=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 20 | head -n 1)

docker run --rm -v $VOLUME_NAME:/data -v $(pwd)/$TEMP_DIR:/backup alpine cp -r /data/. /backup

zip -r $ZIP_FILE . -i $TEMP_DIR/*
sudo rm -rf $TEMP_DIR

echo "Export completed. The $ZIP_FILE file is located in the current folder."
