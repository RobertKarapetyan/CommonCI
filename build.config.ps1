Properties {
    $buildConfiguration = "Release"

    $buildPlatform = "x64"

    $solutionFile = "..\TeamCityProject\TeamCityProject.sln"

    $solutionDirectory = (Get-Item $solutionFile).DirectoryName

	$cur = pwd
    $artifactsDirectory= "$cur\.build"

    $nuget = "$env:USERPROFILE\Documents\WindowsPowerShell\psake-master\psake-master\build\nuget\NuGet.exe"

    $msbuild = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\msbuild.exe"

    $vsTest = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Preview\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe"

    $dotCover = "..\packages\JetBrains.dotCover.CommandLineTools.2018.1.0\tools\dotCover.exe"
}
