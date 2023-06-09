while (1) {
    $rnd = (Get-Random -Minimum 1 -Maximum 13)
    $PlayWav=New-Object System.Media.SoundPlayer
    $PlayWav.SoundLocation="$rnd.wav"
    $PlayWav.playsync()

    Start-Sleep -Seconds 0
}