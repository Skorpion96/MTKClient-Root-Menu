#!/bin/bash

# Function to display the menu
show_menu() {
    clear
    echo "========= MTKClient Rooting Menu ========="
    echo "Choose an option:"
    echo "1. Unlock Bootloader"
    echo "2. Lock Bootloader"
    echo "3. Dump stock boot and vbmeta"
    echo "4. Flash patched boot and blank vbmeta"
    echo "5. Dump Partitions"
    echo "6. Restore Partitions"
    echo "7. Bypass SLA, DAA and SBC"
    echo "8. Exit"
}

# Main menu loop
while true; do
    show_menu
    read -p "Enter your choice: " choice

    case $choice in
        1)
            python3 mtk.py da seccfg unlock && read -p "Press [Enter] key to continue..."
            ;;
        2)
            python3 mtk.py da seccfg lock && read -p "Press [Enter] key to continue..."
            ;;
        3)
            python3 mtk.py r boot,vbmeta boot.img,vbmeta.img && echo "patch boot.img with magisk or apatch app and rename the resulting file to boot-patched.img, then copy it on mtkclient folder and run 4th option on MTKClient Root Menu" && read -p "Press [Enter] key to continue..."
            ;;
        4)
            python3 mtk.py w boot,vbmeta boot-patched.img,vbmeta.img.empty  && read -p "Press [Enter] key to continue..."
            ;;
        5)
            ./Partitions_Backup.sh && read -p "Press [Enter] key to continue..."
            ;;
        6)
            ./Partitions_Write.sh && read -p "Press [Enter] key to continue..."
            ;;   
        7)
            python3 mtk payload && read -p "Press [Enter] key to continue..."
            ;;      
        8)
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            read -p "Press [Enter] key to continue..."
            ;;
    esac
done

