@echo off
set "installname=DDraw_Indy3D"
color 0a

echo *** Wait... ***
echo *** Deleting temp files... ***
rmdir /S /Q "Z:\opt\wget_files\temp"
mkdir "Z:\opt\wget_files\temp"
echo *** Deleted temp files ***
echo.
echo *** Script made by Ajay ***

echo.
echo *** Downloading %installname% ***
IF NOT EXIST "Z:\opt\wget_files\wined3d\%installname%.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z

    IF NOT EXIST "Z:\opt\wget_files\wined3d" (
        mkdir "Z:\opt\wget_files\wined3d"
    )

    copy /y "Z:\opt\wget_files\temp\%installname%.7z" "Z:\opt\wget_files\wined3d\%installname%.7z"
) ELSE (
    echo %installname% file already exists.
)

color 1f
echo *** Extracting... ***
Z:\opt\7z.exe x Z:\opt\wget_files\wined3d\%installname%.7z -oZ:\opt\wget_files\temp\ -r -y >nul 2>&1

echo *** Installing... ***
xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I

echo *** Updating current D3D links... ***
del "C:\current\d3d\ddraw\*lnk" >NUL 2>&1)

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\ddraw\%installname%.lnk"


echo ************************************************
exit
