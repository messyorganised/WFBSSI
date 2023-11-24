$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$TrendMSI = Join-Path -Path ([Environment]::GetFolderPath("Desktop")) -ChildPath "WFBS-SVC_Agent_Installer.msi"
$TrendIdentifier = 'TENANT ID'

function AVInstall {
    write-host "Downloading Trend Antivirus" -Seperator "`n"
    start-process $Scriptpath\Software\WFBS-SVC_Downloader.exe /SILENT -wait

    Write-Host "Installing Trend Antivirus" -Seperator "`n"
    Start-Process msiexec.exe -ArgumentList "/i $TrendMSI IDENTIFIER=$Trendidentifier SILENTMODE=1"
    
    Write-Host "SUCCESS!" -Seperator "`n"
}
