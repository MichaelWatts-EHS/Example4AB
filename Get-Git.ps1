# powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -Command "& { & '.\Get-Git.ps1' -ConfigFile Filename.xml; Exit $LastExitCode }"


$dlClient = New-Object System.Net.WebClient
$ghRoot = "https://raw.githubusercontent.com/MichaelWatts-EHS/Example4AB/master"
If (!(Test-Path "$PSScriptRoot\Example4AB")) {New-Item -Path $PSScriptRoot -Name 'Example4AB' -ItemType Directory | Out-Null}
$arrMisc = [System.Collections.ArrayList] @("FTWCMLog64.dll","FTWldap64.dll","UI++.exe")
ForEach ($Item in $arrMisc) {If (!(Test-Path "$PSScriptRoot\Example4AB\$Item"))   {$dlClient.DownloadFile("$ghRoot/$Item", "$PSScriptRoot\Example4AB\$Item")}}

[string]$AskPS = "$ghRoot/Ask-Who.ps1"
. $moduleMain