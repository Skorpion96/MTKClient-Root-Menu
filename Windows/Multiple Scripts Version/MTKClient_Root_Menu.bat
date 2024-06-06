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
  call bootloader_unlock.bat && pause
) else if "%choice%"=="2" (
  call bootloader_lock.bat && pause
) else if "%choice%"=="3" (
  call root_files_dump.bat && pause
) else if "%choice%"=="4" (
  call root_phone.bat && pause
) else if "%choice%"=="5" ( 
  call Partitions_Backup.bat
) else if "%choice%"=="6" ( 
  call Partitions_Write.bat
) else if "%choice%"=="7" ( 
  call Bypass_SLA_DAA_and_SBC.bat
) else if "%choice%"=="8" (
    exit /b

) else (
    echo Invalid choice. Please select a valid option.
    pause
    goto menu
)

endlocal
