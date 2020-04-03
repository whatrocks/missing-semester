#!/bin/bash

echo "Starting program at $(date)" # date will be substited

echo "Running program $0 with $# arguments with pid $$"

for file in $@; do
  grep foobar $file > /dev/null 2> /dev/null
  # when pattern is not found, grep has exit status 1
  # so we redirect STDOUT and STDERR to a null register since
  # we dont care about them
  if  [[ $? -ne 0 ]]; then
    echo "File $file does not have any foobar, adding one"
    echo "# foobar" >> "$file"
  fi
done

echo "Done!"
