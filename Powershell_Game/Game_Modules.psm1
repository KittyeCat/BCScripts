#this is the module file to allow reusable functions

function Invoke-Character {
    param (
        $FilePath, $FileName)
    
    Write-Output $FilePath $FileName
}

function FunctionName {
    param (
        OptionalParameters
    )
    
}