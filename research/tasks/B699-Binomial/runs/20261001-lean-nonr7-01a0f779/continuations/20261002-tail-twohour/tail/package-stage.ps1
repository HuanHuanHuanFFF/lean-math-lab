[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)][string[]]$Receipts,
  [Parameter(Mandatory=$true)][string]$Stage,
  [Parameter(Mandatory=$true)][string]$Scope
)
$ErrorActionPreference='Stop'
$tailRoot=$PSScriptRoot
$dest=Join-Path $tailRoot ('verification/'+$Stage)
if(Test-Path -LiteralPath (Join-Path $dest 'stage-manifest.json')){throw 'Stage already frozen; choose a fresh stage id'}
New-Item -ItemType Directory -Force -Path $dest | Out-Null
& (Join-Path $tailRoot 'audit-receipts.ps1') -Receipts $Receipts -Output (Join-Path $dest 'evidence.json')
$sources=@()
$runs=@()
foreach($rp in $Receipts){
  $r=Get-Content -LiteralPath $rp -Raw|ConvertFrom-Json
  $runDir=Join-Path $dest $r.runId
  New-Item -ItemType Directory -Force -Path $runDir|Out-Null
  Copy-Item -LiteralPath $rp -Destination (Join-Path $runDir 'receipt.json')
  Copy-Item -LiteralPath $r.stdout -Destination (Join-Path $runDir 'stdout.log')
  Copy-Item -LiteralPath $r.stderr -Destination (Join-Path $runDir 'stderr.log')
  Copy-Item -LiteralPath $r.sourceSnapshot -Destination (Join-Path $runDir 'source.snapshot.lean')
  Copy-Item -LiteralPath $r.controllerSnapshot -Destination (Join-Path $runDir 'controller.snapshot.ps1')
  $sources+=$r.source
  $runs+=[ordered]@{runId=$r.runId;source=$r.source;sourceSha256=$r.sourceSha256;object=$r.object;objectSha256=$r.objectSha256;actualExecutable=$r.executable;actualArguments=$r.arguments;actualExitCode=$r.exitCode;wallSeconds=$r.wallSeconds;peakTreeWorkingSetBytes=$r.peakTreeWorkingSetBytes;rawReceipt=($Stage+'/'+$r.runId+'/receipt.json')}
}
$base=(Resolve-Path -LiteralPath $tailRoot).Path
$paths=@($sources|Select-Object -Unique)+@(Get-ChildItem -LiteralPath $dest -Recurse -File|ForEach-Object{$_.FullName})
$members=@($paths|ForEach-Object{$f=Get-Item -LiteralPath $_;[ordered]@{path=$f.FullName.Substring($base.Length+1).Replace('\','/');bytes=$f.Length;sha256=(Get-FileHash -LiteralPath $f.FullName -Algorithm SHA256).Hash.ToLowerInvariant()}})
$manifest=Join-Path $dest 'stage-manifest.json'
[ordered]@{stage=$Stage;scope=$Scope;executor='tail_verify';acceptedByExecutor=$true;independentReview='pending';utc=[DateTime]::UtcNow.ToString('o');runs=$runs;members=$members}|ConvertTo-Json -Depth 14|Set-Content -LiteralPath $manifest -Encoding utf8NoBOM
[ordered]@{manifest=$manifest;manifestSha256=(Get-FileHash -LiteralPath $manifest -Algorithm SHA256).Hash.ToLowerInvariant();runs=$runs.Count;members=$members.Count}|ConvertTo-Json -Depth 4
