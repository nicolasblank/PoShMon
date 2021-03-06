$scriptFiles  = @( Get-ChildItem -Path $PSScriptRoot\Functions\*\*.ps1 -ErrorAction SilentlyContinue )

Foreach($import in $scriptFiles)
{
    Try
    {
        . $import.fullname

        #if ($import.FullName.Contains("PoShMon.Configuration") -or $scriptFiles.Basename.StartsWith("Invoke-") )
        #    { Export-ModuleMember -Function $import.BaseName }
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

#Export-ModuleMember -Function $scriptFiles.Basename
#. $PSScriptRoot\Functions\PoShMon.Shared\Get-EmailFooter.ps1
