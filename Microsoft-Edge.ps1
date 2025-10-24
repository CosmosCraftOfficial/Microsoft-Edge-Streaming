# ---------------------------------------------
# Launch-Edge-Log.ps1
# Launch Edge with custom flags and log all output/errors
# ---------------------------------------------

# Define log file path
$LogFile = "$env:C:\Scripts\EdgeLauncherLog.txt"

# Start logging
Start-Transcript -Path $LogFile -Append -ErrorAction Stop

try {
    Write-Host "`n=== Edge Launcher with Logging ===`n"

    # 1️⃣ Kill all running Edge processes
    Write-Host "Terminating all running Edge processes..."
    Get-Process msedge -ErrorAction SilentlyContinue | ForEach-Object { 
        try { $_.Kill() } 
        catch { Write-Warning "Could not kill process ID $($_.Id): $_" }
    }
    Start-Sleep -Milliseconds 500

    # 2️⃣ Set Edge executable path (update if different)
    $EdgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

    if (-not (Test-Path $EdgePath)) {
        throw "Microsoft Edge executable not found at: $EdgePath"
    }
    Write-Host "Edge found at: $EdgePath"

    # 3️⃣ Define custom flags
  $EdgeFlags = @(
      "--always-enable-hdcp",
      "--enable-hdr-output",
      "--try-supported-channel-layouts",
      "--enable-exclusive-audio",
      "--no-startup-window",
      "--flag-switches-begin",
      "--flag-switches-end"
  )
  Write-Host "Flags to apply: $($EdgeFlags -join ' ')"

  # 4️⃣ Launch Edge
    Write-Host "Launching Edge..."
    $process = Start-Process -FilePath $EdgePath -ArgumentList $EdgeFlags -PassThru -ErrorAction Stop
    Write-Host "Edge launched successfully! Process ID: $($process.Id)"
}
catch {
    Write-Error "An error occurred: $_"
}
finally {
    # Stop logging
    Stop-Transcript
    Write-Host "`nAll output logged to $LogFile"

}

