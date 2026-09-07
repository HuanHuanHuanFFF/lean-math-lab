[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$taskDir = $PSScriptRoot
$repoDir = (Resolve-Path -LiteralPath (Join-Path $taskDir '../../../../../')).Path
$lakeScript = Join-Path $repoDir 'scripts/lake.ps1'
$source = Join-Path $taskDir 'LinearPrimeCounting.lean'
$object = Join-Path $taskDir 'LinearPrimeCounting.olean'
$out = @(& $lakeScript -LakeArgs @('env', 'lean', "--root=$taskDir", '-o', $object, $source) 2>&1)
$code = $LASTEXITCODE
$out | Set-Content -LiteralPath (Join-Path $taskDir 'LinearPrimeCounting.log') -Encoding utf8
if ($code -ne 0) { throw "LinearPrimeCounting failed: $($out -join [Environment]::NewLine)" }
Write-Output 'LinearPrimeCounting: compiled, all four exact axiom guards passed.'
$basePath = @(& $lakeScript env 'C:/Python314/python.exe' -c 'import os; print(os.environ.get("LEAN_PATH", ""))') -join ''
if ($LASTEXITCODE -ne 0) { throw 'Cannot obtain configured Lean search path.' }
$env:LEAN_PATH = $taskDir + [IO.Path]::PathSeparator + $basePath
$leanExe = Join-Path $repoDir '.tools/elan/bin/lean.exe'
$consumer = Join-Path $taskDir 'Consumer.lean'
$out = @(& $leanExe "--root=$taskDir" $consumer 2>&1)
$code = $LASTEXITCODE
$out | Set-Content -LiteralPath (Join-Path $taskDir 'Consumer.log') -Encoding utf8
if ($code -ne 0) { throw "Consumer failed: $($out -join [Environment]::NewLine)" }
Write-Output 'Consumer: imported the compiled theorem and passed its axiom guard.'

