BCScripts readme

***

This repo is scripts for me to keep track of my learning and collate any useful things I find!

Contents:
- Learning-Powershell-Phrases.ps1 #This is a document of basic powershell cmdlets and syntax
-
-

Learning Materials:
- John Hammond's video series on learning Powershell basics: https://www.youtube.com/playlist?list=PL1H1sBF1VAKXqO_N3ZNP0aL15miJcUhw7



Powershell Notes:
- powershell is case insensitive
- Powershell uses OBJECTS rather than just TEXT, so when you output something to the screen it is the object being output not just the ASCII. That means if you use | you can supply objects to other cmdlets not just text
- in Powershell if you press CTRL+L it will clear the screen. 'cls' and 'clear' also work for this
- commands like dir/ls or clear are actually aliases for Powershell cmdlets. e.g. dir/ls both map to 'Get-ChildItem'