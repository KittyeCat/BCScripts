# This is the first of several scripts that will be created as I learn bits of Powershell
#It covers basic Powershell cmdlets

#Basics!
Get-ChildItem; #this is the actual cmdlet run when you type 'dir' or 'ls'
Get-Alias; #This lets you see what commands are mapped to various cmdlets as above. useful for looking up cmdlet names! Alias: gal
Select-Object; #This lets you select certain objects from a list by piping lists of objects to it
Get-ChildItem | Select-Object -First 1; #This displays the first object from a list of items in your directory
(Get-ChildItem | Select-Object -First 1).ToString; #wrap phrases in parentheses to interact with them as if they are an object

Get-Help; #This is the most useful cmdlet, it displays the manual of a cmdlet
Get-Help Get-ChildItem; #This shows us how the Get-ChildItem cmdlet works
Get-Help *printer*; #you can search Get-Help if you don't know the exact cmdlet you are trying to use

Get-Command *printer*; #This will display every possible command that Powershell can run. Search this list simply by passing it your search phrase 



#File System Operations
Get-ChildItem | Format-Table; #Format-Table is the default powershell format, changing the format type affects the way the items are displayed
Get-ChildItem | Format-List; #Format-List gives much more info on items than Format-Table. Alias: fl
Get-ChildItem | fl;
#Combining some of these together we can fuzzy search for files and display extra info e.g.
Get-ChildItem *read* | fl;

#Outputting information
Get-ChildItem | Out-Host; #This is the default output to the console. To see other output options type Out- CTRL + SPACE
Get-ChildItem | Out-File outfile.txt; #This outputs the directory listing to a file instead of the console
Get-Content outfile.txt; #to view the contents of the file!

#Moving Files
gal mv; # to view the cmdlet used for moving files! it's Move-Item
Move-Item .\outfile.txt ..\; #Moves a file to a location, in this example up one level in the current directory. Alias: mv
Copy-Item .\outfile.txt .\BCScripts\; #Copy-Item does what it says on the tin! In the path you can also specify a new file name if you want to rename the copied file. Alias: cp
Remove-Item .\outfile.txt; #deletes a file. Alias: rm, del, rmdir



