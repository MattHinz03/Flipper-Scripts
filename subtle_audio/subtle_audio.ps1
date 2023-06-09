while (1) {
    Start-Sleep -Seconds 3600

    $rnd = (Get-Random -Minimum 1 -Maximum 18)
    $PlayWav=New-Object System.Media.SoundPlayer
    $PlayWav.SoundLocation="C:\temp\$rnd.wav"
    $PlayWav.playsync()
}