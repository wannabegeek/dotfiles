#!/bin/bash

SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
SCRIPT_NAME=$(basename ${BASH_SOURCE[O]})
echo "Script file: $SCRIPT_NAME"

for file in $(ls -a --ignore='.' --ignore='..' --ignore="$SCRIPT_NAME" $SCRIPT_DIR)
do
    rm -rf ~/$file
    ln -s $SCRIPT_DIR/$file ~
done

