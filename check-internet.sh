#!/bin/bash

echo "🌐 Checking internet connection..."

ping -c 1 google.com &> /dev/null

if [ $? -eq 0 ]; then
  echo "✅ Internet is working"
  exit 0
else
  echo "❌ Internet connection failed"
  exit 1
fi
