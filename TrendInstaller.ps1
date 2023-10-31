$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition

write-host "Enter Company Identifier"
$identifierpath = Read-Host

start-process msiexec '/i \$Scriptpath\Software\WFBS-SVC_Agent_Installer IDENTIFIER=$identifierpath ABANDON=0 SILENTMODE=1  /L*v C:\Windows\Temp\WFBS_Debug\wofie_msi.log'

