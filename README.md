# Linux Automation Toolkit

A Bash scripting project that automates basic Linux system monitoring tasks. This project was built while learning Linux administration, shell scripting, Git, and GitHub.

---

## Features

### CPU Monitoring
- Display current date and time
- Display current logged-in user
- Display hostname
- Monitor CPU idle percentage
- Calculate CPU usage

### Memory Monitoring
- Display total memory
- Display used memory
- Display free memory

---

## Technologies Used

- Linux (Ubuntu / WSL)
- Bash
- Git
- GitHub

---

## Project Structure

```
linux-automation-toolkit/
│
├── scripts/
│   ├── cpu_monitor.sh
│   ├── memory_monitor.sh
│   └── colors_demo.sh
│
├── docs/
├── logs/
│
├── README.md
└── .gitignore
```

---

## How to Run

# CPU Monitor
chmod +x scripts/cpu_monitor.sh
./scripts/cpu_monitor.sh

# Memory Monitor
chmod +x scripts/memory_monitor.sh
./scripts/memory_monitor.sh

---

## Sample Output

```text
======================================
      CPU Monitoring Script
======================================

Date and Time : Mon Jul 6 17:58:50 UTC 2026
Current User  : sunder
Hostname      : LAPTOP-CHSM6H93
CPU Idle      : 78.6%
CPU Usage     : 21.4%
```
## Memory Monitor Output

```text
======================================
      Memory Monitoring Script
======================================

Date and Time : Tue Jul 7 20:15:00 UTC 2026
Current User  : sunder
Hostname      : LAPTOP-CHSM6H93

Total Memory  : 7800 MB
Used Memory   : 2450 MB
Free Memory   : 5350 MB

---

## Skills Demonstrated

- Linux Administration
- Bash Scripting
- Shell Automation
- Git Version Control
- GitHub Repository Management
- Error Handling
- Process Monitoring

## Sample Output

![CPU Monitor Output](docs/images/cpu-monitor-output.png)
