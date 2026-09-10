[CmdletBinding()]
param(
  [string]$Lean,
  [string]$PackageRoot,
  [string]$Python = 'python',
  [string[]]$BaseEvidence = @(),
  [int]$MemoryMb = 1280,
  [int]$TimeoutSeconds = 180
)
$ErrorActionPreference='Stop'
$b699RunRoot=Split-Path -Parent $PSScriptRoot
$b699ProjectRoot=$b699RunRoot
while (-not (Test-Path -LiteralPath (Join-Path $b699ProjectRoot 'lean-toolchain'))) {
  $b699Next=Split-Path -Parent $b699ProjectRoot
  if ($b699Next -eq $b699ProjectRoot -or [string]::IsNullOrEmpty($b699Next)) { throw 'Repository root not found' }
  $b699ProjectRoot=$b699Next
}
if ([string]::IsNullOrEmpty($Lean) -or [string]::IsNullOrEmpty($PackageRoot)) { throw 'Supply existing pinned Lean and package cache paths' }
Set-Location -LiteralPath $b699ProjectRoot
$b699RunRelative=[IO.Path]::GetRelativePath($b699ProjectRoot,$b699RunRoot).Replace([char]92,[char]47)
$b699Arguments=@('-u','-B',(Join-Path $PSScriptRoot 'runner/extend.py'),'--project-root','.','--lean',$Lean,'--package-root',$PackageRoot,'--root',"$b699RunRelative/lean/Acceptance.lean",'--memory-mb',"$MemoryMb",'--timeout',"$TimeoutSeconds")
foreach ($b699Base in $BaseEvidence) { $b699Arguments += @('--base-evidence',$b699Base) }
& $Python @b699Arguments
exit $LASTEXITCODE
