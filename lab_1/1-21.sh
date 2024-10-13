#!/bin/bash

hashcat -m 1800 -a 3 -o cracked.txt -O z5.shadow ?a?a?a
cat cracked.txt
