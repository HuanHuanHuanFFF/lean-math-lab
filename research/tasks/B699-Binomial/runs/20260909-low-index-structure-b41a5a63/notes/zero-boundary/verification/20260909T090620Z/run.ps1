$ErrorActionPreference = 'Stop'
$taskRoot = 'D:/CodingProject/Math/.tools/worktrees/b699-low-index-20260909-b41a5a63'
$noteRoot = Join-Path $taskRoot 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/zero-boundary'
$jobRoot = $PSScriptRoot
$pythonExe = 'C:/Python314/python.exe'
$deadline = [DateTimeOffset]::Parse('2026-09-09T09:13:00Z').UtcDateTime
$tempRoot = Join-Path $jobRoot 'tmp'
New-Item -ItemType Directory -Force -Path $tempRoot | Out-Null
$env:TEMP = $tempRoot
$env:TMP = $tempRoot
$env:PYTHONDONTWRITEBYTECODE = '1'
$generator = Join-Path $noteRoot 'generate_log_certificate.py'
$checker = Join-Path $noteRoot 'check_log_certificate.py'
$certificate = Join-Path $jobRoot 'certificate.json'
$inputContext = Join-Path $noteRoot 'M64-certificates.json'
function FileHashOrNull([string]$taskPath) {
  if (Test-Path -LiteralPath $taskPath -PathType Leaf) {
    return (Get-FileHash -LiteralPath $taskPath -Algorithm SHA256).Hash
  }
  return $null
}
$overallStart = [DateTime]::UtcNow
$before = [ordered]@{
  generator = FileHashOrNull $generator
  checker = FileHashOrNull $checker
  M64_context = FileHashOrNull $inputContext
}
function Invoke-RecordedPhase([string]$phaseName, [string]$phaseScript, [string[]]$phaseArgs, [string]$phaseInput) {
  $startUtc = [DateTime]::UtcNow
  $clock = [Diagnostics.Stopwatch]::StartNew()
  $scriptBefore = FileHashOrNull $phaseScript
  $inputBefore = FileHashOrNull $phaseInput
  $outPath = Join-Path $jobRoot ($phaseName + '.stdout.txt')
  $errPath = Join-Path $jobRoot ($phaseName + '.stderr.txt')
  $argv = @('-B', $phaseScript) + $phaseArgs
  $timedOut = $false
  $exitCode = $null
  $childId = $null
  if ($startUtc -lt $deadline) {
    Write-Host ($phaseName + ' start ' + $startUtc.ToString('o'))
    $child = Start-Process -FilePath $pythonExe -ArgumentList $argv -WorkingDirectory $taskRoot -WindowStyle Hidden -RedirectStandardOutput $outPath -RedirectStandardError $errPath -PassThru
    $childId = $child.Id
    $null = $child.Handle
    [ordered]@{ phase=$phaseName; child_pid=$childId; start_utc=$startUtc.ToString('o'); argv=(@($pythonExe)+$argv); deadline_utc=$deadline.ToString('o') } | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $jobRoot 'active-process.json') -Encoding utf8
    while (-not $child.WaitForExit(1000)) {
      if ([DateTime]::UtcNow -ge $deadline) {
        $timedOut = $true
        if (-not $child.HasExited) { $child.Kill() }
        $child.WaitForExit()
        break
      }
    }
    $exitCode = $child.ExitCode
  }
  $clock.Stop()
  $endUtc = [DateTime]::UtcNow
  $record = [ordered]@{
    phase=$phaseName; executable=$pythonExe; argv=(@($pythonExe)+$argv); cwd=$taskRoot
    start_utc=$startUtc.ToString('o'); end_utc=$endUtc.ToString('o'); elapsed_seconds=$clock.Elapsed.TotalSeconds
    exit_code=$exitCode; timed_out=$timedOut; child_pid=$childId
    script_path=$phaseScript; script_sha256_before=$scriptBefore; script_sha256_after=(FileHashOrNull $phaseScript)
    input_path=$phaseInput; input_sha256_before=$inputBefore; input_sha256_after=(FileHashOrNull $phaseInput)
    stdout_path=$outPath; stderr_path=$errPath
    stdout_sha256=(FileHashOrNull $outPath); stderr_sha256=(FileHashOrNull $errPath)
    certificate_sha256=(FileHashOrNull $certificate)
  }
  $record | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $jobRoot ($phaseName + '-run.json')) -Encoding utf8
  Write-Host ($phaseName + ' end ' + $endUtc.ToString('o') + ' exit=' + $exitCode + ' elapsed=' + $clock.Elapsed.TotalSeconds)
  return [pscustomobject]$record
}
$genArgs = @('--output', $certificate, '--terms', '96', '--max-v', '1000000000000000000000000', '--max-candidates', '24', '--max-steps', '256')
$genResult = Invoke-RecordedPhase 'generator' $generator $genArgs ''
$checkResult = $null
if ((Test-Path -LiteralPath $certificate) -and [DateTime]::UtcNow -lt $deadline) {
  $checkResult = Invoke-RecordedPhase 'checker' $checker @($certificate) $certificate
}
$overall = [ordered]@{
  start_utc=$overallStart.ToString('o'); end_utc=[DateTime]::UtcNow.ToString('o'); deadline_utc=$deadline.ToString('o')
  worktree=$taskRoot; temporary_directory=$tempRoot; scripts_before=$before
  scripts_after=[ordered]@{generator=(FileHashOrNull $generator);checker=(FileHashOrNull $checker);M64_context=(FileHashOrNull $inputContext)}
  generator=$genResult; checker=$checkResult; certificate_sha256=(FileHashOrNull $certificate)
}
$overall | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath (Join-Path $jobRoot 'run-manifest.json') -Encoding utf8
$overall | ConvertTo-Json -Depth 3 -Compress | Write-Output
