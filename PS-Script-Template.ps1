
#Requires -version 5
#Requires -Modules { PSLogging }
##Requires -RunAsAdministrator
#https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_requires?view=powershell-7.1

#PS-Script-Template.ps1
<#
.SYNOPSIS
  A brief description of the script.
.DESCRIPTION
  A detailed description of the script.
.PARAMETER name
  Brief description of parameter input required.
.PARAMETER name2
  Brief description of parameter input required.
.INPUTS
  Inputs (if any), otherwise state None.
.OUTPUTS Log File
  The script log file stored in C:\Windows\Temp\<name>.log
.NOTES
  Version:  1.0
  Author:   <Name>
  Date:     <Date>
.EXAMPLE
  Example command.
  
  Example command. Repeat for more than one example
#>

#-----------------------------------------------[Parameters]--------------------------------------------

Param (
  #Script parameters go here
)

#-----------------------------------------------[Initialization]----------------------------------------------

#Set Error Action to Silently Continue
$ErrorActionPreference = 'SilentlyContinue'

#Import Modules & Snap-ins
Import-Module PSLogging

#------------------------------------------------[Declarations]------------------------------------------------

#Script Version
$sScriptVersion = '1.0'

#Log File Info
$sLogPath = 'C:\Windows\Temp'
$sLogName = '<script_name>.log'
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName

#-------------------------------------------------[Functions]--------------------------------------------------

<#
Function <FunctionName> {
  Param ()
  Begin {
    Write-LogInfo -LogPath $sLogFile -Message '<description of what is going on>...'
  }
  Process {
    Try {
      <code goes here>
    }
    Catch {
      Write-LogError -LogPath $sLogFile -Message $_.Exception -ExitGracefully
      Break
    }
  }
  End {
    If ($?) {
      Write-LogInfo -LogPath $sLogFile -Message 'Completed Successfully.'
      Write-LogInfo -LogPath $sLogFile -Message ' '
    }
  }
}
#>

#-------------------------------------------------[Execution]--------------------------------------------------
Start-Log -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
#Script Execution
Stop-Log -LogPath $sLogFile