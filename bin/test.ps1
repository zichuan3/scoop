$pesterConfig = New-PesterConfiguration -Hashtable @{
Run    = @{
    Path     = "$PSScriptRoot/.."
    PassThru = $true
}
Output = @{
    Verbosity = 'Detailed'
}
}
$result = Invoke-Pester -Configuration $pesterConfig
exit $result.FailedCount
