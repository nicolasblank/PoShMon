﻿Import-Module "C:\Dev\GitHub\PoShMon\src\0.4.0\PoShMon.psd1" -Verbose -Force #This is only necessary if you haven't installed the module into your Modules folder, e.g. via PowerShellGallery / Install-Module

$VerbosePreference = 'Continue'

$poShMonConfiguration = New-PoShMonConfiguration {
                General `
                    -EnvironmentName 'SharePoint' `
                    -MinutesToScanHistory 15 `
                    -PrimaryServerName 'SPAPPSVR01' `
                    -ConfigurationName SpFarmPosh `
                    -TestsToSkip "SPDatabaseHealth"
                OperatingSystem `
                    -EventLogCodes "Error","Warning"
                WebSite `
                    -WebsiteDetails @{ 
                                        "http://intranet" = "Read our terms"
                                        "http://extranet.company.com" = "Read our terms"
                                     }
                Notifications -When OnlyOnFailure {
                    Email `
                        -ToAddress "SharePointTeam@Company.com" `
                        -FromAddress "Monitoring@company.com" `
                        -SmtpServer "EXCHANGE.COMPANY.COM" `
                }
                
            }

$monitoringOutput = Invoke-SPMonitoring -PoShMonConfiguration $poShMonConfiguration

$poShMonConfiguration.General.PrimaryServerName = ''
$poShMonConfiguration.General.ServerNames = 'OWASVR01'
$poShMonConfiguration.General.EnvironmentName = 'Office Web Apps'
$poShMonConfiguration.General.ConfigurationName = $null
$poShMonConfiguration.WebSite = $null

$monitoringOutput = Invoke-OSMonitoring -PoShMonConfiguration $poShMonConfiguration

#Remove-Module PoShMon