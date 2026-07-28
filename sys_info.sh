#!/bin/bash
echo "Current User: $(whoami)"
echo "Uptime: $(uptime -p)"
echo "Disk Space: $(df -h / | awk 'NR==2 {print $4}') available"
