@echo off
color 0a
echo *** Enjoy Dosbox games ***
echo *** script made by Ajay ***

:: Simulating bold with color and emphasis
color 0A
echo.
echo *** Downloading DOSBox-SVN-Daum ***
IF NOT EXIST "Z:\opt\wget_files\Files\DOSBox-SVN-Daum.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/Ajay-prefix/Resources/My-files/DOSBox-SVN-Daum.7z
    copy /s /y Z:\opt\wget_files\temp\DOSBox-SVN-Daum.7z Z:\opt\wget_files\Files\DOSBox-SVN-Daum.7z /E /H /C /I
) ELSE (
    ECHO DOSBox-SVN-Daum already exists.
)


color 1f
echo *** Extracting ...***
Z:\opt\7z.exe x Z:\opt\wget_files\Files\DOSBox-SVN-Daum.7z -oZ:\opt\wget_files\my_apps\ -r -y >NUL 2>&1

echo *** opening dosbox-32bit ***
Start Z:\opt\wget_files\my_apps\DOSBox-SVN-Daum\dosbox.exe
echo ************************************************
