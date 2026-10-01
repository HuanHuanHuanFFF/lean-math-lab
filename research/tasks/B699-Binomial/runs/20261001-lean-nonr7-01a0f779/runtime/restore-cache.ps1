param([Parameter(Mandatory=$true)][string[]]$Modules,[string]$Label='focused-cache')
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$runtime=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime'
$config=Get-Content -LiteralPath (Join-Path $runtime 'environment.json') -Raw|ConvertFrom-Json
$cacheMain=Join-Path $repo '.lake/packages/mathlib/Cache/Main.lean'
$cacheArgs=@('-j1','-M768','-DElab.async=false','--run',$cacheMain,'get','--repo=leanprover-community/mathlib4','--cache-from=master,legacy')+@($Modules)
& (Join-Path $PSScriptRoot 'invoke-task.ps1') -Mode Command -Source '.lake/packages/mathlib/Cache/Main.lean' -Executable $config.leanExe -Arguments $cacheArgs -WorkingDirectory (Join-Path $runtime 'packages/mathlib') -Label $Label -TimeoutSeconds 300
exit $LASTEXITCODE
