@echo off
color 0a
echo *** warning - uninstall other physx version  ***
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading part01.rar ***
IF NOT EXIST "Z:\opt\wget_files\physx\PhysX_8.04.25_SystemSoftware.part1.rar" (
    wget q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/PhysX_8.04.25_SystemSoftware.part1.rar
    copy /s /y Z:\opt\wget_files\temp\PhysX_8.04.25_SystemSoftware.part1.rar Z:\opt\wget_files\physx\PhysX_8.04.25_SystemSoftware.part1.rar /E /H /C /I
) ELSE (
    ECHO Part 01 already exists.
)

:: Simulate download progress only for subsequent parts
color 0A
echo.
echo *** Downloading part02.rar ***
IF NOT EXIST "Z:\opt\wget_files\physx\PhysX_8.04.25_SystemSoftware.part2.rar" (
    wget q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/PhysX_8.04.25_SystemSoftware.part2.rar
    copy /s /y Z:\opt\wget_files\temp\PhysX_8.04.25_SystemSoftware.part2.rar Z:\opt\wget_files\physx\PhysX_8.04.25_SystemSoftware.part2.rar /E /H /C /I
) ELSE (
    ECHO Part 02 already exists.
)

color 1f
echo Extracting...
Z:\opt\winrar.exe x Z:\opt\wget_files\physx\PhysX_8.04.25_SystemSoftware.part1.rar Z:\opt\wget_files\temp\
echo.
echo *** Running the installer ***
Start /wait Z:/opt/wget_files/temp/PhysX_8.04.25_SystemSoftware.exe