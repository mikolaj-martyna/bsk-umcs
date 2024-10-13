#!/bin/bash

hashcat -m 1800 -a 0 -o cracked.txt z2.shadow /usr/share/wordlists/rockyou.txt
cat cracked.txt
