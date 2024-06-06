@echo off
color 02
setlocal
:menu
cls
echo ========= MTKClient Rooting Menu =========
echo Choose an option:
echo 1. Unlock Bootloader
echo 2. Lock Bootloader
echo 3. Dump stock boot and vbmeta
echo 4. Flash patched boot and blank vbmeta
echo 5. Dump Partitions
echo 6. Restore Partitions
echo 7. Bypass SLA, DAA and SBC
echo 8. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    python mtk da seccfg unlock && pause
) else if "%choice%"=="2" (
    python mtk da seccfg lock && pause
) else if "%choice%"=="3" (
    python mtk r boot,vbmeta boot.img,vbmeta.img && echo "patch boot.img with magisk or apatch app and rename the resulting file to boot-patched.img, then copy it on mtkclient folder and run 4th option on MTKClient Root Menu" && pause
) else if "%choice%"=="4" (
    python mtk w boot,vbmeta boot-patched.img,vbmeta.img.empty && pause
) else if "%choice%"=="5" ( 
  call Partitions_Backup.bat
) else if "%choice%"=="6" ( 
  call Partitions_Write.bat
) else if "%choice%"=="7" ( 
  python mtk payload && echo "Press [Enter] key to continue..." && pause  
) else if "%choice%"=="8" (
    exit /b

) else (
    echo Invalid choice. Please select a valid option.
    pause
    goto menu
)

endlocal
