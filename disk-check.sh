#!/bin/bash

# Threshold (in %)
THRESHOLD=80

# Get disk usage of root ("/") as a number
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

echo "📦 Disk usage is at ${USAGE}%"

# Compare usage to threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "⚠️  Warning: Disk usage is above ${THRESHOLD}%!"
else
  echo "✅ All good. Disk usage is below threshold."
fi