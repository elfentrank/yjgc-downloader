@echo off
setlocal enabledelayedexpansion

set "url=https://cdn.discordapp.com/attachments/1142589842660802713/1159956953666162820/scamm.mp4?ex=6532e918&is=65207418&hm=9caf8a59a83ea2800eba763da5c4c47033105b30811a0eb1738ff49cd06ed91e&"

set "outputFile=yjgs.mp4"

powershell -command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%outputFile%')"

if exist %outputFile% (
    echo You just got scammed

    start "" "%outputFile%"
) else (
    echo shit
)

pause
