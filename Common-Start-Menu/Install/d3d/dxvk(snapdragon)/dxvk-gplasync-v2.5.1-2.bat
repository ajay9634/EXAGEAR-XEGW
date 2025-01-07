@echo off
set "installname=%~n0"
:: Remove the prefix "dxvk-" and keep the part after it
set "version=%installname:dxvk-=%"
echo Version: %version%
color 0a
echo *** wait....***
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading %installname%  ***
IF NOT EXIST "Z:\opt\wget_files\dxvk\%installname%.7z" (
    wget -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z
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

echo ************************************************
pause 