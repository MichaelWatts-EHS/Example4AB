Clear-Host
$msgYes     = New-Object System.Management.Automation.Host.ChoiceDescription " &Yes ", "Yes"
$msgNo      = New-Object System.Management.Automation.Host.ChoiceDescription " &No ", "No"
$msgOptions = [System.Management.Automation.Host.ChoiceDescription[]]($msgYes, $msgNo)
$question = $host.ui.PromptForChoice("Who dat?", "I'm just a computer, it's not like I have eyes.`nIs that you AB?", $msgOptions, 0)

If ($question -eq 0) {
$file = "https://raw.githubusercontent.com/MichaelWatts-EHS/Example4AB/master/tada.wav"
$PlayWav=New-Object System.Media.SoundPlayer
$PlayWav.SoundLocation=$file
$PlayWav.playsync()
}