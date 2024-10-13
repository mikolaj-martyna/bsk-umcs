#!/bin/bash

FILE_A=$(sha256sum a.txt | cut -d ' ' -f 1)
FILE_B=$(sha256sum b.txt | cut -d ' ' -f 1)

diff <(echo -n $FILE_A) <(echo -n $FILE_B)
