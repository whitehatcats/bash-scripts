# Bash Scripts

This is a collection of Bash scripts I'm creating as I learn Linux, shell scripting, and DevOps.

Each script is part of my hands-on journey to practice system automation and build my portfolio.

---

## 📜 Scripts

### `system-info.sh`
Displays basic system information:
- Hostname
- Uptime
- OS version
- Kernel
- CPU model
- Memory usage

### `disk-check.sh`
Checks the current disk usage of the root filesystem (`/`).  
If usage is over a set threshold (default: 80%), it prints a warning.

### `print-env.sh`
Displays key environment variables and system information such as:
- Username
- Home directory
- Shell
- Current working directory
- Hostname
- Language
- CPU model
- Architecture
- Kernel version
- Total memory
- Root disk usage
- OS version

Uses a mix of environment variables and command outputs to display the system snapshot.

### `quick-stats.sh`
Prints a one-line system summary including:
- Current time
- Current date
- System load average

Demonstrates the use of command substitution (`$(...)`) and basic formatting.

### `greet.sh`
Greets the user using a Bash function.  
Takes a name and optional country as arguments:
- `./greet.sh Daniel Romania`
- Uses `$1`, `$2`, `if`, and a custom function.

---

## 🚀 Purpose

This repository is part of my DevOps learning path.  
I'm using it to practice scripting and automation while building a personal portfolio.

---

## 🛠️ Usage

Make the script executable and run it:

```bash
chmod +x script-name.sh
./script-name.sh