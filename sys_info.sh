#!/bin/bash

get_user() {
    echo "Current User: $(whoami)"
}

get_uptime() {
    echo "Uptime: $(uptime -p)"
}

get_disk() {
    echo "Disk Space: $(df -h / | awk 'NR==2 {print $4}') available"
}

show_help() {
    echo "Usage: ./sys_info.sh [OPTION]"
    echo "Options:"
    echo "  -u, --user     Show current user"
    echo "  -p, --uptime   Show system uptime"
    echo "  -d, --disk     Show available disk space"
    echo "  -a, --all      Show all information (default)"
    echo "  -h, --help     Show this help menu"
}

case "$1" in
    -u|--user)
        get_user
        ;;
    -p|--uptime)
        get_uptime
        ;;
    -d|--disk)
        get_disk
        ;;
    -h|--help)
        show_help
        ;;
    -a|--all|"")
        get_user
        get_uptime
        get_disk
        ;;
    *)
        echo "Error: Invalid option '$1'"
        show_help
        exit 1
        ;;
esac
