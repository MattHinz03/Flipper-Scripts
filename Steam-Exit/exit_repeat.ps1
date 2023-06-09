while (1) { 
    try {
        # Variables are run, minWaitTime, maxWaitTime
        $variablesPath = "https://raw.githubusercontent.com/MattHinz03/Flipper-Scripts/main/Steam-Exit/variables.txt"
        $variablesRequest = Invoke-WebRequest $variablesPath
        $variablesString = $variablesRequest.Content
        $variables = $variablesString.Split(" ")

        $run = [int] $variables[0]
        $minTime = [int] $variables[1]
        $maxTime = [int] $variables[2]

    } catch {
        $run = 1
        $minTime = 300
        $maxTime = 600
    }

    if ($run) {
        $rnd = Get-Random -Minimum minTime -Maximum maxTime
        Start-Sleep -Seconds $rnd
        taskkill /F /IM steam.exe
        taskkill /F /IM upc.exe
    } else {
        Start-Sleep -Seconds 120
    }
}