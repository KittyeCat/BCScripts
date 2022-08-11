# This is the first of several scripts that will be created as I learn bits of Powershell

Get-ChildItem; #this is the actual cmdlet run when you type 'dir' or 'ls'
Get-Alias; #This lets you see what commands are mapped to various cmdlets as above
Select-Object; #This lets you select certain objects from a list by piping lists of objects to it
Get-ChildItem | Select-Object -First 1; #This displays the first object from a list of items in your directory
(Get-ChildItem | Select-Object -First 1).ToString; #wrap phrases in parentheses to interact with them as if they are an object

Get-Help; #This is the most useful cmdlet, it displays the manual of a cmdlet
Get-Help Get-ChildItem; #This shows us how the Get-ChildItem cmdlet works
Get-Help *printer*; #you can search Get-Help if you don't know the exact cmdlet you are trying to use

Get-Command *printer*; #This will display every possible command that Powershell can run. Search this list simply by passing it your search phrase 
