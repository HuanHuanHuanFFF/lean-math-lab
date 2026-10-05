param([ValidateSet('runtime')][string]$Owner='runtime',[switch]$IncludeCurrent)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$toolsRoot=Join-Path $repo '.tools/b699-lean-20261001-01a0f779'
$newRoot=[IO.Path]::GetFullPath((Join-Path $toolsRoot ('20261002-finite-retry-onehour/'+$Owner+'/objects')))
New-Item -ItemType Directory -Force -Path $newRoot|Out-Null
$receiptRoots=@((Join-Path $toolsRoot 'runtime/logs'),(Join-Path $toolsRoot '20261002-onehour/runtime/logs'))
if($IncludeCurrent){$receiptRoots+=Join-Path $toolsRoot '20261002-tail-twohour/runtime/logs'}
$allowedRoots=@((Join-Path $toolsRoot 'tail/objects'),(Join-Path $toolsRoot 'critical/objects'),(Join-Path $toolsRoot '20261002-onehour/tail/objects'),(Join-Path $toolsRoot '20261002-onehour/critical/objects'))
if($IncludeCurrent){$allowedRoots+=@((Join-Path $toolsRoot '20261002-tail-twohour/tail/objects'),(Join-Path $toolsRoot '20261002-tail-twohour/gap/objects'))}
$records=@();$seen=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
foreach($receiptRoot in $receiptRoots){
  foreach($f in Get-ChildItem -LiteralPath $receiptRoot -Filter receipt.json -Recurse -File){
    $r=Get-Content -LiteralPath $f.FullName -Raw|ConvertFrom-Json
    if($r.mode-ne'Lean'-or$r.status-ne'success'-or$r.exitCode-ne0-or-not$r.sourceUnchanged-or-not$r.object){continue}
    $obj=[IO.Path]::GetFullPath($r.object)
    $oldRoot=$allowedRoots|ForEach-Object{[IO.Path]::GetFullPath($_)}|Where-Object{$obj.StartsWith($_+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)}|Select-Object -First 1
    if(-not$oldRoot-or-not(Test-Path -LiteralPath $obj)-or-not(Test-Path -LiteralPath $r.source)){continue}
    if((Get-FileHash -LiteralPath $r.source -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.sourceSha256){continue}
    if((Get-FileHash -LiteralPath $obj -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.objectSha256){continue}
    $relative=[IO.Path]::GetRelativePath($oldRoot,$obj)
    if(-not$seen.Add($relative)){continue}
    $target=Join-Path $newRoot $relative
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target)|Out-Null
    $sidecars=@();$stem=$obj.Substring(0,$obj.Length-6)
    foreach($candidate in @($obj,($obj+'.private'),($obj+'.server'),($stem+'.ir'),($stem+'.ir.sig'),($stem+'.ilean'))){
      if(-not(Test-Path -LiteralPath $candidate)){continue}
      $dst=Join-Path $newRoot ([IO.Path]::GetRelativePath($oldRoot,$candidate))
      $hash=(Get-FileHash -LiteralPath $candidate -Algorithm SHA256).Hash.ToLowerInvariant()
      if(Test-Path -LiteralPath $dst){if((Get-FileHash -LiteralPath $dst -Algorithm SHA256).Hash.ToLowerInvariant()-ne$hash){throw ('Different existing object: '+$dst)}}
      else{Copy-Item -LiteralPath $candidate -Destination $dst}
      if((Get-FileHash -LiteralPath $dst -Algorithm SHA256).Hash.ToLowerInvariant()-ne$hash){throw 'Object copy hash mismatch'}
      $sidecars+=[pscustomobject]@{source=$candidate;target=$dst;sha256=$hash;bytes=(Get-Item -LiteralPath $candidate).Length}
    }
    $records+=[pscustomobject]@{source=$r.source;sourceSha256=$r.sourceSha256;oldReceipt=$f.FullName;oldReceiptSha256=(Get-FileHash -LiteralPath $f.FullName -Algorithm SHA256).Hash.ToLowerInvariant();oldObject=$obj;newObject=$target;objectSha256=$r.objectSha256;reusedNotRecompiled=$true;sidecars=$sidecars}
  }
}
$out=Join-Path $toolsRoot ('20261002-finite-retry-onehour/'+$Owner+'/object-reuse.json')
[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');owner=$Owner;root=$newRoot;copiedObjectCount=$records.Count;records=$records}|ConvertTo-Json -Depth 6|Set-Content -LiteralPath $out -Encoding utf8
[pscustomobject]@{owner=$Owner;objects=$records.Count;bytes=($records.sidecars.bytes|Measure-Object -Sum).Sum;root=$newRoot;receipt=$out}|ConvertTo-Json -Compress
