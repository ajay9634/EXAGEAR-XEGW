@echo off
color 1f
echo ==================================
echo ***** Warning: Uninstall other physx version , This is official setup. it can fix some games.
echo ==================================
echo.
echo *** Now choose an option - ***
echo.
ECHO 1. Install PhysX-9.21.0713-SystemSoftware
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
ECHO Installation cancelled. 
exit

:install
echo.
ECHO *** installing PhysX-9.21.0713-SystemSoftware....***
echo.
echo *** Script made by Ajay ***
echo.
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"

:: Check if the .din backup file exists
IF EXIST "Z:/opt/wget_files/physx/PhysX-9.21.0713-SystemSoftware.din" (
    ECHO *** backup file found, Now running the installer...***
    copy "Z:/opt/wget_files/physx/PhysX-9.21.0713-SystemSoftware.din" "Z:/opt/wget_files/temp/PhysX-9.21.0713-SystemSoftware.exe"
) ELSE (
    echo.
    ECHO ! backup file not found, downloading...
    echo.
    wget -q --show-progress -P "Z:/opt/wget_files/temp/" https://us.download.nvidia.com/Windows/9.21.0713/PhysX_9.21.0713_SystemSoftware.exe
    copy "Z:/opt/wget_files/temp/PhysX-9.21.0713-SystemSoftware.exe" "Z:/opt/wget_files/physx/PhysX-9.21.0713-SystemSoftware.din"
    echo.
    ECHO *** Download complete, installing...**"
    echo.
)

:: Run the installer
Start /wait Z:/opt/wget_files/temp/PhysX-9.21.0713-SystemSoftware.exe

ECHO *******
exit
