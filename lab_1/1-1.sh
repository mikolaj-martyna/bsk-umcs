#!/bin/bash

# command used
# docker run --network=host -d mazurkatarzyna/bsk-book-p1-ch1-ex001

SERVER_URL="127.0.0.1:10001"

WORD=$(curl "${SERVER_URL}/random" | jq -r '.word')
HASHED_WORD=$(echo -n $WORD | openssl md5 | cut -d ' ' -f 2)
curl "${SERVER_URL}/check_md5/${HASHED_WORD}"
