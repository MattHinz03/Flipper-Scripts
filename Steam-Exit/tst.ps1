while (1) { 
    $rnd = Get-Random -Minimum 5 - Maximum 45
    Start-Sleep -Seconds $rnd
    taskkill /F /IM steam.exe
    
}