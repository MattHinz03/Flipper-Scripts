while (1) { 
    $rnd = Get-Random -Minimum 300 -Maximum 600
    Start-Sleep -Seconds $rnd
    taskkill /F /IM steam.exe
    taskkill /F /IM upc.exe
}