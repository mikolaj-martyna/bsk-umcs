#!/bin/bash

crunch 5 5 -t %a^b% -o wordlist-1-11.txt

openssl sha3-256 wordlist-1-11.txt
