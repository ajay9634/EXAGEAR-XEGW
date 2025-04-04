@echo off
echo .

:version_input
:: Allow the user to type or confirm the version before proceeding
set /p "version=Type the version: "

echo You entered version: %version%
echo.
color 0a
echo *** wait....***
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp" >NUL 2>&1
mkdir "Z:/opt/wget_files/temp" >NUL 2>&1
mkdir "Z:/opt/wget_files/dxvk" >NUL 2>&1
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***


:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading dxvk-%version%  ***
IF NOT EXIST "Z:/opt/wget_files\dxvk\dxvk-%version%.tar.gz" (
    wget -q --show-progress -P Z:/opt/wget_files/temp --progress=dot:mega https://github.com/doitsujin/dxvk/releases/download/v%version%/dxvk-%version%.tar.gz

copy /y "Z:\opt\wget_files\temp\dxvk-%version%.tar.gz" "Z:\opt\wget_files\dxvk\dxvk-%version%.tar.gz"
) ELSE (
    ECHO dxvk-%version%.tar.gz file already exists.
)

:: Simulate download progress only for subsequent parts
color 1f
echo *** Extracting ...***
Z:\opt\winrar.exe x Z:\opt\wget_files\dxvk\dxvk-%version%.tar.gz Z:\opt\wget_files\temp -r -y >NUL 2>&1
echo *** installing...***
ren "Z:/opt/wget_files/temp\dxvk-%version%\x32" system32
Xcopy /s /y Z:\opt\wget_files\temp\dxvk-%version%\system32\ C:\windows\system32\ /E /H /C /I

: updating current d3d: updating current d3d: updating current d3d: updating current d3d
del "C:\current\d3d\dxvk\*lnk" >NUL 2>&1)
del "C:\current\d3d\d9vk\*lnk" >NUL 2>&1)
del "C:\current\d3d\wined3d\*lnk" >NUL 2>&1)

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dxvk\dxvk-%version%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\d9vk\default.lnk"

echo ************************************************
timeout.exe 5 /nobreak
