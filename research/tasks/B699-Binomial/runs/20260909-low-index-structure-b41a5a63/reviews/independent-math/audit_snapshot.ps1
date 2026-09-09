$ErrorActionPreference = 'Stop'
$runRelative = 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63'
$root = (Get-Location).Path
$cover = Get-Content -Raw -LiteralPath "$runRelative/notes/heights/two-colour-cover.json" | ConvertFrom-Json -AsHashtable
$expected = @(29) + @(35..184)
$primes = @(foreach ($candidate in 2..183) {
  $isPrime = $true
  for ($divisor = 2; $divisor * $divisor -le $candidate; $divisor++) {
    if ($candidate % $divisor -eq 0) { $isPrime = $false; break }
  }
  if ($isPrime) { $candidate }
})
$parameterResults = @(foreach ($record in $cover.records) {
  $i = $record.i
  $r = $record.r
  $s = $record.s
  $L = $i - $r - 1
  $t = @($primes | Where-Object { $_ -lt $i }).Count
  $lambda = 2 * $s - $r
  $E = $s * ($s + 1) + $L * ($L + 1) / 2
  $delta = $lambda * ($i - $t) - $E
  [ordered]@{
    i = $i
    valid = ($i -ge 2 -and 0 -le $r -and $r -lt $i -and 1 -le $s -and $s -lt $i -and $t -ge 2 -and $record.t -eq $t -and $lambda -gt 0 -and $lambda -eq $record.lambda -and $E -eq $record.E -and $delta -gt 0 -and $delta -eq $record.Delta)
    r = $r; s = $s; t = $t; lambda = $lambda; E = $E; Delta = $delta
  }
})
$manifest = Get-Content -Raw -LiteralPath "$runRelative/notes/heights/artifact-manifest.json" | ConvertFrom-Json -AsHashtable
$artifactHashes = @(foreach ($entry in $manifest.files) {
  $observed = (Get-FileHash -Algorithm SHA256 -LiteralPath "$runRelative/notes/heights/$($entry.path)").Hash.ToLowerInvariant()
  [ordered]@{ path = $entry.path; sha256 = $observed; matches_manifest = ($observed -eq $entry.sha256) }
})
$leanEvidence = Get-Content -Raw -LiteralPath "$runRelative/verification/20260909T065147Z/evidence.json" | ConvertFrom-Json -AsHashtable
$leanSourceHashes = @(foreach ($entry in $leanEvidence.source_closure) {
  $observed = (Get-FileHash -Algorithm SHA256 -LiteralPath $entry.source).Hash.ToLowerInvariant()
  [ordered]@{ source = $entry.source; sha256 = $observed; matches_accepted_source = ($observed -eq $entry.source_sha256_after) }
})
$leanLogHashes = @(foreach ($entry in $leanEvidence.compile_records) {
  $observed = (Get-FileHash -Algorithm SHA256 -LiteralPath $entry.log).Hash.ToLowerInvariant()
  [ordered]@{ log = $entry.log; sha256 = $observed; matches_accepted_log = ($observed -eq $entry.log_sha256); recorded_exit_code = $entry.exit_code }
})
$indicesEqual = (($cover.indices -join ',') -eq ($expected -join ',')) -and (($cover.records.i -join ',') -eq ($expected -join ','))
$result = [ordered]@{
  timestamp_utc = [DateTime]::UtcNow.ToString('o')
  kind = 'independent-review-bounded-snapshot-audit'
  source_baseline = '7fd3928656489afe2c80698f0a09d1d933444186'
  scope = 'Only hashes and 151 scalar parameter records; no Lean or finite-cover recomputation.'
  expected_indices_match = $indicesEqual
  parameter_records = $parameterResults
  invalid_parameter_count = @($parameterResults | Where-Object { -not $_.valid }).Count
  artifact_hashes = $artifactHashes
  accepted_lean_source_hashes = $leanSourceHashes
  accepted_lean_log_hashes = $leanLogHashes
  all_checks_pass = ($indicesEqual -and @($parameterResults | Where-Object { -not $_.valid }).Count -eq 0 -and @($artifactHashes | Where-Object { -not $_.matches_manifest }).Count -eq 0 -and @($leanSourceHashes | Where-Object { -not $_.matches_accepted_source }).Count -eq 0 -and @($leanLogHashes | Where-Object { -not $_.matches_accepted_log -or $_.recorded_exit_code -ne 0 }).Count -eq 0)
}
$output = Join-Path $root "$runRelative/reviews/independent-math/snapshot-audit.json"
[IO.File]::WriteAllText($output, ($result | ConvertTo-Json -Depth 20) + [Environment]::NewLine, [Text.UTF8Encoding]::new($false))
[ordered]@{ all_checks_pass=$result.all_checks_pass; parameters=$parameterResults.Count; bad_parameters=$result.invalid_parameter_count; manifest_files=$artifactHashes.Count; lean_sources=$leanSourceHashes.Count; lean_logs=$leanLogHashes.Count } | ConvertTo-Json
if (-not $result.all_checks_pass) { exit 1 }