#!/bin/bash

crunch 3 3 abc + 468 ?%: -t @%^ -o wordlist-1-12.txt

openssl sha3-256 wordlist-1-12.txt
