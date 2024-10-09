#!/bin/bash

# exercise asks me to create a 4 bit password, but the lowest rand will go is 1 byte
openssl rand -base64 4 | openssl md5
