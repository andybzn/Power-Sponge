<#
Script Name: Power-Sponge.ps1
Author: Dark-Coffee
Version: 1.0.0
Updated: 2020-02-10
Url: https://github.com/dark-coffee/Power-Sponge/
#>

<#
.Description
    takes your text, AnD MAkEs it liKE tHiS.
.Parameter SuperCaps
    Increases the number of capital letters.
.Example
    Power-Sponge
.Example
    Power-Sponge -SuperCaps
#>


function Power-Sponge{

    #Set Parameters
    param(
        [Parameter(Mandatory=$false)][Switch]$SuperCaps
    )
    
    #Initialise blank variables
    $inputText=""
    $inputArray=""

    #Get text from clipboard and break into an array
    $inputText=Get-Clipboard
    [Array]$inputArray = $inputText.ToCharArray()

    #Decide number of caps
    if($SuperCaps){
        $CapsAmount = 25
    }else{
        $CapsAmount = 50
    }

    #Capitalise at will
    foreach ($item in $inputArray){
        
        #Force as string
        [string]$Character = $item

        if((0..100 | Get-Random) -le $CapsAmount){
            $Character = $Character.ToLower()
        }else{
            $Character = $Character.ToUpper()
        }
        
        #Append to Output Text
        $outputtext = $outputtext + $Character
    }

        #Force Output to String
        [String]$SpOnGeIfIeD = $outputtext.ToString();
        
        #Put to Host and Clipboard
        $SpOnGeIfIeD | clip
        $SpOnGeIfIeD
}
