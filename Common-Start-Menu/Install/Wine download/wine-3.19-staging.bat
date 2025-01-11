@echo off
color 1f
echo ==================================
set "installname=Wine-3.19-staging"
echo ***** This is a %installname% *****
echo.
echo *** This wine is useful in some older games like Morrowind etc. The Performance is very good but some latest 32 bit games aren't supported. Max Supported dxvk version - 1.10.3 with low performance.  ***
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
mkdir "Z:/opt/wineCollection/winehq/%installname%/" >NUL 2>&1

:: Check if the .din backup file exists
IF EXIST "Z:/opt/wineCollection/custom/%installname%/%installname%.tar.xz" (
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
wget -O "Z:/opt/wget_files/temp/%installname%.tar.xz" --progress=dot:mega https://github.com/ajay9634/EXAGEAR-XEGW/raw/Resources/Wine/%installname%.tar.xz
copy "Z:/opt/wget_files/temp/%installname%.tar.xz" "Z:/opt/wineCollection/custom/%installname%/%installname%.tar.xz"
cls
echo.
color 0a
ECHO *** Now You have downloaded this wine, now exit the container and install wine from "Add/Remove Wines" feature of the app ***
echo.
pause

:end