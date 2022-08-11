BCScripts readme

***

This repo is scripts for me to keep track of my learning and collate any useful things I find!

Contents:
- Learning-Powershell-Cmdlets.ps1
-Learning-Powershell-Variables.ps1
-

Resources:
- John Hammond's video series on learning Powershell basics: https://www.youtube.com/playlist?list=PL1H1sBF1VAKXqO_N3ZNP0aL15miJcUhw7
- Awesome reference for Powershell & other scripting languages: https://ss64.com
- Really cool website for learning Git: https://learngitbranching.js.org/
- list of all Microsoft learning paths for Powershell: https://docs.microsoft.com/en-us/learn/browse/?terms=PowerShell&resource_type=learning%20path


Git Notes:
- If you are getting error messages when trying to commit using Git or run Git-Bash then you probably need to disable ForceRelocateImages with the below powershell commands:
Get-Item -Path "C:\Program Files\Git\usr\bin\*.exe" | %{ Set-ProcessMitigation -Name $_.Name -Disable ForceRelocateImages }
Get-Item -Path "C:\Program Files\Git\bin\*.exe" | %{ Set-ProcessMitigation -Name $_.Name -Disable ForceRelocateImages }
Get-Item -Path "C:\Program Files\Git\*.exe" | %{ Set-ProcessMitigation -Name $_.Name -Disable ForceRelocateImages }
Source: https://stackoverflow.com/questions/34959583/github-cygwin-error-cygheap-base-mismatch-detected


Powershell Notes:
- powershell is case insensitive
- Powershell uses OBJECTS rather than just TEXT, so when you output something to the screen it is the object being output not just the ASCII. That means if you use | you can supply objects to other cmdlets not just text
- in Powershell if you press CTRL+L it will clear the screen. 'cls' and 'clear' also work for this
- CTRL + SPACE will give you an autocomplete LIST in powershell!! This is super useful when you can't remember exactly which command you want or know there are several similar options. e.g. Format- CTRL + SPACE shows you ALL the formatting cmdlets to choose from
- commands like dir/ls or clear are actually aliases for Powershell cmdlets. e.g. dir/ls both map to 'Get-ChildItem'