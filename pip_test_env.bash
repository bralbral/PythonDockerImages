#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please add path to python requirements file"
    exit 1
fi

echo "Cleaning"
rm requirements.txt
sh ./pip_cleanup.bash

echo "Installing"
cp $1 requirements.txt
pip install -r requirements.txt