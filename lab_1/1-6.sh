#!/bin/bash

openssl dgst -md5 ex14.txt | cut -d ' ' -f 2 > res14a.txt

echo 135246 >> ex14.txt

openssl dgst -md5 ex14.txt | cut -d ' ' -f 2 > res14b.txt

diff res14a.txt res14b.txt

# hashes are different, because the input used to create them was different
