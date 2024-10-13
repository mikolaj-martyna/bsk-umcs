#!/bin/bash

crunch 3 3 -f /usr/share/crunch/charset.lst numeric -o wordlist-1-10.txt

# my understanding is: generate for all, not for each
openssl sha1 wordlist-1-10.txt
