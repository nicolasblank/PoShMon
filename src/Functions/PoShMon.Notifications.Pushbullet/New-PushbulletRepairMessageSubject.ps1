Function New-PushbulletRepairMessageSubject
{
    [CmdletBinding()]
    Param(
        [hashtable]$PoShMonConfiguration,
        [System.Collections.ArrayList]$RepairOutputValues
    )

    return "[PoShMon $($PoShMonConfiguration.General.EnvironmentName) Repair Results]`r`n"
}