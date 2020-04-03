#!/bin/bash

echo "find all directories named src"
find . -name src -type d

echo "find all python files that have a folder named test in their path"
find . -path '**/test/**/*.py' -type f

echo "find all files modified in the last day"
find . -mtime -1

echo "find all zipfiles with size in range 500k to 10M"
find . -size +500k -size -10M -name -'*.tar.gz'
