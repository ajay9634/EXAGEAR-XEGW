@echo off
color 0a
del %tmp%\tmp.vbs
echo *** deleting temp files...***
rmdir /S /Q "Z:/opt/wget_files/temp"
mkdir "Z:/opt/wget_files/temp"
echo *** deleted temp files ***
echo .
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading msxml6  ***
IF NOT EXIST "Z:\opt\wget_files\Files\msxml6.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/msxml6.7z
    copy /s /y Z:\opt\wget_files\temp\msxml6.7z Z:\opt\wget_files\Files\msxml6.7z /E /H /C /I
) ELSE (
    ECHO msxml6 file already exists.
)

:: Simulate download progress only for subsequent parts

color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\Files\msxml6.7z -oZ:\opt\wget_files\temp\ -r -y >NUL 2>&1
echo *** installing ...***

Xcopy /s /y Z:\opt\wget_files\temp\syswow64\ C:\windows\system32\ /E /H /C /I



echo.************************************************
pause 
