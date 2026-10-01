$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$runner=Join-Path $PSScriptRoot 'invoke-task.ps1'
$pwsh=(Get-Process -Id $PID).Path
$sequence=@(
  @{package='batteries';module='Batteries/Tactic/OpenPrivate'},
  @{package='mathlib';module='Cache/Lean'},
  @{package='mathlib';module='Cache/Cli'},
  @{package='mathlib';module='Cache/Infra'},
  @{package='mathlib';module='Cache/IO'},
  @{package='mathlib';module='Cache/Hashing'},
  @{package='mathlib';module='Cache/Requests'},
  @{package='mathlib';module='Cache/Marker'},
  @{package='mathlib';module='Cache/Query'},
  @{package='mathlib';module='Cache/Warning'})
foreach($entry in $sequence){
  $source='.lake/packages/'+$entry.package+'/'+$entry.module+'.lean'
  $out='.tools/b699-lean-20261001-01a0f779/runtime/packages/'+$entry.package+'/.lake/build/lib/lean'
  & $pwsh -NoProfile -File $runner -Source $source -SourceRoot ('.lake/packages/'+$entry.package) -OutputRoot $out -Label ('bootstrap-'+($entry.module -replace '/','-')) -TimeoutSeconds 120
  if($LASTEXITCODE -ne 0){throw ('Bootstrap failed: '+$source)}
}
