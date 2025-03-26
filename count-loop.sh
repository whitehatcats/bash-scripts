#!/bin/bash

# Get the max number from argument
MAX=$1

# Validate input
if [ -z "$MAX" ] || ! [[ "$MAX" =~ ^[0-9]+$ ]]; then
  echo "❌ Please provide a positive number. Usage: ./count-loop.sh <number>"
  exit 1
fi

echo "🔁 Counting from 1 to $MAX using a for loop:"
for ((i=1; i<=MAX; i++)); do
  echo " - $i"
done

echo ""
echo "🔁 Counting from 1 to $MAX using a while loop:"
i=1
while [ $i -le $MAX ]; do
  echo " - $i"
  ((i++))
done

