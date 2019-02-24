Include ".\build.config.ps1"

Task -name Init -action {
    Write-Host ""
    PrintConfiguration
    EmptyArtifactsDirectory
    Write-Host ""
}

Function PrintConfiguration
{
    Write-Host "`tPrinting Build Configuration"
    Write-Host "`t`tBuild Configuration: $buildConfiguration"
    Write-Host "`t`tBuild Platform: $buildPlatform"
    Write-Host "`t`tArtifacts Directory: $artifactsDirectory"
    Write-Host "`t`tNuget Executable: $nuget"
    Write-Host "`t`tMsbuild Executable: $msbuild"
    Write-Host "`t`tVstest Executable: $vsTest"
    Write-Host "`t`tDotcover Executable: $dotCover"
    Write-Host ""
}

Function EmptyArtifactsDirectory
{
    Write-Host "`tEmptying Artifacts Directory"
    if (Test-Path $artifactsDirectory) 
	{
		Write-Host "`t`tRemoving the contents of the artifacts directory located at $artifactsDirectory"
		Remove-Item $artifactsDirectory -Force -Recurse
	}

	New-Item $artifactsDirectory -ItemType Directory | Out-Null
}
