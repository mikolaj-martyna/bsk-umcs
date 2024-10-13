#!/bin/bash

# Custom rule in /etc/john/john.conf is as follows:
# [List.Rules:1-19]
# A0"#"
# Az"#"
# sa@
# si1
# se3

john --wordlist=/usr/share/wordlists/rockyou.txt --rules=1-19 z7.shadow

