#
# Module manifest for module 'PoShMon'
#
# Generated by: Hilton Giesenow
#
# Generated on: 24 May 2018
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PoShMon.psm1'

# Version number of this module.
ModuleVersion = '1.1.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '6e6cb274-1bed-4540-b288-95bc638bf679'

# Author of this module
Author = 'Hilton Giesenow'

# Company or vendor of this module
CompanyName = 'Experts Inside'

# Copyright statement for this module
Copyright = '2016 Hilton Giesenow, All Rights Reserved'

# Description of the functionality provided by this module
Description = 'PoShMon is an open source PowerShell-based server and farm monitoring solution. It''s an ''agent-less'' monitoring tool, which means there''s nothing that needs to be installed on any of the environments you want to monitor - you can simply run or schedule the script from a regular workstation and have it monitor a single server or group of servers, using PowerShell remoting. PoShMon is also able to monitor ''farm''-based products like SharePoint, in which multiple servers work together to provide a single platform.

Key Features
Some of the key features / benefits of PoShMon are:
- Agent-less Monitoring - nothing needs to be installed on the remote servers
- Core operating system and web-site monitoring
- Specialized SharePoint monitoring
- Specialized Office Online Server monitoring
- Supports frequent/critical as well as comprehensive daily monitoring
- Email, Pushbullet (mobile), Office 365 Teams (''Chat-ops'') and Twilio (SMS) notifications
- Provides a framework for ''self-healing'' systems
- Support for Operation Validation Framework (OVF)

For more information, documentation etc. visit https://github.com/HiltonGiesenow/PoShMon as well as the Samples folder within the module itself.'

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = '*'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Monitoring', 'Server', 'Farm', 'SharePoint'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/HiltonGiesenow/PoShMon/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/HiltonGiesenow/PoShMon'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '
1.1.0
* Added ability to create ad-hoc html report
* For Drive Space Test, Add Volume Name to Output
* Added html formatting to Exception emails

1.0.0
* Official 1.0.0 release
* Added SMS notification via Twilio
* Improved SharePoint Distributed Cache health test
* Fixed some unit tests
* Fixed Unsupported Verbs warning
* Notification refactor
* Fixed failing Websites test for cookie prompt
* Fixed CPU test failing on local machine
* Fixed CPU test bug for group of servers
* Fixed EventLog test bug
* Improved failure message for Windows Service tests

0.15.1
* Adding capability to run without any config (to scan local machine)
* Minor wording change

0.15.0
* Bug fixes for Pushbullet and Microsoft Teams message posting
* Added sample for self-healing
* Minor code cleanups

0.14.0
* Integration with Operation Validation Framework (OVF)

0.13.0
* Implement hyperlinks in output
* Implemented CI server
* Created a Merger framework (to merge multiple outputs)
* Create a Merger for OS output
* Removed ApplicationName from SharePoint Job Health Test
* Add ''Last Reboot Time'' test

0.12.0
* Added Office Web Apps / Office Online Server monitoring
* Added some style to Email output
* Changed display to Hard Drive and Memory output
* Fixed bug in email footer for skipped tests

0.11.0
* Created ''Self-Healing'' Framework into which custom scripts can be injected
* Added ability to skip auto-discovered Windows services
* Fixed bug where Pushbullet and Office 365 Teams were not showing Environment name
* Fixed bug in harddrive space percent test
* Fixed bug in cpu test for standalone ''minimal config test

0.10.1
* Added Proxy settings to enable Pushbullet and 0365 Teams connectivity
* Introduced a ''minimum configuration'' for local machine monitoring
* Fixed bug in SharePoint UPS Sync monitor
* Added Resolver for High CPU usage while SharePoint Search Index is running
* Improved Verbose output logging
* Added option for harddrive space to track by percent
* Add a check for any invalid TestsToSkip
* Fixed bug in Update-PoShMon

0.9.2
* Fixed bug in email output
* Fixed bug with not terminating Remote sessions correctly
'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

