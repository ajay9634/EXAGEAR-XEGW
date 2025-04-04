@echo off
color 1f
echo ==================================
set "installname=Wine-7.7-staging"
echo ***** This is a %installname% *****
echo.
echo *** This wine is useful in mid and old games. The Performance is very good. Max supported dxvk - latest version ***
echo ==================================
echo.
echo *** Now choose an option - ***
echo.
ECHO 1. Download %installname%
ECHO 2. Cancel or exit
set choice=
set /p choice=Type the number to select an option.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto install
if '%choice%'=='2' goto cancel
ECHO "%choice%" is not valid, try again
ECHO.
goto end

:cancel
echo.
ECHO Download cancelled. 
exit

:install
echo.
ECHO *** Downloading %installname%....***
echo.
echo *** Script made by Ajay ***
echo.
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wineCollection/custom/%installname%/" >NUL 2>&1

:: Check if the .din backup file exists
IF EXIST "Z:/opt/wineCollection/custom/%installname%/%installname%-x86.tar.xz" (
    cls
color 0a
    ECHO *** You already downloaded this wine, now exit the container and install wine from "Add/Remove Wines" feature of the app ***
    pause
    goto end
) 

:: Else block (when the file doesn't exist)
echo.
color 1f
ECHO ! Downloaded wine not found, downloading...
echo.
wget -q --show-progress -P "Z:/opt/wget_files/temp/" --progress=dot:mega https://github.com/ajay9634/EXAGEAR-XEGW/raw/Resources/Wine/%installname%-x86.tar.part1.rar
wget -q --show-progress -P "Z:/opt/wget_files/temp/" --progress=dot:mega https://github.com/ajay9634/EXAGEAR-XEGW/raw/Resources/Wine/%installname%-x86.tar.part2.rar

Z:\opt\winrar.exe x "Z:/opt/wget_files/temp/%installname%-x86.tar.part1.rar" "Z:/opt/wineCollection/custom/%installname%/"
cls
echo.
color 0a
ECHO *** You have downloaded this wine, now exit the container and install wine from "Add/Remove Wines" feature of the app ***
echo.
pause

:end
