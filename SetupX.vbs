sCmd = "Write-Host 'Waiting for network resources...';Do{Try{$BS=(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/MichaelWatts-EHS/Example4AB/master/Get-Git.ps1')}Catch{$BS=$null}}While(!($BS));iex($BS)"
CreateObject("Shell.Application").ShellExecute "PowerShell.exe", "-ExecutionPolicy Bypass -Command ""&{" & sCmd & "}""", "", "runas", 2
