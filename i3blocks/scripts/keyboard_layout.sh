#!/bin/bash
LG=$(setxkbmap -query | awk '/layout/{print $2}')
echo "LANG: $LG"

