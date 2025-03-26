#!/bin/bash

# Define a greeting function
greet() {
  local name="$1"
  local country="$2"

  if [ -z "$name" ]; then
    echo "❌ No name provided. Usage: ./greet.sh <name> [country]"
    return 1
  fi

  echo "👋 Hello, $name!"

  if [ -n "$country" ]; then
    echo "🌍 You're from $country? Nice!"
  fi
}

# Call the function with script arguments
greet "$1" "$2"
