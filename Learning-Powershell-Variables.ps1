#This is a learning script and not intended to be run all at once
#This script covers learning about Variables in Powershell

#Variables in Powershell are denoted by the $ e.g.
$PROFILE; #This is a default variable and stores a path to your powershell profile
$PROFILE | Select-Object *; #just like ojects, variables can be piped to cmdlets
Get-Content $PROFILE; #Does the same thing as just stating the variable

$ANYTHING = "This is a Variable"; #We can create our own variables and name then anything we like. $ denotes a variable and = sets the value
Write-Host $ANYTHING; #Use it to do stuff
$ANYTHING.GetType(); #Returns the type of the variable. the . can be used to call a method on a $variable
[string]$ANYTHING; #you can Cast a variable to a specific type, this can be done to either the variable or the contents
$ANYTHING = [string]"This is a Variable";

Get-TypeData *IP*; #We can use Get-TypeData to learn about the various built in variable types there are
[ipaddress]$THISISANIP = "10.0.0.1"; #For example the ipaddress type has a bunch of useful built in validation and operators
Write-Output $THISISANIP;
[ipaddress]$THISISANIP = "1000.0.0.1"; #These types have validation and can save you a lot of effort trying to figure out if an IP or an email address are in the correct format
