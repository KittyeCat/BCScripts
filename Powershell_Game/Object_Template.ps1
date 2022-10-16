#This is a shell that can use the modules in Game_Modules to provide interactibility

Import-Module .\Powershell_Game\Game_Modules.psm1

Invoke-Character ([string](Get-Location)) $MyInvocation.MyCommand.Name