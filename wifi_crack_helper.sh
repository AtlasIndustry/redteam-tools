#!/bin/bash
read -p "Enter .cap file: " cap
aircrack-ng "$cap" -w /usr/share/wordlists/rockyou.txt