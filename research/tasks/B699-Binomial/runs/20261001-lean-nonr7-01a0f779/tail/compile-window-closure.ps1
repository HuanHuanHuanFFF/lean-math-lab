$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
Set-Location -LiteralPath $repo
$plan=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'historical-window-closure.json') -Raw|ConvertFrom-Json
$runner='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/runtime/invoke-task.ps1'
$output='.tools/b699-lean-20261001-01a0f779/tail/objects'
$criterionReceipt=Get-Content -LiteralPath '.tools/b699-lean-20261001-01a0f779/runtime/logs/20261001T143956592Z-tail-window-dep-criterion/receipt.json' -Raw|ConvertFrom-Json
if($criterionReceipt.status -ne 'success' -or $criterionReceipt.exitCode -ne 0){throw 'Required criterion did not compile'}
if((Get-FileHash -LiteralPath $criterionReceipt.object -Algorithm SHA256).Hash.ToLowerInvariant() -ne $criterionReceipt.objectSha256){throw 'Criterion object drift'}
$index=0
foreach($entry in $plan.projectCompilationOrder){
  if((Get-FileHash -LiteralPath $entry.path -Algorithm SHA256).Hash.ToLowerInvariant() -ne $entry.sha256){throw "Fixed historical source drift: $($entry.path)"}
  if($index -eq 0){$index++;continue}
  & pwsh -NoProfile -File $runner -Source $entry.path -OutputRoot $output -Label ("tail-window-dep-"+$index) -TimeoutSeconds 300 -TreeMemoryMiB 1536 -MemoryMiB 3132 -MinimumAvailableMiB 2560 -PhysicalReserveMiB 900 -MinimumAvailableCommitMiB 4096
  if($LASTEXITCODE -ne 0){throw "Controlled compilation failed at $($entry.path)"}
  $index++
}
Write-Output 'Fixed seven-source window closure compiled; mathematical consumers remain separately audited.'
