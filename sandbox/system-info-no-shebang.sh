

echo "==== System Information ===="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current User: $(whoami)"
echo "Operating System: $(lsb_release -d | cut -f2)"
echo "Kernel: $(uname -r)"
echo "CPU Info:"
lscpu | grep 'Model name'
echo "Memory Info:"
free -h
