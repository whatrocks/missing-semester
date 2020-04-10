#!/bin/bash

echo "I'm the runner..."

while true
do
  ./failer.sh >> success.txt 2>> fail.txt
  if [[ $? -ne 0 ]]; then
    break
  fi
  echo "not done"
done

echo "done!"
