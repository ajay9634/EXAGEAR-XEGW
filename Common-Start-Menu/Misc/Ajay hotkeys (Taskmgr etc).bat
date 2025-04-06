@echo off
set "installname=Ajay_hotkeys_Exagear"
:: Remove the prefix "dxvk-" and keep the part after it
color 0a
echo *** wait....***
echo *** deleting temp files...***
taskkill /F /IM Ajay_hotkeys_Exagear.exe >nul 2>&1
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading %installname%  ***
IF NOT EXIST "Z:\opt\wget_files\Files\%installname%.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z
    copy /s /y Z:\opt\wget_files\temp\%installname%.7z Z:\opt\wget_files\Files\%installname%.7z /E /H /C /I
) ELSE (
    ECHO %installname% file already exists.
)

:: Simulate download progress only for subsequent parts
color 1f
echo *** Extracting ...***
del C:\windows\Ajay_hotkeys_Exagear.exe >NUL 2>&1
del C:\windows\Ajay_hotkeys_Exagear.exe.dat >NUL 2>&1
timeout.exe 1 /nobreak >NUL 2>&1
Z:\opt\7z.exe x Z:\opt\wget_files\Files\%installname%.7z -oC:\windows -p1 -r -y >NUL 2>&1
echo *** installing...***
start "" "C:\windows\Ajay_hotkeys_Exagear.exe"
timeout.exe 2 /nobreak
exit
