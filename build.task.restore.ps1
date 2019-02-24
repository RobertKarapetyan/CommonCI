Include ".\build.config.ps1"

Task -name Restore -action {
    Write-Host ""
    RestoreNugetPackages
    Write-Host ""
}

Function RestoreNugetPackages
{
    Write-Host "`tRestoring Nuget Packages"
    $cmd = "$nuget restore $solutionFile"
    Invoke-Expression $cmd
    Write-Host ""
}
