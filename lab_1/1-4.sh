#!/bin/bash

# command used
# docker run --network=host -d mazurkatarzyna/bsk-book-p1-ch1-ex004

SERVER_URL="127.0.0.1:10004"

WORD=$(curl "${SERVER_URL}/random" | jq -r '.word')

# TODO: fix hash generation (kdf name not being recognized)
HASHED_WORD_D=$(openssl kdf -keylen 24 -kdfopt pass:$WORD -kdfopt salt:NaCl2024 -kdfopt iter:1 -kdfopt memcost:8192 ARGON2D | cut -d ' ' -f 2)
HASHED_WORD_I=$(openssl kdf -keylen 24 -kdfopt pass:$WORD -kdfopt salt:NaCl2024 -kdfopt iter:1 -kdfopt memcost:8192 ARGON2I | cut -d ' ' -f 2)
HASHED_WORD_ID=$(openssl kdf -keylen 24 -kdfopt pass:$WORD -kdfopt salt:NaCl2024 -kdfopt iter:1 -kdfopt memcost:8192 ARGON2ID | cut -d ' ' -f 2)

curl "${SERVER_URL}/check_argon2d/${HASHED_WORD_D}"
curl "${SERVER_URL}/check_argon2i/${HASHED_WORD_I}"
curl "${SERVER_URL}/check_argon2id/${HASHED_WORD_ID}"
