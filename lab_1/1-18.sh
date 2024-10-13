#!/bin/bash

# before running this command I adjusted the john.conf file in /etc/john
# MinLen = 5 and MaxLen = 5
john --incremental=utf8 z6.shadow
