$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$mapPath=Join-Path (Split-Path $PSScriptRoot) 'gap/normnum-prime-leaf-object-map.json'
$map=@(Get-Content -Raw $mapPath|ConvertFrom-Json)
$source=Join-Path $repo '.lake/packages/mathlib/Mathlib/Tactic/NormNum/Prime.lean'
if((Get-FileHash $source -Algorithm SHA256).Hash.ToLowerInvariant()-ne'd49b3419be815ca4eb4cc35a38a6ca9f56769daf54fb7fcb1a0cb554ff6d4460'){throw 'Fixed source hash mismatch'}
$base=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-tail-twohour/gap/leaf-build/Mathlib/Tactic/NormNum'
$dest=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime/packages/mathlib/.lake/build/lib/lean/Mathlib/Tactic/NormNum'
$out=@()
foreach($v in $map){
  $p=[IO.Path]::GetFullPath($v.path)
  if(-not$p.StartsWith([IO.Path]::GetFullPath($base)+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)){throw 'Leaf artifact path outside fixed build directory'}
  $name=[IO.Path]::GetFileName($p);if($name-notin@('Prime.olean','Prime.olean.private','Prime.olean.server','Prime.ir','Prime.ir.sig')){throw 'Unexpected artifact'}
  if((Get-FileHash $p -Algorithm SHA256).Hash.ToLowerInvariant()-ne$v.sha256){throw 'Leaf output hash differs'}
  $target=Join-Path $dest $name
  if(Test-Path -LiteralPath $target){if((Get-FileHash $target -Algorithm SHA256).Hash.ToLowerInvariant()-ne$v.sha256){throw 'Refuse overwriting a different existing cache object'}}else{Copy-Item -LiteralPath $p -Destination $target}
  if((Get-FileHash $target -Algorithm SHA256).Hash.ToLowerInvariant()-ne$v.sha256){throw 'Installed leaf hash differs'}
  $out+=[pscustomobject]@{origin=$p;target=$target;bytes=$v.bytes;sha256=$v.sha256}
}
[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');source=$source;sourceSha256='d49b3419be815ca4eb4cc35a38a6ca9f56769daf54fb7fcb1a0cb554ff6d4460';status='fixed single source-built leaf connected; no large cache/download';bytes=($out.bytes|Measure-Object -Sum).Sum;artifacts=$out}|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $PSScriptRoot 'prime-leaf-install-receipt.json') -Encoding utf8
'Fixed NormNum.Prime leaf objects installed'
