#!/bin/bash

echo "All Variables: $@"
echo "Number of Variables passed: $#"
echo "Script Name: $0"
echo "Currnt working directory: $PWD"
echo "Home Directory: $HOME"
echo "Which user is running this script: $USER"
echo "Host name: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60
echo "Process ID of last background comand: $!" 