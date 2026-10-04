param([string]$RunRelative='research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702')
$ErrorActionPreference='Stop'
$traceChecker = Join-Path $PSScriptRoot 'check_trace.exe'
$metricsAll = @()
foreach ($familyCubic in @(1,2)) {
  $inputCubic = (Resolve-Path -LiteralPath "$RunRelative/experiments/a/quotient-global/global-f$familyCubic.input.txt").Path
  $traceCubic = (Resolve-Path -LiteralPath "$RunRelative/experiments/a/quotient-global/global-f$familyCubic.trace.tsv").Path
  $expectedTraceCubic = if ($familyCubic -eq 1) {'513dabd6c044e97b4119c513d80ca0c1c42a0b80885ca8a9c3c332fabedf1048'} else {'68ab4f6583cfbab7810960266cbf56ac9388202a99adfb1fa7e88daf95543f2f'}
  if ((Get-FileHash -LiteralPath $traceCubic -Algorithm SHA256).Hash.ToLowerInvariant() -ne $expectedTraceCubic) {throw 'fixed trace hash mismatch'}
  $stdoutCubic = Join-Path $PSScriptRoot "global-f$familyCubic-received.json"
  $stderrCubic = Join-Path $PSScriptRoot "global-f$familyCubic-received.stderr.log"
  $clockCubic = [Diagnostics.Stopwatch]::StartNew()
  $processCubic = Start-Process -FilePath $traceChecker -ArgumentList @($inputCubic,$traceCubic) -WorkingDirectory (Get-Location).Path -WindowStyle Hidden -PassThru -RedirectStandardOutput $stdoutCubic -RedirectStandardError $stderrCubic
  $peakCubic = [long]0
  while (-not $processCubic.HasExited) {
    $processCubic.Refresh()
    if (-not $processCubic.HasExited) {
      $peakCubic = [math]::Max($peakCubic,[long]$processCubic.PeakWorkingSet64)
      if ($peakCubic -gt 100MB) {Stop-Process -Id $processCubic.Id;throw 'own receiver resource checkpoint exceeded; no acceptance'}
    }
    Start-Sleep -Milliseconds 200
  }
  $processCubic.WaitForExit()
  $clockCubic.Stop()
  if ($processCubic.ExitCode -ne 0) {throw "receiver failed family$familyCubic exit=$($processCubic.ExitCode)"}
  $receivedCubic = Get-Content -LiteralPath $stdoutCubic -Raw | ConvertFrom-Json
  $generatedCubic = Get-Content -LiteralPath "$RunRelative/experiments/a/quotient-global/global-f$familyCubic.json" -Raw | ConvertFrom-Json
  if (-not $receivedCubic.verified -or $receivedCubic.dimension -ne 0 -or $receivedCubic.min_weight -ne 299 -or $receivedCubic.e -ne 149 -or $receivedCubic.D -ne 298 -or $receivedCubic.p -ne 257) {throw 'receiver bounds mismatch'}
  if ($receivedCubic.conditions -ne $generatedCubic.conditions -or $receivedCubic.nonredundant -ne $generatedCubic.nonredundant -or (($receivedCubic.weights -join ',') -ne ($generatedCubic.weights -join ','))) {throw 'received terminal weights differ from supplied output'}
  $metricsCubic = [ordered]@{family=$familyCubic;trace_sha256=$expectedTraceCubic;exit_code=$processCubic.ExitCode;seconds=$clockCubic.Elapsed.TotalSeconds;sampled_peak_working_set_bytes=$peakCubic;conditions=$receivedCubic.conditions;nonredundant=$receivedCubic.nonredundant;dimension=$receivedCubic.dimension;min_weight=$receivedCubic.min_weight;terminal_weights_match=$true;receiver_source_sha256='487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196'}
  $metricsAll += $metricsCubic
  $metricsCubic | ConvertTo-Json -Compress
  $metricsAll | ConvertTo-Json -Depth 3 | Set-Content -LiteralPath (Join-Path $PSScriptRoot 'global-receive-metrics.json') -Encoding utf8
}
