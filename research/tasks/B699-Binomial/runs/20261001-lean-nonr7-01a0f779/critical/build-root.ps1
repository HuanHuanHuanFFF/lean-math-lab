[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)][string]$Root,
  [int]$TimeoutSeconds=300,
  [int]$MemoryMiB=3132,
  [int]$TreeMemoryMiB=1536,
  [int]$MinimumAvailableMiB=2560,
  [int]$PhysicalReserveMiB=900,
  [int]$MinimumAvailableCommitMiB=4096,
  [string]$PlanFile
)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$runRoot=Join-Path $repo 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779'
$controller=Join-Path $runRoot 'runtime/invoke-task.ps1'
$outputRoot=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/critical/objects'
$ownTool=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/critical'
New-Item -ItemType Directory -Force -Path $ownTool | Out-Null
$seen=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
$visiting=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
$ordered=[Collections.Generic.List[string]]::new()
function Visit-Source([string]$path) {
  $abs=if([IO.Path]::IsPathRooted($path)){[IO.Path]::GetFullPath($path)}else{[IO.Path]::GetFullPath((Join-Path $repo $path))}
  if($seen.Contains($abs)){return}
  if(-not $visiting.Add($abs)){throw "Project import cycle: $abs"}
  if(-not (Test-Path -LiteralPath $abs)){throw "Missing project source: $abs"}
  foreach($line in [IO.File]::ReadAllLines($abs)) {
    if($line -match '^import\s+(.+)$') {
      $module=$Matches[1].Trim()
      if($module -match '^(Mathlib|Lean|Std|Batteries|Aesop|Qq|Plausible|ProofWidgets|ImportGraph|LeanSearchClient)\.') {continue}
      if($module -in @('Mathlib','Lean','Std','Batteries','Aesop','Qq','Plausible','ProofWidgets','ImportGraph','LeanSearchClient')) {continue}
      Visit-Source ($module.Replace('«','').Replace('»','').Replace('.','/')+'.lean')
    }
  }
  [void]$visiting.Remove($abs);[void]$seen.Add($abs);$ordered.Add($abs)
}
Visit-Source $Root
if($PlanFile) {
  [pscustomobject]@{root=$Root;orderedSources=$ordered.ToArray();sourceCount=$ordered.Count;executedLean=$false}|ConvertTo-Json -Depth 4|Set-Content -LiteralPath $PlanFile -Encoding utf8
  [pscustomobject]@{sourceCount=$ordered.Count;plan=$PlanFile;executedLean=$false}|ConvertTo-Json
  exit 0
}
$runId=[DateTime]::UtcNow.ToString('yyyyMMddTHHmmssfffZ')
$statePath=Join-Path $ownTool ($runId+'-build.json')
$records=[Collections.Generic.List[object]]::new()
function Sync-Object([string]$source,[string]$object) {
  $relative=[IO.Path]::GetRelativePath($repo,$source)
  $target=Join-Path $outputRoot ([IO.Path]::ChangeExtension($relative,'.olean'))
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target)|Out-Null
  $originStem=$object.Substring(0,$object.Length-6)
  $targetStem=$target.Substring(0,$target.Length-6)
  $files=@()
  foreach($suffix in @('.olean','.olean.private','.olean.server','.ilean','.ir')) {
    $origin=$originStem+$suffix;$local=$targetStem+$suffix
    if(-not (Test-Path -LiteralPath $origin)){continue}
    if($origin -ne $local){[IO.File]::Copy($origin,$local,$true)}
    $sha=(Get-FileHash -LiteralPath $local -Algorithm SHA256).Hash.ToLowerInvariant()
    if($sha -ne (Get-FileHash -LiteralPath $origin -Algorithm SHA256).Hash.ToLowerInvariant()){throw "Object copy hash mismatch: $local"}
    $files+=@{path=$local;sha256=$sha;origin=$origin}
  }
  return $files
}
$cachedReceipts=@{}
foreach($receiptFile in Get-ChildItem -LiteralPath (Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime/logs') -Filter 'receipt.json' -Recurse -File -ErrorAction SilentlyContinue) {
  $receipt=Get-Content -LiteralPath $receiptFile.FullName -Raw | ConvertFrom-Json
  if($receipt.mode -eq 'Lean' -and $receipt.status -eq 'success' -and $receipt.exitCode -eq 0 -and $receipt.sourceUnchanged -and $receipt.object -and (Test-Path -LiteralPath $receipt.object)) {
    $cachedReceipts[$receipt.source]=@{path=$receiptFile.FullName;receipt=$receipt}
  }
}
$state=[ordered]@{root=$Root;startUtc=[DateTime]::UtcNow.ToString('o');status='running';orderedSources=$ordered.ToArray();records=$records;fixedBaseline='4d22485e20e509e33348b33e63f6902becbae414';controller=$controller}
foreach($source in $ordered) {
  $sha=(Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash.ToLowerInvariant()
  $cache=$cachedReceipts[$source]
  if($cache -and $cache.receipt.sourceSha256 -eq $sha -and (Get-FileHash -LiteralPath $cache.receipt.object -Algorithm SHA256).Hash.ToLowerInvariant() -eq $cache.receipt.objectSha256) {
    $localObjects=@(Sync-Object $source $cache.receipt.object)
    $records.Add([pscustomobject]@{source=$source;sourceSha256=$sha;receipt=$cache.path;reused=$true;objectFiles=$localObjects})
    continue
  }
  $relative=[IO.Path]::GetRelativePath($repo,$source)
  $label='critical-'+([IO.Path]::GetFileNameWithoutExtension($source))
  $state.currentSource=$relative
  $state|ConvertTo-Json -Depth 10|Set-Content -LiteralPath $statePath -Encoding utf8
  $resultText=& pwsh -NoProfile -File $controller -Mode Lean -Source $relative -OutputRoot $outputRoot -Label $label -TimeoutSeconds $TimeoutSeconds -MemoryMiB $MemoryMiB -TreeMemoryMiB $TreeMemoryMiB -MinimumAvailableMiB $MinimumAvailableMiB -PhysicalReserveMiB $PhysicalReserveMiB -MinimumAvailableCommitMiB $MinimumAvailableCommitMiB
  $exit=$LASTEXITCODE
  $result=($resultText -join "`n")|ConvertFrom-Json
  $localObjects=if($exit -eq 0 -and $result.status -eq 'success'){@(Sync-Object $source $result.object)}else{@()}
  $records.Add([pscustomobject]@{source=$source;sourceSha256=$sha;receipt=$result.receipt;reused=$false;status=$result.status;exitCode=$exit;objectFiles=$localObjects})
  $state|ConvertTo-Json -Depth 10|Set-Content -LiteralPath $statePath -Encoding utf8
  if($exit -ne 0 -or $result.status -ne 'success') {
    $state.status='failed';$state.endUtc=[DateTime]::UtcNow.ToString('o')
    $state|ConvertTo-Json -Depth 10|Set-Content -LiteralPath $statePath -Encoding utf8
    [pscustomobject]@{status='failed';source=$relative;receipt=$result.receipt;buildRecord=$statePath}|ConvertTo-Json
    if($result.stdout -and (Test-Path -LiteralPath $result.stdout)) {
      $bytes=[IO.File]::ReadAllBytes($result.stdout)
      [Text.Encoding]::UTF8.GetString($bytes,0,[math]::Min($bytes.Length,8000))
    }
    exit 1
  }
  [pscustomobject]@{source=$relative;status=$result.status;seconds=$result.wallSeconds;peakTreeWorkingSetMiB=$result.peakTreeWorkingSetMiB;receipt=$result.receipt}|ConvertTo-Json -Compress
}
$state.status='success';$state.endUtc=[DateTime]::UtcNow.ToString('o')
$state|ConvertTo-Json -Depth 10|Set-Content -LiteralPath $statePath -Encoding utf8
[pscustomobject]@{status='success';sources=$ordered.Count;buildRecord=$statePath}|ConvertTo-Json
