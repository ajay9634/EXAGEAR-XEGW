@echo off
echo delete downloaded wines manually but don't delete wine-4.0.4 and wine-8.2.
taskkill /f /im 7zFM.exe >NUL 2>taskkill /f /im 7zFM.exe >NUL 2>&1
rmdir /S /Q Z:\opt\7-Zip\temp\

Z:\opt\7z.exe x Z:\opt\7-Zip\7-Zip.7z -oZ:\opt\7-Zip\temp  -p1 -r -y >NUL 2>&1
start "" "Z:\opt\7-Zip\temp\7zFM.exe" "Z:\opt\wineCollection\custom"
