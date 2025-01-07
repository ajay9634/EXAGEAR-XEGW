@echo off
color 0a
echo *** Enjoy flash or swf games ***
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading flashplayer_32_sa ***
IF NOT EXIST "Z:\opt\wget_files\Files\flashplayer_32_sa.7z" (
    wget -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/flashplayer_32_sa.7z
    copy /s /y Z:\opt\wget_files\temp\flashplayer_32_sa.7z Z:\opt\wget_files\Files\flashplayer_32_sa.7z /E /H /C /I
) ELSE (
    ECHO flashplayer_32_sa already exists.
)


color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\Files\flashplayer_32_sa.7z -oZ:\opt\wget_files\my_apps\ -r -y >NUL 2>&1

echo *** opening flashplayer_32_sa ***
Start Z:\opt\wget_files\my_apps\flashplayer_32_sa.exe
echo ************************************************
