#!/bin/bash

HASH=8afa847f50a716e64932d995c8e7435a
echo -n $HASH > secret.txt

john --format=raw-md5 --wordlist=rockyou.txt secret.txt

# the result is 'princess'
