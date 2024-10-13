#!/bin/bash

HASH=8afa847f50a716e64932d995c8e7435a
echo -n $HASH > secret.txt

hashcat -a 0 -m 0 secret.txt rockyou.txt
