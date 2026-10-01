param([Parameter(Mandatory=$true)][ValidateSet('tail','critical')][string]$Owner)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$oldTools=Join-Path $repo '.tools/b699-lean-20261001-01a0f779'
$oldRoot=[IO.Path]::GetFullPath((Join-Path $oldTools ($Owner+'/objects')))
$newRoot=[IO.Path]::GetFullPath((Join-Path $oldTools ('20261002-onehour/'+$Owner+'/objects')))
New-Item -ItemType Directory -Force -Path $newRoot|Out-Null
$records=@();$seen=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
foreach($receiptFile in Get-ChildItem -LiteralPath (Join-Path $oldTools 'runtime/logs') -Filter 'receipt.json' -Recurse -File){
  $r=Get-Content -LiteralPath $receiptFile.FullName -Raw|ConvertFrom-Json
  if($r.mode-ne'Lean'-or$r.status-ne'success'-or$r.exitCode-ne0-or-not$r.sourceUnchanged-or-not$r.object){continue}
  $obj=[IO.Path]::GetFullPath($r.object)
  if(-not$obj.StartsWith($oldRoot+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)){continue}
  if(-not(Test-Path -LiteralPath $obj)-or-not(Test-Path -LiteralPath $r.source)){continue}
  if((Get-FileHash -LiteralPath $r.source -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.sourceSha256){continue}
  if((Get-FileHash -LiteralPath $obj -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.objectSha256){continue}
  if(-not$seen.Add($obj)){continue}
  $relative=[IO.Path]::GetRelativePath($oldRoot,$obj)
  $target=Join-Path $newRoot $relative
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target)|Out-Null
  $sidecars=@()
  $stem=$obj.Substring(0,$obj.Length-6)
  foreach($candidate in @($obj,($obj+'.private'),($obj+'.server'),($stem+'.ir'),($stem+'.ir.sig'),($stem+'.ilean'))){
    if(-not(Test-Path -LiteralPath $candidate)){continue}
    $rel=[IO.Path]::GetRelativePath($oldRoot,$candidate);$dst=Join-Path $newRoot $rel
    $hash=(Get-FileHash -LiteralPath $candidate -Algorithm SHA256).Hash.ToLowerInvariant()
    if(Test-Path -LiteralPath $dst){if((Get-FileHash -LiteralPath $dst -Algorithm SHA256).Hash.ToLowerInvariant()-ne$hash){throw ('Different existing object: '+$dst)}}
    else{Copy-Item -LiteralPath $candidate -Destination $dst}
    if((Get-FileHash -LiteralPath $dst -Algorithm SHA256).Hash.ToLowerInvariant()-ne$hash){throw 'Object copy hash mismatch'}
    $sidecars+=[pscustomobject]@{source=$candidate;target=$dst;sha256=$hash;bytes=(Get-Item -LiteralPath $candidate).Length}
  }
  $records+=[pscustomobject]@{source=$r.source;sourceSha256=$r.sourceSha256;oldReceipt=$receiptFile.FullName;oldReceiptSha256=(Get-FileHash -LiteralPath $receiptFile.FullName -Algorithm SHA256).Hash.ToLowerInvariant();oldObject=$obj;newObject=$target;objectSha256=$r.objectSha256;reusedNotRecompiled=$true;sidecars=$sidecars}
}
$out=Join-Path $oldTools ('20261002-onehour/'+$Owner+'/object-reuse.json')
[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');owner=$Owner;root=$newRoot;copiedObjectCount=$records.Count;records=$records}|ConvertTo-Json -Depth 6|Set-Content -LiteralPath $out -Encoding utf8
[pscustomobject]@{owner=$Owner;objects=$records.Count;root=$newRoot;receipt=$out}|ConvertTo-Json
