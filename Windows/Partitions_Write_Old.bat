@echo off
setlocal EnableDelayedExpansion
set /p "partitions=Please enter the partitions you want to write (separated by spaces): "
if "%partitions%"=="" (
    echo No partitions provided. Exiting.
    exit /b 1
)
for %%P in (%partitions%) do (
    set "partition=%%P"
    set "modified_partition=!partition!.img"
    if not defined partitions_list (
        set "partitions_list=!partition!"
        set "img_list=!modified_partition!"
    ) else (
        set "partitions_list=!partitions_list!,!partition!"
        set "img_list=!img_list!,!modified_partition!"
    )
)
set "flash_command=python mtk w !partitions_list! !img_list!"
echo Executing command: !flash_command!
!flash_command!
pause
call MTKClient_Root_Menu.bat
