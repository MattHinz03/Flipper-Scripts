while (1) { 
    $rnd = Get-Random -Minimum 300 -Maximum 1500
    Start-Sleep -Seconds $rnd
    taskkill /F /IM steam.exe
}