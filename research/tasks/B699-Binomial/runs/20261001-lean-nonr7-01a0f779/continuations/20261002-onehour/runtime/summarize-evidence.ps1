$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$runtime=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-onehour/runtime'
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
    childStarted=if($null -ne $raw.childStarted){$raw.childStarted}else{$null -ne $raw.ownedPid}
    ownedPid=$raw.ownedPid;ownedProcessStartUtc=$raw.ownedProcessStartUtc;controllerPid=$raw.controllerPid
    wrapperExitCode=$raw.wrapperExitCode;leanExitCode=$raw.leanExitCode
    plannedExecutable=$raw.plannedExecutable;plannedArguments=$raw.plannedArguments
    source=$raw.source;sourceSha256=$raw.sourceSha256;sourceUnchanged=$raw.sourceUnchanged
    executable=$raw.executable;arguments=$raw.arguments;startUtc=$raw.startUtc;endUtc=$raw.endUtc;wallSeconds=$raw.wallSeconds
    peakTreeWorkingSetBytes=$raw.peakTreeWorkingSetBytes;peakRootWorkingSetBytes=$raw.peakWorkingSetBytes
    peakTreeCommittedBytes=$raw.peakTreeCommittedBytes;actualJobFlags=$raw.actualJobFlags
    actualJobCommittedLimitBytes=$raw.actualJobCommittedLimitBytes;actualProcessCommittedLimitBytes=$raw.actualProcessCommittedLimitBytes
    controllerSha256=$raw.controllerSha256;controllerSnapshot=$raw.controllerSnapshot;effectiveLeanPath=$raw.effectiveLeanPath
    leanMemoryMiB=$raw.leanMemoryMiB;treeMemoryMiB=$raw.treeMemoryMiB;minimumAvailableMiB=$raw.minimumAvailableMiB
    minimumAvailableCommitMiB=$raw.minimumAvailableCommitMiB;physicalReserveMiB=$raw.physicalReserveMiB
    physicalAvailableBeforeBytes=$raw.physicalAvailableBeforeBytes;physicalAvailableAfterBytes=$raw.physicalAvailableAfterBytes
    minimumObservedAvailablePhysicalBytes=$raw.minimumObservedAvailablePhysicalBytes
    controlWorkingSetBeforeBytes=$raw.controlWorkingSetBeforeBytes;controlPeakWorkingSetBytes=$raw.controlPeakWorkingSetBytes
    dBeforeBytes=$raw.dBeforeBytes;dAfterBytes=$raw.dAfterBytes
    receipt=[IO.Path]::GetRelativePath($repo,$file.FullName);receiptSha256=(Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    object=$raw.object;objectSha256=$raw.objectSha256;byteBindings=[pscustomobject]$bound
  }
}
$summary=[pscustomobject]@{
  utc=[DateTime]::UtcNow.ToString('o');sourceBaseline='4e3bbbc7a68d3132a7f1d89d51a0e57e59096cd2'
  hardDeadlineUtc='2026-10-01T17:04:43Z';recordCount=$items.Count
  counts=@($items|Group-Object status|ForEach-Object{[pscustomobject]@{status=$_.Name;count=$_.Count}})
  caveat='Runtime receipts preserve actual runs; success alone is not original-problem acceptance. Preflight rejections have childStarted=false and no actual Lean exit; planned commands are not actual executions. Frozen prior-run objects are separately identified by consumers.'
  missingReceiptDirectories=@(Get-ChildItem -LiteralPath (Join-Path $runtime 'logs') -Directory|Where-Object {-not(Test-Path -LiteralPath (Join-Path $_.FullName 'receipt.json'))}|ForEach-Object {[pscustomobject]@{runId=$_.Name;path=[IO.Path]::GetRelativePath($repo,$_.FullName);status='no runtime receipt; consult worker waiting/tool exception evidence; no successful run asserted'}})
  receipts=$items
}
$target=Join-Path $PSScriptRoot 'evidence-index.json'
$summary|ConvertTo-Json -Depth 9|Set-Content -LiteralPath $target -Encoding utf8
[pscustomobject]@{recordCount=$items.Count;counts=$summary.counts;path=$target;bytes=(Get-Item -LiteralPath $target).Length}|ConvertTo-Json -Depth 4

