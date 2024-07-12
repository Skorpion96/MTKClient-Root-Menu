# MTKClient-Root-Menu
An alternative to MTKClient GUI that isn't in python and doesn't require any dependencies
Install Instructions
1-Clone the Repo
2-Copy the Files according to your OS on MTKClient folder
3-Run MTKClient_Root_Menu.sh on Linux or MTKClient_Root_Menu.bat on Windows
4-Profit

Menu Options
1. Unlock Bootloader
2. Lock Bootloader
3. Dump stock boot and vbmeta
4. Flash patched boot and blank vbmeta
5. Dump Partitions
6. Restore Partitions
7. Bypass SLA, DAA and SBC
8. Exit

There isn't much to say them are pretty much explicative: with first option you can unlock bootloader, with second relock, third is for rooting: it will dump boot and vbmeta partition, then you can patch boot with magisk or apatch and run option 4 to flash patched boot and blank_vbmeta, the 5 option allows the user to input partitions and then runs the dump command, same for option 6 but for restore, option 7 is to bypass SLA, DAA and SBC like on original MTKClient GUI, option 8 exits the menu. Maybe i will implement other stuff in the future.

I hope this Menu will be appreciated, i created it because i'm pissed of MTKClient GUI which since it's written in python it may piss with dependencies and then it could be a hassle to fix errors. No python = No hassle hope you will appreciate

I updated the Menu for the new MTKClient Version, also added a script to lauch it from /usr/local/bin, before that push mtkclient to /opt, I also updated the Windosws vwersion but i won't update the multiple version...
