#!/bin/bash

# Run program unless it's already running.

ps -Af | grep "$1" | grep -v grep | grep -v $0

if [ -z "`ps -Af | grep -o -w ".*$1" | grep -v grep | grep -v $0`" ]; then
  $@
fi
