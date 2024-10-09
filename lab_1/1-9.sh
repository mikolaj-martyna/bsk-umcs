#!/bin/bash

PASSWORD=$(head -c 128 /dev/urandom | base64 | tr -cd [:alnum:] | head -c 16)
echo $PASSWORD

echo -n $PASSWORD | openssl md5
