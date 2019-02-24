Remove-Module [p]sake

$psakeModule = (Get-ChildItem(".\packages\psake*\tools\psake\psake.psm1")).FullName |`
    Sort-Object $_ |`
    Select-Object -Last 1
    
Import-Module $psakeModule

Invoke-psake -buildFile ".\build.pipeline.ps1" `
    -taskList BuildPipeLine 
