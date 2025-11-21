@echo off
set "installname=AutoIt3"
color 0a
echo *** wait....***
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
if not exist C:\first_time_setup.bat echo @echo off > C:\first_time_setup.bat
echo *** script made by Ajay ***

color 0A
echo.

IF NOT EXIST "Z:\opt\wget_files\Files\%installname%.7z" (
    echo *** Downloading %installname%  ***
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z
    copy /s /y Z:\opt\wget_files\temp\%installname%.7z Z:\opt\wget_files\Files\%installname%.7z /E /H /C /I
    goto Extract
) ELSE (
    ECHO %installname% file already exists.
    goto Check
)

:Check
IF NOT EXIST "C:\Program Files\AutoIt3\AutoIt3.exe" (
    goto Extract
) ELSE (
    goto Scripts_Check
)

color 1f
:Extract
echo *** Extracting %installname% ...***
timeout.exe 1 /nobreak >NUL 2>&1
Z:\opt\7z.exe x Z:\opt\wget_files\Files\%installname%.7z -o"C:\Program Files\AutoIt3"  -r -y >NUL 2>&1

:Reg
echo *** Installing Registry ***
reg add "HKCR\.ajau3" /ve /d "AjAutoItScript" /f >nul
reg add "HKCR\.ajau3" /v "Content Type" /d "text/plain" /f >nul
reg add "HKCR\AjAutoItScript" /ve /d "Ajay AutoIt Script" /f >nul
reg add "HKCR\AjAutoItScript\DefaultIcon" /ve /d "\"C:\\Program Files\\AutoIt3\\Icons\\au3.ico\"" /f >nul
reg add "HKCR\AjAutoItScript\Shell" /ve /d "Open" /f >nul
reg add "HKCR\AjAutoItScript\Shell\Open\Command" /ve /d "\"C:\\Program Files\\AutoIt3\\AutoIt3.exe\" \"%%1\" %%*" /f >nul

:Scripts_Check
IF NOT EXIST "Z:\opt\AutoIt3_Scripts\Ajay_Hotkeys_Pro_1.2.ajau3" (
    goto Scripts_Download
) ELSE (
    goto Run
)

:Scripts_Download
echo *** Downloading AutoIt3_Scripts ...***
wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/AutoIt3_Scripts.7z

timeout.exe 1 /nobreak >NUL 2>&1
echo *** Extracting AutoIt3_Scripts ...***
color 1f
Z:\opt\7z.exe x Z:\opt\wget_files\temp\AutoIt3_Scripts.7z -o"Z:\opt"  -r -y >NUL 2>&1

:Run
color 1f
echo *** Opening ...***
IF EXIST "Z:\opt\AutoIt3_Scripts\Ajay_Hotkeys_Pro_1.2.ajau3" (
    start "" "C:\Program Files\AutoIt3\AutoIt3.exe" "Z:\opt\AutoIt3_Scripts\Ajay_Hotkeys_Pro_1.2.ajau3"
) ELSE (
    echo File not Found
    pause
)

timeout.exe 2 /nobreak
exit
