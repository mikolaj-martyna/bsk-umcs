#!/bin/bash

HASH=437d9b521abe3c4102db90f7873cb4699cf9e38476c32b586cb786eb39eb6992
echo -n $HASH > secret.txt

john --format=raw-sha256 --wordlist=rockyou.txt secret.txt
