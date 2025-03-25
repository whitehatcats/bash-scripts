#!/bin/bash

# Collect values using command substitution
CURRENT_TIME=$(date +"%H:%M:%S")
CURRENT_DATE=$(date +"%Y-%m-%d")
LOAD_AVG=$(uptime | awk -F'load average:' '{ print $2 }' | xargs)

# Print the summary line
echo "🕒 $CURRENT_TIME | 📅 $CURRENT_DATE | ⚙️ Load Average:$LOAD_AVG"
