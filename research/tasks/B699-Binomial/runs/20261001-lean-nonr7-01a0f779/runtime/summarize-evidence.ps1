$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$runtime=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime'
$items=@()
foreach($file in (Get-ChildItem -LiteralPath (Join-Path $runtime 'logs') -Filter 'receipt.json' -Recurse -File)){
  $raw=Get-Content -LiteralPath $file.FullName -Raw|ConvertFrom-Json
  $bound=[ordered]@{}
  foreach($kind in @('stdout','stderr','sourceSnapshot')){
    $path=$raw.$kind
    if($path -and (Test-Path -LiteralPath $path)){
      $sha=if($raw.status -eq 'running' -and $kind -ne 'sourceSnapshot'){$null}else{(Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()}
      $bound[$kind]=[pscustomobject]@{path=$path;bytes=(Get-Item -LiteralPath $path).Length;sha256=$sha;pendingLiveLogHash=($null-eq$sha)}
    }
  }
  $items+=[pscustomobject]@{
    runId=$raw.runId;mode=$raw.mode;status=$raw.status;exitCode=$raw.exitCode;stopReason=$raw.stopReason
    source=$raw.source;sourceSha256=$raw.sourceSha256;sourceUnchanged=$raw.sourceUnchanged
    executable=$raw.executable;arguments=$raw.arguments;startUtc=$raw.startUtc;endUtc=$raw.endUtc;wallSeconds=$raw.wallSeconds
    peakTreeWorkingSetBytes=$raw.peakTreeWorkingSetBytes;peakRootWorkingSetBytes=$raw.peakWorkingSetBytes
    peakTreeCommittedBytes=$raw.peakTreeCommittedBytes;actualJobFlags=$raw.actualJobFlags
    actualJobCommittedLimitBytes=$raw.actualJobCommittedLimitBytes;actualProcessCommittedLimitBytes=$raw.actualProcessCommittedLimitBytes
    controllerSha256=$raw.controllerSha256;effectiveLeanPath=$raw.effectiveLeanPath
    receipt=[IO.Path]::GetRelativePath($repo,$file.FullName);receiptSha256=(Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    object=$raw.object;objectSha256=$raw.objectSha256;byteBindings=[pscustomobject]$bound
  }
}
$summary=[pscustomobject]@{
  utc=[DateTime]::UtcNow.ToString('o');sourceBaseline='4d22485e20e509e33348b33e63f6902becbae414'
  hardDeadlineUtc='2026-10-01T15:42:09Z';recordCount=$items.Count
  counts=@($items|Group-Object status|ForEach-Object{[pscustomobject]@{status=$_.Name;count=$_.Count}})
  caveat='Runtime receipts preserve actual runs; success alone is not original-problem acceptance. Old running receipts from wrapper Int32 exceptions are explicitly unaccepted.'
  receipts=$items
}
$target=Join-Path $PSScriptRoot 'evidence-index.json'
$summary|ConvertTo-Json -Depth 9|Set-Content -LiteralPath $target -Encoding utf8
[pscustomobject]@{recordCount=$items.Count;counts=$summary.counts;path=$target;bytes=(Get-Item -LiteralPath $target).Length}|ConvertTo-Json -Depth 4
