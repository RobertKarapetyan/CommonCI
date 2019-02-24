Include ".\build.config.ps1"

Task -name Rebuild -action {
    Write-Host ""
    RebuildSolution
    Write-Host ""
}

Function RebuildSolution
{
    Write-Host "`tRebuilding Solution"
    $cmd = "$msbuild $solutionFile /t:rebuild /v:minimal /p:OutDir=$artifactsDirectory"
    Invoke-Expression $cmd
    Write-Host ""
}
