#!/bin/bash

# System info
CPU_MODEL=$(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)
ARCHITECTURE=$(uname -m)
KERNEL_VERSION=$(uname -r)
MEMORY_TOTAL=$(free -h | grep Mem | awk '{print $2}')
DISK_INFO=$(df -h / | tail -1 | awk '{print $2 " total, " $5 " used"}')
OS_VERSION=$(lsb_release -d | cut -f2)

# Display
echo "🌍 Environment Info"
echo "---------------------------"
echo "👤 User:           $USER"
echo "🏠 Home Directory: $HOME"
echo "💻 Shell:          $SHELL"
echo "📂 Working Dir:    $PWD"
echo "🖥️  Hostname:       $HOSTNAME"
echo "🌐 Language:        $LANG"
echo "🛤️  PATH:           $PATH"

echo ""
echo "🖧 System Specs"
echo "---------------------------"
echo "🧠 CPU Model:      $CPU_MODEL"
echo "🏗️  Architecture:   $ARCHITECTURE"
echo "🧪 Kernel Version: $KERNEL_VERSION"
echo "📀 Memory Total:   $MEMORY_TOTAL"
echo "💿 Root Disk:      $DISK_INFO"
echo "🧾 OS Version:     $OS_VERSION"
