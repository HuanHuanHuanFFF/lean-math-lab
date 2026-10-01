$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$logs=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-tail-twohour/runtime/logs'
$known=@{}
foreach($f in Get-ChildItem $logs -Filter receipt.json -Recurse -File){
  $r=Get-Content -Raw $f.FullName|ConvertFrom-Json
  if($r.ownedPid){$known[[string]$r.ownedPid]=[pscustomobject]@{role='current-round-child';time=if($r.ownedProcessStartUtc){$r.ownedProcessStartUtc}else{$r.startUtc};runId=$r.runId}}
  if($r.controllerPid){$known[[string]$r.controllerPid]=[pscustomobject]@{role='current-round-controller';time=$r.controllerProcessStartUtc;runId=$r.runId}}
}
$first=@{};foreach($p in Get-Process){try{$first[[string]$p.Id]=$p.TotalProcessorTime.TotalSeconds}catch{}}
$sample=(& (Join-Path $PSScriptRoot 'resources.ps1') -SampleMs 500) -join "`n"
$resource=$sample|ConvertFrom-Json
$rows=@()
foreach($p in Get-Process){
  try{
    $path=$null;$start=$null;try{$path=$p.Path;$start=$p.StartTime.ToUniversalTime()}catch{}
    $role='unclassified-process';$matched=$false
    if($known.ContainsKey([string]$p.Id)-and$start){
      $v=$known[[string]$p.Id];$t=if($v.time-is[DateTime]){$v.time.ToUniversalTime()}elseif($v.time-is[DateTimeOffset]){$v.time.UtcDateTime}else{[DateTimeOffset]::Parse($v.time).UtcDateTime}
      if([Math]::Abs(($start-$t).TotalSeconds)-lt3){$role=$v.role;$matched=$true}
    }
    if($p.Id-eq$PID){$role='this-readonly-diagnostic';$matched=$true}
    elseif(-not$matched-and$p.ProcessName-match'^(lean|lake|leanchecker|python.*|pwsh|powershell)$'){$role='unbound-tool-process; current/other task not established'}
    elseif(-not$matched-and$p.ProcessName-match'^(Codex|chrome|msedge|Code|Rider|idea64|steam|OneDrive|svchost|MsMpEng|System|Memory Compression|dwm|explorer|SearchIndexer|vmmem.*)$'){$role='desktop-or-service-by-name; no task ownership inferred'}
    $cpu=$p.TotalProcessorTime.TotalSeconds;$delta=if($first.ContainsKey([string]$p.Id)){$cpu-$first[[string]$p.Id]}else{$null}
    $rows+=[pscustomobject]@{pid=$p.Id;name=$p.ProcessName;workingSetMiB=[Math]::Round($p.WorkingSet64/1MB,2);privateCommittedMiB=[Math]::Round($p.PrivateMemorySize64/1MB,2);cpuSeconds=$cpu;sampleCpuDeltaSeconds=$delta;startUtc=if($start){$start.ToString('o')}else{$null};path=$path;classification=$role}
  }catch{}
}
$topWs=@($rows|Sort-Object workingSetMiB -Descending|Select-Object -First 10)
$topCommit=@($rows|Sort-Object privateCommittedMiB -Descending|Select-Object -First 10)
$activeTools=@($rows|Where-Object {$_.name-match'^(lean|lake|leanchecker|python.*|pwsh|powershell)$'})
$result=[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');resources=$resource;diagnosticPid=$PID;topWorkingSet=$topWs;topPrivateCommitted=$topCommit;activeTools=$activeTools;caveats=@('PrivateMemorySize64 is per-process private committed allocation; working sets can contain shared pages.','CPU deltas include sampler/setup time and are diagnostic deltas, not exact process percentage.','No command lines, credentials, process termination or settings changes were used.','Ownership only follows matching receipt-bound PID/start identity; unbound process task ownership remains unknown.')}
$out=Join-Path $PSScriptRoot ('resource-diagnostic-'+[DateTime]::UtcNow.ToString('yyyyMMddTHHmmssZ')+'.json')
$result|ConvertTo-Json -Depth 6|Set-Content -LiteralPath $out -Encoding utf8
[pscustomobject]@{utc=$result.utc;resources=$resource|Select-Object physicalAvailableGiB,commitAvailableGiB,cpuBusyPercent,dFreeGiB;topWorkingSet=$topWs|Select-Object pid,name,workingSetMiB,privateCommittedMiB,classification;topPrivateCommitted=$topCommit|Select-Object pid,name,workingSetMiB,privateCommittedMiB,classification;activeTools=$activeTools|Select-Object pid,name,workingSetMiB,classification;receipt=$out}|ConvertTo-Json -Depth 5 -Compress
