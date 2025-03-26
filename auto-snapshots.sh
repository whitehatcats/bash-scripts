#!/bin/bash

# Create logs directory if it doesn't exist
LOG_DIR="$HOME/projects/bash-scripts/logs"
mkdir -p "$LOG_DIR"

# Generate timestamped log file
FILENAME="snapshot_$(date +%Y-%m-%d_%H-%M-%S).log"
LOG_PATH="$LOG_DIR/$FILENAME"

# Collect data (can be expanded later)
{
  echo "📸 Auto Snapshot - $(date)"
  echo "Hostname: $(hostname)"
  echo "Uptime: $(uptime -p)"
  echo "User: $USER"
  echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }' | xargs)"
} >> "$LOG_PATH"

echo "✅ Snapshot saved to $LOG_PATH"
