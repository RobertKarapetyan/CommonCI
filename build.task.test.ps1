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

	Write-Host "`tAll Projects"
    Write-Host ""
	$testProjects = (Get-ChildItem(".\.build\*tests.dll")).FullName
    $cmd = "&'$vsTest' $testProjects /logger:trx"
    Invoke-Expression $cmd
    Write-Host ""
}
