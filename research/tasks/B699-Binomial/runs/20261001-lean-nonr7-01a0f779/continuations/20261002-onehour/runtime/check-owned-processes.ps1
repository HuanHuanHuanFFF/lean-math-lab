[CmdletBinding()]
param([switch]$StopAtDeadline)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$tool=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-onehour/runtime'
$deadline=[DateTimeOffset]::Parse('2026-10-01T17:04:43Z').UtcDateTime
if($StopAtDeadline -and [DateTime]::UtcNow -lt $deadline){throw 'Deadline stop is not yet due'}
$owned=@(); $live=@(); $terminated=@(); $reused=@()
foreach($f in Get-ChildItem -LiteralPath (Join-Path $tool 'logs') -Recurse -File -Filter receipt.json){
  $x=Get-Content -LiteralPath $f.FullName -Raw|ConvertFrom-Json
  if(-not $x.ownedPid){continue}
  $v=[ordered]@{pid=[int]$x.ownedPid;runId=$x.runId;startUtc=$x.startUtc;executable=$x.executable;receipt=[IO.Path]::GetRelativePath($repo,$f.FullName)}
  $owned+=[pscustomobject]$v
  $p=Get-Process -Id $v.pid -ErrorAction SilentlyContinue
  if(-not $p){continue}
  $startText=if($x.ownedProcessStartUtc){$x.ownedProcessStartUtc}else{$x.startUtc}
  $start=if($startText -is [DateTime]){$startText.ToUniversalTime()}elseif($startText -is [DateTimeOffset]){$startText.UtcDateTime}else{[DateTimeOffset]::Parse($startText).UtcDateTime}
  $timeDelta=($p.StartTime.ToUniversalTime()-$start).TotalSeconds
  $sameStart=[Math]::Abs($timeDelta) -lt 3
  $sameExe=$p.Path -and [string]::Equals([IO.Path]::GetFullPath($p.Path),[IO.Path]::GetFullPath($x.executable),[StringComparison]::OrdinalIgnoreCase)
  if(-not($sameStart -and $sameExe)){$reused+=[pscustomobject]@{pid=$v.pid;runId=$v.runId;reason='current process identity unconfirmed; not touched';actualStartUtc=$p.StartTime.ToUniversalTime().ToString('o');startDeltaSeconds=$timeDelta;observedPath=$p.Path};continue}
  if($StopAtDeadline){$p.Kill($true);$null=$p.WaitForExit(2000);$terminated+=$v;continue}
  $live+=[pscustomobject]$v
}
$lockPath=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime/compile.lock'
$lockFree=$false
try{$l=[IO.FileStream]::new($lockPath,[IO.FileMode]::OpenOrCreate,[IO.FileAccess]::ReadWrite,[IO.FileShare]::None);$lockFree=$true;$l.Dispose()}catch [IO.IOException]{}
$resourceText=(& (Join-Path $PSScriptRoot 'resources.ps1')) -join "`n"
$resources=$resourceText|ConvertFrom-Json
$result=[pscustomobject]@{
  utc=[DateTime]::UtcNow.ToString('o');deadlineUtc=$deadline.ToString('o');deadlineStop=[bool]$StopAtDeadline
  ownedCount=$owned.Count;owned=$owned;liveOwned=$live;terminated=$terminated;pidReuseIgnored=$reused
  globalLockFree=$lockFree;resources=$resources
  actionScope='Only receipt-bound process identities for this continuation; no unrelated processes stopped.'
}
$name=if($StopAtDeadline){'stop-receipt.json'}else{'owned-process-checkpoint.json'}
$result|ConvertTo-Json -Depth 7|Set-Content -LiteralPath (Join-Path $PSScriptRoot $name) -Encoding utf8
[pscustomobject]@{utc=$result.utc;ownedCount=$owned.Count;liveOwnedCount=$live.Count;terminatedCount=$terminated.Count;lockFree=$lockFree;physicalAvailableGiB=$resources.physicalAvailableGiB;dFreeGiB=$resources.dFreeGiB}|ConvertTo-Json -Compress
