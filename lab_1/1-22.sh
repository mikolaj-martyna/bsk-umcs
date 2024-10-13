#!/bin/bash

hashcat -m 1800 -a 3 -o cracked.txt -O z6.shadow ?a?a?a?a?a
cat cracked.txt
