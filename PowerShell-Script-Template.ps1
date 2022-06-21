#requires -version 5
<#
.SYNOPSIS
  <Overview of script>

.DESCRIPTION
  <Brief description of script>

.PARAMETER <Parameter_Name>
    <Brief description of parameter input required. Repeat this attribute if required>

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>

.NOTES
  Version:        1.0
  Author:         <Name>
  Creation Date:  <Date>
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example>
#>

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

#Set Error Action to Silently Continue
$ErrorActionPreference = "SilentlyContinue"

#Dot Source required Function Libraries


#----------------------------------------------------------[Declarations]----------------------------------------------------------

#Script Version
#$sScriptVersion = "1.0"

#Script Name
$scriptName = $MyInvocation.MyCommand.Name

#Log File Info
$sLogPath = "C:\Windows\Temp"
$sLogName = $scriptName.Replace(".ps1", ".log")
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName

#-----------------------------------------------------------[Start Logging]--------------------------------------------------------
Start-Transcript -Path $sLogFile
#-----------------------------------------------------------[Functions]------------------------------------------------------------
<#
Function Example{
  Param()
  
  Begin{
    #Write-Host "<description of what is going on>..."
  }
  
  Process{
    Try{
        <code here>
    }
    
    Catch{
      Write-Host $(Get-Date -Format G) : $_.Exception -ExitGracefully $True
      Break
    }
  }
  
  End{
    If($?){
      Write-Host $(Get-Date -Format G) :  "Completed Successfully."
      Write-Host $(Get-Date -Format G) :  -LineValue " "
      
    }
}
#>
#-----------------------------------------------------------[Execution]------------------------------------------------------------

Write-Host $(Get-Date -Format G) : "Starting execution of $scriptName"
#Script Execution goes here


#-----------------------------------------------------------[End Logging]--------------------------------------------------------
Write-Host $(Get-Date -Format G) : "Ending execution of $scriptName"
Stop-Transcript