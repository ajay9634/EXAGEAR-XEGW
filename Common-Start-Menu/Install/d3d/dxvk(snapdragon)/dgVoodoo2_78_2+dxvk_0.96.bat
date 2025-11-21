@echo off
set "installname=dgVoodoo2_78_2+dxvk_0.96"
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
IF NOT EXIST "Z:\opt\wget_files\dxvk\%installname%.7z" (
    wget -q --show-progress -P Z:/opt/wget_files/temp/ --progress=dot:mega https://raw.githubusercontent.com/ajay9634/EXAGEAR-XEGW/Resources/My-files/%installname%.7z

    IF NOT EXIST "Z:\opt\wget_files\dxvk" (
        mkdir "Z:\opt\wget_files\dxvk"
    )

    copy /y "Z:\opt\wget_files\temp\%installname%.7z" "Z:\opt\wget_files\dxvk\%installname%.7z"
) ELSE (
    echo %installname% file already exists.
)

color 1f
echo *** Extracting... ***
Z:\opt\7z.exe x Z:\opt\wget_files\dxvk\%installname%.7z -oZ:\opt\wget_files\temp\ -r -y >nul 2>&1

echo *** Installing... ***
xcopy /s /y Z:\opt\wget_files\temp\system32\ C:\windows\system32\ /E /H /C /I

echo *** Updating current D3D links... ***
del "C:\current\d3d\dxvk\*.lnk" >nul 2>&1
del "C:\current\d3d\ddraw\*.lnk" >nul 2>&1
del "C:\current\d3d\dx8\*.lnk" >nul 2>&1
del "C:\current\d3d\d9vk\*.lnk" >nul 2>&1
del "C:\current\d3d\wined3d\*.lnk" >nul 2>&1

copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dxvk\%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\d9vk\default.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\dx8\%installname%.lnk"
copy /f /s /y "Z:\opt\fsutil.lnk" "C:\current\d3d\ddraw\%installname%.lnk"

Start C:\windows\system32\dgVoodooCpl.exe

echo ************************************************
exit
