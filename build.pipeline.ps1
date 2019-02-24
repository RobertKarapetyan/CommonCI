Include "./build.task.init.ps1"

Include "./build.task.restore.ps1"

#Include "./build.task.rebuild.ps1"

#Include "./build.task.test.ps1"

#Include "./build.task.testCoverage.ps1"

Task -name BuildPipeLine `
    -depends Init, Restore
	
#, Restore, Rebuild, Test, TestCoverage `

Task -name default -depends BuildPipeLine
