#!/bin/bash

# 6/15/2024 WROG208 \ N4ASS
# www.lonewolfsystem.org

show_menu() {
    dialog --clear --backtitle "" \
       --title "WROG208 / N4ASS" \
       --menu "Only have one option:" \
       20 60 10 \
       1 "Script to Make sound files from Text" \
       2 "Exit" \
       3>&1 1>&2 2>&3
}

display_info() {
    local choice=$1
    case $choice in
        1)
            dialog --msgbox "This script will use Text to create sound files based on the specified parameters. In English Or Spanish" 7 60
            ;;
        2)
            dialog --msgbox "Goodbye..." 5 40
            exit 0
            ;;
        *)
            dialog --msgbox "Invalid choice, please select a valid option." 7 60
            ;;
    esac
}

execute_choice() {
    local choice=$1
    case $choice in
        1)
            dialog --infobox "Running Script to make sound files..." 5 50
            convert.py 2> error.log || { dialog --msgbox "An error occurred while running gsmbi.py. See error.log for details." 7 60; sleep 5; return 1; }
            ;;
        2)
            dialog --infobox "Goodbye..." 5 40
            exit 0
            ;;
        *)
            dialog --msgbox "Invalid choice, please select a valid option." 7 60
            ;;
    esac
}

while true; do
    CHOICE=$(show_menu)
    if [[ -n $CHOICE ]]; then
        display_info $CHOICE
        execute_choice $CHOICE
    else
        clear
        exit 0
    fi
done
