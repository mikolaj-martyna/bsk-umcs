#!/bin/bash

openssl rand -base64 16 | openssl sha512
