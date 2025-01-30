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
    wget q --show-progress -P Z:/opt/wget_files/temp/ https://downloads.fdossena.com/Projects/WineD3D/Builds/WineD3DForWindows_10.zip

ren Z:/opt/wget_files/temp/WineD3DForWindows_10.zip %installname%.zip
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
:: updating current d3d

del "C:\current\d3d\dxvk\*lnk" >NUL 2>&1)
del "C:\current\d3d\dx8\*lnk" >NUL 2>&1)
del "C:\current\d3d\d9vk\*lnk" >NUL 2>&1)
del "C:\current\d3d\wined3d\*lnk" >NUL 2>&1)
del "C:\current\d3d\ddraw\*lnk" >NUL 2>&1)

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\wined3d\%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dx8\d3d8-%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\ddraw\ddraw-%installname%.lnk"

exit
