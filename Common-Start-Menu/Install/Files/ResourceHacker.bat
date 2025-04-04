@echo off
color 0a
echo *** Enjoy flash or swf games ***
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading ResourceHacker ***
IF NOT EXIST "Z:\opt\wget_files\Files\ResourceHacker.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/ResourceHacker.7z
    copy /s /y Z:\opt\wget_files\temp\ResourceHacker.7z Z:\opt\wget_files\Files\ResourceHacker.7z /E /H /C /I
) ELSE (
    ECHO ResourceHacker already exists.
)


color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\Files\ResourceHacker.7z -oZ:\opt\wget_files\temp\ -r -y >NUL 2>&1

echo *** opening ResourceHacker ***
Start Z:\opt\wget_files\temp\ResourceHacker.exe
echo ************************************************
