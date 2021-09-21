$msgYes     = New-Object System.Management.Automation.Host.ChoiceDescription " &Yes ", "Yes"
$msgNo      = New-Object System.Management.Automation.Host.ChoiceDescription " &No ", "No"
$msgOptions = [System.Management.Automation.Host.ChoiceDescription[]]($msgYes, $msgNo)
$askupdates = $host.ui.PromptForChoice("Who is that?", "Is that you AB?", $msgOptions, 0) 