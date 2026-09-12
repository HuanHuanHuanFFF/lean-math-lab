$ErrorActionPreference='Stop'
$taskRun='research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
$taskReview=Join-Path $taskRun 'reviews/huan-terminal-cutoff-decision-fix-5e2d13bb'
New-Item -ItemType Directory -Path $taskReview -Force | Out-Null
$taskQueue=Join-Path $taskRun 'verification/huan-b-queue-20260912T074239052735Z/state.json'
$taskRoot=Get-CimInstance Win32_Process -Filter 'ProcessId=37240'
if (-not $taskRoot -or $taskRoot.CommandLine -notlike '*verify_huan_b_queue.py*huan-after-crt-combined-plan-v37.json*') { throw 'Queue identity mismatch' }
$taskDeadline=[DateTime]::UtcNow.AddSeconds(180)
$taskReady=$false
while ([DateTime]::UtcNow -lt $taskDeadline) {
 $taskState=Get-Content -LiteralPath $taskQueue -Raw | ConvertFrom-Json
 $taskFinished=@($taskState.jobs | Where-Object {$_.name -eq 'i11-terminal-coverage-full-audit' -and $_.status -in @('accepted_prerequisite','existing_complete_receipt_validated')})
 if ($taskFinished.Count -eq 1) { $taskReady=$true; break }
 $taskBad=@($taskState.jobs | Where-Object {$_.name -like 'i11-terminal-coverage-*' -and $_.status -in @('failed_not_accepted','controller_check_failed')})
 if ($taskBad.Count -gt 0) { $taskReady=$true; break }
 Start-Sleep -Milliseconds 250
}
if (-not $taskReady) { Write-Output 'No safe checkpoint yet; no process stopped'; exit 124 }
$taskAll=Get-CimInstance Win32_Process
$taskCurrent=$taskAll | Where-Object {$_.ProcessId -eq 37240}
if (-not $taskCurrent -or $taskCurrent.CreationDate -ne $taskRoot.CreationDate -or $taskCurrent.CommandLine -ne $taskRoot.CommandLine) { throw 'Queue identity changed' }
$taskIds=[System.Collections.Generic.List[int]]::new()
$taskIds.Add(37240)
$taskGrowing=$true
while ($taskGrowing) {
 $taskGrowing=$false
 foreach ($taskProcess in $taskAll) {
  if ($taskIds.Contains([int]$taskProcess.ParentProcessId) -and -not $taskIds.Contains([int]$taskProcess.ProcessId)) { $taskIds.Add([int]$taskProcess.ProcessId);$taskGrowing=$true }
 }
}
$taskSelected=@($taskAll | Where-Object {$taskIds.Contains([int]$_.ProcessId)})
$taskRecord=[ordered]@{utc=[DateTime]::UtcNow.ToString('o');reason='Stop at completed coverage audit to repair six pending cutoff proofs with prior accepted fix';queue='huan-b-queue-20260912T074239052735Z';jobs=@($taskState.jobs | Select-Object name,status,finished_utc);processes=@($taskSelected | Select-Object ProcessId,ParentProcessId,Name,CommandLine,CreationDate);new_B_original_results=0}
$taskRecord | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $taskReview 'stop-checkpoint.json') -Encoding utf8
# Stop the verified controller first so no new job can be launched.
Stop-Process -Id 37240
foreach ($taskProcess in $taskSelected) {
 if ($taskProcess.ProcessId -eq 37240) { continue }
 $taskLive=Get-CimInstance Win32_Process -Filter ("ProcessId="+$taskProcess.ProcessId)
 if ($taskLive -and $taskLive.CreationDate -eq $taskProcess.CreationDate -and $taskLive.CommandLine -eq $taskProcess.CommandLine) { Stop-Process -Id $taskProcess.ProcessId -ErrorAction SilentlyContinue }
}
Write-Output ('Stopped own queue at checkpoint; captured '+$taskIds.Count+' processes')

