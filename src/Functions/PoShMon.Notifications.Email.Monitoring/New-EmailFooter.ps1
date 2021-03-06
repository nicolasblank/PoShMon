Function New-EmailFooter
{
    [CmdletBinding()]
    param(
        [hashtable]$PoShMonConfiguration,
        [TimeSpan]$TotalElapsedTime
    )

    $emailSection = ''

    $SkippedTests = $PoShMonConfiguration.General.TestsToSkip

    $emailSection += '<p>Skipped Tests: '
    if ($SkippedTests.Count -eq 0)
        { $emailSection += "None</p>" }
    else
        { $emailSection += ($SkippedTests -join ", ") + "</p>" }

    if ($TotalElapsedTime -ne $null)
         { $emailSection += "<p>Total Elapsed Time (Seconds): $("{0:F2}" -f $TotalElapsedTime.TotalSeconds) ($("{0:F2}" -f $TotalElapsedTime.TotalMinutes) Minutes)</p>" }

    $currentVersion = Get-Module PoShMon -ListAvailable | Select -First 1 | Sort Version 

    $emailSection += "<p>PoShMon Version: $($currentVersion.Version.ToString()) - $(Get-VersionUpgradeInformation $PoShMonConfiguration)</p>"

    $emailSection += '</body>'

    return $emailSection;
}