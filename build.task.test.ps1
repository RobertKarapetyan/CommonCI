Include ".\build.config.ps1"

Task -name Test -action {
    Write-Host ""
    TestDlls
    Write-Host ""
}

Function TestDlls
{
    Write-Host "`tConsoleApp.Tests.dll:"
    Write-Host ""
    $cmd = "&'$vsTest' .\.build\ConsoleApp.Tests.dll /logger:trx"
    Invoke-Expression $cmd
    Write-Host ""
}
