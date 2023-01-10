
$outfile = "$PSScriptRoot\output.csv"

#Grab EXIF data from Photos
Get-ChildItem -Path "$PSScriptRoot\*.jpg" -Recurse  | Select-Object -Property Name,LastWriteTime | Export-CSV -Path "$PSScriptRoot\temp1.csv"

# Import-CSV test.csv | ForEach-Object{
#     $date = $_.LastWriteTime
#     $dateValue = [datetime]::ParseExact($date ,'d/MM/yyyy h:mm:ss tt',$null)


#     Write-Output $dateValue.ToString('d/MM/yyyy')
# }

#Create Dates column
Import-CSV "$PSScriptRoot\temp1.csv" | 
Select-Object *,@{Name='DateOnly';Expression={([datetime]::ParseExact($_.LastWriteTime ,'d/MM/yyyy h:mm:ss tt',$null)).ToString('d/MM/yyyy')}} | 
Export-Csv "$PSScriptRoot\temp2.csv" -NoTypeInformation

#Create Times column
Import-CSV "$PSScriptRoot\temp2.csv" | 
Select-Object *,@{Name='TimeOnly';Expression={([datetime]::ParseExact($_.LastWriteTime ,'d/MM/yyyy h:mm:ss tt',$null)).AddHours(-10).ToString('HH:mm:ss')}} | 
Export-Csv $outfile -NoTypeInformation

Remove-Item "$PSScriptRoot\temp1.csv", "$PSScriptRoot\temp2.csv"

# $names = Get-ChildItem -Path "$PSScriptRoot\*.jpg" -Recurse  | Select-Object -Property Name
# $files = Get-ChildItem -Path "$PSScriptRoot\*.jpg" -Recurse

# foreach($file in $files) {
#     $out = ($file | Select-Object -Property LastWriteTime)
#     Write-Output $out
# }

# Write-Output $dates

# foreach($date in $dates)
# {
#     #$convertedDate = [datetime]::ParseExact(((Convert-String $date).Substring(15,36)) ,'dd/MM/yyyy h:mm:ss tt',$null)
    
#     Write-Output ($date)
# }


#$dates = Get-ChildItem -Path "06160105.JPG" | Select-Object -Property CreationTime

#$convertedDates = [datetime]::ParseExact($dates, 'dd/MM/yyyy h:mm:ss tt', $null)

#Write-Output $data

