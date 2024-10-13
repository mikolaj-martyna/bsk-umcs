#!/bin/bash

PYTHON_RESULT=$(python3 1-24.py $1)
LINUX_RESULT=$(echo -n $1 | openssl md5 | cut -d ' ' -f 2)

echo "Difference between hashes: (if empty, they are identical)"
diff <(echo -n $PYTHON_RESULT) <(echo -n $LINUX_RESULT)
