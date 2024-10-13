#!/bin/bash

# before running this command I adjusted the john.conf file in /etc/john
# MinLen = 3 and MaxLen = 3
john --incremental=utf8 z5.shadow
