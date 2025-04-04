@echo off
set "installname=dxwrapper-1.2.7500.25"
:: Remove the prefix "dxvk-" and keep the part after it
color 0a
echo *** wait....***
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp" >NUL 2>&1
mkdir "Z:/opt/wget_files/temp" >NUL 2>&1
mkdir "Z:\opt\wget_files\wined3d" >NUL 2>&1
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading %installname%  ***
IF NOT EXIST "Z:\opt\wget_files\wined3d\%installname%.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z
    copy /s /y Z:\opt\wget_files\temp\%installname%.7z Z:\opt\wget_files\wined3d\%installname%.7z /E /H /C /I
) ELSE (
    ECHO %installname% file already exists.
)

:: Simulate download progress only for subsequent parts
color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\wined3d\%installname%.7z -oZ:\opt\wget_files\temp\ -r -y >NUL 2>&1
echo *** installing...***
Xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I

:: updating current d3d
del "C:\current\d3d\ddraw\*.lnk" >nul 2>&1
del "C:\current\d3d\dx8\*.lnk" >nul 2>&1

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dx8\%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\ddraw\%installname%.lnk"


notepad.exe C:\windows\system32\dxwrapper.ini

echo ************************************************
exit
