# Linux Automation Toolkit

A collection of Bash scripts for Linux system monitoring, administration, maintenance, and automation. This project was built while learning Linux administration, shell scripting, Git, and GitHub on Ubuntu/WSL.

---

## Features

- CPU monitoring with colored output and dependency checking
- Memory and disk usage monitoring
- Service status checking
- Directory backup and archiving
- User creation and deletion
- Log file cleanup
- Cron job setup and scheduling
- ANSI color demonstration

---

## Technologies Used

- Linux (Ubuntu / WSL)
- Bash
- Git & GitHub
- Cron
- Standard Linux utilities (`top`, `free`, `df`, `tar`, `find`, `systemctl`, etc.)

---

## Project Structure

```text
linux-automation-toolkit/
├── scripts/
│   ├── backup.sh
│   ├── colors_demo.sh
│   ├── cpu_monitor.sh
│   ├── create_user.sh
│   ├── cron_setup.sh
│   ├── delete_user.sh
│   ├── disk_usage.sh
│   ├── log_cleanup.sh
│   ├── memory_monitor.sh
│   └── service_status.sh
├── docs/
│   └── images/
├── LICENSE
├── README.md
└── .gitignore

---

## Usage

```bash
chmod +x scripts/*.sh

./scripts/cpu_monitor.sh
./scripts/memory_monitor.sh
./scripts/disk_usage.sh
./scripts/service_status.sh ssh
./scripts/backup.sh <directory>
sudo ./scripts/create_user.sh <username>
sudo ./scripts/delete_user.sh <username>
./scripts/log_cleanup.sh <log-directory> <days>
./scripts/cron_setup.sh "*/5 * * * *" "/path/to/script.sh"
./scripts/colors_demo.sh
```

---

## Skills Demonstrated

- Linux Administration
- Bash Scripting
- Shell Automation
- Git Version Control
- GitHub Workflow
- System Monitoring
- User and Service Management
- Task Scheduling with Cron

---

## Future Enhancements

- Add centralized logging for all scripts.
- Support configuration files for customizable settings.
- Add automated tests and continuous integration.
- Package the toolkit for easier installation and distribution.

