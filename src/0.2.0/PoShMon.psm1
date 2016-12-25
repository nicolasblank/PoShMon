$scriptFiles  = @( Get-ChildItem -Path $PSScriptRoot\Functions\*\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach($import in $scriptFiles)
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

#Export-ModuleMember -Function $scriptFiles.Basename
#. $PSScriptRoot\Functions\PoShMon.Shared\Get-EmailFooter.ps1
