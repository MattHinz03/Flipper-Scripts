while (1) {
    $rnd = (Get-Random -Minimum 1 -Maximum 17)
    $PlayWav=New-Object System.Media.SoundPlayer
    $PlayWav.SoundLocation="C:\temp\$rnd.wav"
    $PlayWav.playsync()

    Start-Sleep -Seconds 0
}