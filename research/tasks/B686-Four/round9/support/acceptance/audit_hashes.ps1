[CmdletBinding()]
param(
  [switch]$IncludeBuildOutputs
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..\..\..\..')).Path
$freezePath = Join-Path $repoRoot 'research/tasks/B686-Four/round9/uniform/freeze.json'
$verificationPath = Join-Path $repoRoot 'research/tasks/B686-Four/round9/uniform/verification.json'
$freeze = Get-Content -Raw -LiteralPath $freezePath | ConvertFrom-Json
$verification = Get-Content -Raw -LiteralPath $verificationPath | ConvertFrom-Json

function Get-ExpectedPath($entry) {
  if ($null -ne $entry.path) { return [string]$entry.path }
  return [string]$entry.source
}

function Get-ExpectedHash($entry) {
  if ($null -ne $entry.sha256) { return [string]$entry.sha256 }
  return [string]$entry.source_sha256
}

function Test-Hash($entry, $kind) {
  $relative = Get-ExpectedPath $entry
  $expected = (Get-ExpectedHash $entry).ToLowerInvariant()
  if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $relative))) {
    return [pscustomobject]@{ kind = $kind; path = $relative; status = 'missing'; expected = $expected; actual = $null }
  }
  $actual = (Get-FileHash -Algorithm SHA256 -LiteralPath (Join-Path $repoRoot $relative)).Hash.ToLowerInvariant()
  return [pscustomobject]@{ kind = $kind; path = $relative; status = $(if ($actual -eq $expected) { 'match' } else { 'mismatch' }); expected = $expected; actual = $actual }
}

$sourceChecks = @()
foreach ($entry in @($freeze.source_files)) { $sourceChecks += Test-Hash $entry 'freeze_source' }
foreach ($entry in @($freeze.read_only_old_sources)) { $sourceChecks += Test-Hash $entry 'freeze_old_source' }
$closureChecks = @()
foreach ($entry in @($verification.source_closure)) { $closureChecks += Test-Hash $entry 'verification_source' }
$reportActual = (Get-FileHash -Algorithm SHA256 -LiteralPath $verificationPath).Hash.ToLowerInvariant()
$reportExpected = ([string]$freeze.verification_report_sha256).ToLowerInvariant()

$recordChecks = @()
if ($IncludeBuildOutputs) {
  foreach ($record in @($verification.records)) {
    $logPath = [string]$record.log
    $logStatus = 'missing'
    $logActual = $null
    if (Test-Path -LiteralPath (Join-Path $repoRoot $logPath)) {
      $logActual = (Get-FileHash -Algorithm SHA256 -LiteralPath (Join-Path $repoRoot $logPath)).Hash.ToLowerInvariant()
      $logStatus = if ($logActual -eq ([string]$record.log_sha256).ToLowerInvariant()) { 'match' } else { 'mismatch' }
    }
    $outputStatus = 'none'
    $outputActual = $null
    if ($null -ne $record.output) {
      $outputPath = [string]$record.output
      $outputStatus = 'missing'
      if (Test-Path -LiteralPath (Join-Path $repoRoot $outputPath)) {
        $outputActual = (Get-FileHash -Algorithm SHA256 -LiteralPath (Join-Path $repoRoot $outputPath)).Hash.ToLowerInvariant()
        $outputStatus = if ($outputActual -eq ([string]$record.output_sha256).ToLowerInvariant()) { 'match' } else { 'mismatch' }
      }
    }
    $recordChecks += [pscustomobject]@{
      label = [string]$record.label
      exit_code = [int]$record.exit_code
      log_status = $logStatus
      log_actual = $logActual
      output_status = $outputStatus
      output_actual = $outputActual
    }
  }
}

$report = [pscustomobject]@{
  freeze_report = [pscustomobject]@{ status = $(if ($reportActual -eq $reportExpected) { 'match' } else { 'mismatch' }); expected = $reportExpected; actual = $reportActual }
  freeze_sources = $sourceChecks
  verification_source_closure = $closureChecks
  build_outputs_checked = $IncludeBuildOutputs.IsPresent
  record_checks = $recordChecks
}
$report | ConvertTo-Json -Depth 8

$allChecks = @($sourceChecks) + @($closureChecks)
$failed = @($allChecks | Where-Object { $_.status -ne 'match' }).Count -gt 0
$failed = $failed -or ($reportActual -ne $reportExpected)
if ($IncludeBuildOutputs) {
  $failed = $failed -or (@($recordChecks | Where-Object { $_.exit_code -ne 0 -or $_.log_status -ne 'match' -or $_.output_status -eq 'missing' -or $_.output_status -eq 'mismatch' }).Count -gt 0)
}
if ($failed) { exit 1 }
exit 0
