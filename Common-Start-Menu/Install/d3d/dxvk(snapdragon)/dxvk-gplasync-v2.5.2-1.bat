@echo off
set "installname=%~n0"
:: Remove the prefix "dxvk-" and keep the part after it
set "version=%installname:dxvk-=%"
echo Version: %version%
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
echo *** Downloading %installname%  ***
IF NOT EXIST "Z:\opt\wget_files\dxvk\%installname%.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z
    copy /s /y Z:\opt\wget_files\temp\%installname%.7z Z:\opt\wget_files\dxvk\%installname%.7z /E /H /C /I
) ELSE (
    ECHO %installname% file already exists.
)

:: Simulate download progress only for subsequent parts
color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\dxvk\%installname%.7z -oZ:\opt\wget_files\temp\ -r -y >NUL 2>&1
echo *** installing...***
Xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I

:: updating current d3d
del "C:\current\d3d\dxvk\*lnk" >NUL 2>&1)
del "C:\current\d3d\d9vk\*lnk" >NUL 2>&1)
del "C:\current\d3d\wined3d\*lnk" >NUL 2>&1)

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dxvk\%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\d9vk\default.lnk"


echo ************************************************
timeout.exe 5 /nobreak
exit
