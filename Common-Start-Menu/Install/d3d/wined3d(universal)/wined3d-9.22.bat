@echo off
color 0a
set installname=%~n0
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading %installname% ***
IF NOT EXIST "Z:/opt/wget_files/wined3d/%installname%.zip" (
    wget -O Z:/opt/wget_files/temp/%installname%.zip https://downloads.fdossena.com/Projects/WineD3D/Builds/WineD3DForWindows_9.22.zip
    copy "Z:/opt/wget_files/temp/%installname%.zip" "Z:/opt/wget_files/wined3d/%installname%.zip"
    echo Extracting....
    Z:\opt\winrar.exe x Z:\opt\wget_files\wined3d\%installname%.zip Z:\opt\wget_files\temp\ -r -y >NUL 2>&1
    echo installing dlls....
    ren "Z:\opt\wget_files\temp\wined3d" system32
Xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I
) ELSE (
    ECHO file is already exists. Extracting...
        Z:\opt\winrar.exe x Z:\opt\wget_files\wined3d\%installname%.zip Z:\opt\wget_files\temp\ -r -y >NUL 2>&1
    echo installing dlls....
    ren "Z:\opt\wget_files\temp\wined3d" system32
Xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I
)
pause
:: Repeat for other parts...