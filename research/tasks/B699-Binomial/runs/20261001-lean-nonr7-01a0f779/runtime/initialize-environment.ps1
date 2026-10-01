$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$runtime=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime'
$manifest=Get-Content -LiteralPath (Join-Path $repo 'lake-manifest.json') -Raw|ConvertFrom-Json
$records=@();$roots=@();$leanPaths=@()
foreach($package in $manifest.packages){
  $original=Join-Path $repo ('.lake/packages/'+$package.name)
  $actual=& git -c ('safe.directory='+$original.Replace('\','/')) -C $original rev-parse HEAD
  if($actual -ne $package.rev){throw ('Source pin mismatch: '+$package.name)}
  $mirror=Join-Path $runtime ('packages/'+$package.name)
  New-Item -ItemType Directory -Force -Path $mirror,(Join-Path $mirror '.lake')|Out-Null
  foreach($item in (Get-ChildItem -LiteralPath $original -Force)){
    if($item.Name -eq '.lake' -or $item.Name -eq '.git'){continue}
    $target=Join-Path $mirror $item.Name
    if(Test-Path -LiteralPath $target){continue}
    if($item.PSIsContainer){New-Item -ItemType Junction -Path $target -Target $item.FullName|Out-Null}
    else{Copy-Item -LiteralPath $item.FullName -Destination $target}
  }
  $build=Join-Path $mirror '.lake/build/lib/lean'
  New-Item -ItemType Directory -Force -Path $build|Out-Null
  $roots+=$mirror;$leanPaths+=$build
  $records+=[pscustomobject]@{name=$package.name;expectedRev=$package.rev;actualRev=$actual;originalSource=$original;sourceMirror=$mirror;build=$build}
}
$mathlibDeps=Join-Path $runtime 'packages/mathlib/.lake/packages'
New-Item -ItemType Directory -Force -Path $mathlibDeps|Out-Null
foreach($record in $records){
  if($record.name -eq 'mathlib'){continue}
  $alias=Join-Path $mathlibDeps $record.name
  if(-not(Test-Path -LiteralPath $alias)){New-Item -ItemType Junction -Path $alias -Target $record.sourceMirror|Out-Null}
}
$projectRoots=@(
  (Join-Path $runtime 'objects'),
  (Join-Path $repo '.tools/b699-lean-20261001-01a0f779/tail/objects'),
  (Join-Path $repo '.tools/b699-lean-20261001-01a0f779/critical/objects'))
foreach($path in $projectRoots){New-Item -ItemType Directory -Force -Path $path|Out-Null}
$config=[pscustomobject]@{
  leanExe=(Join-Path $runtime 'toolchain/bin/lean.exe');lakeExe=(Join-Path $runtime 'toolchain/bin/lake.exe')
  leanPath=(@($projectRoots)+@($leanPaths));sourceRoots=$roots
  cacheDir=(Join-Path $runtime 'cache');sourceBaseline='4d22485e20e509e33348b33e63f6902becbae414'
  manifestSha256=(Get-FileHash -LiteralPath (Join-Path $repo 'lake-manifest.json') -Algorithm SHA256).Hash.ToLowerInvariant()
  packages=$records
}
New-Item -ItemType Directory -Force -Path $config.cacheDir|Out-Null
$config|ConvertTo-Json -Depth 6|Set-Content -LiteralPath (Join-Path $runtime 'environment.json') -Encoding utf8
$config|ConvertTo-Json -Depth 6|Set-Content -LiteralPath (Join-Path $PSScriptRoot 'environment-receipt.json') -Encoding utf8
[pscustomobject]@{packageCount=$records.Count;leanExe=$config.leanExe;cacheDir=$config.cacheDir;leanPathCount=$config.leanPath.Count}|ConvertTo-Json
