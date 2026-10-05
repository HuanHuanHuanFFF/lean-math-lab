param([string]$RepoRoot = (Get-Location).Path)
$ErrorActionPreference = 'Stop'
$taskRelative = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations'
$taskBundle = Join-Path $RepoRoot ($taskRelative + '/20261002-terminal-gap-twohour/terminal/source-bundle/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/finite/generated')
$taskOut = Join-Path $RepoRoot ($taskRelative + '/20261004-tail-twohour-finish/supply/fixed-pool-probe.json')
$taskFiles = @(Get-ChildItem -LiteralPath $taskBundle -Filter 'NormNumBlock*.lean' -File)
$taskPool = [System.Collections.Generic.HashSet[long]]::new()
$taskMembers = @()
foreach ($taskFile in $taskFiles) {
  $taskRaw = [System.IO.File]::ReadAllText($taskFile.FullName)
  foreach ($taskMatch in [regex]::Matches($taskRaw, 'Nat\.Prime\s+(\d+)')) {
    [void]$taskPool.Add([long]$taskMatch.Groups[1].Value)
  }
  $taskMembers += @{ path = $taskFile.FullName.Substring($RepoRoot.Length + 1).Replace('\','/'); bytes = $taskFile.Length; sha256 = (Get-FileHash -LiteralPath $taskFile.FullName -Algorithm SHA256).Hash.ToLower() }
}
$taskPrimes = @($taskPool | Sort-Object)
$taskCursor = [long]10000000
$taskPrevious = $null
$taskHoles = @()
foreach ($taskPrime in $taskPrimes) {
  if ($taskPrime -lt 10000000) { continue }
  $taskLower = [long][System.Numerics.BigInteger]::Divide(([System.Numerics.BigInteger]4095 * $taskPrime + 4095), 4096)
  if ($taskLower -gt $taskCursor) {
    $taskHoles += @{ lo = $taskCursor; hiExclusive = $taskLower; precedingStoredPrime = $taskPrevious; nextStoredPrime = $taskPrime }
  }
  if ($taskPrime -gt $taskCursor) { $taskCursor = $taskPrime }
  $taskPrevious = $taskPrime
  if ($taskCursor -ge 19995885) { break }
}
$taskResult = [ordered]@{
  status = 'exact-stored-witness-coverage-probe-not-kernel-check'
  utc = (Get-Date).ToUniversalTime().ToString('o')
  storedPrimeCount = $taskPrimes.Count
  targetInterval = @(10000000,19995885)
  gapIntervalFormula = 'ceil(4095*p/4096) <= y < p'
  uncoveredIntervalCount = $taskHoles.Count
  firstHoles = @($taskHoles | Select-Object -First 5)
  firstHoleAfterAcceptedPilot = ($taskHoles | Where-Object { $_.hiExclusive -gt 10146761 } | Select-Object -First 1)
  members = $taskMembers
  primalityCheckedHere = $false
  acceptanceBinding = 'old supplied source-bundle; C/S technical acceptance is separate'
  conclusion = 'Stored chain witnesses alone leave holes; this is not a counterexample to true Gap and does not show impossibility of another argument.'
}
$taskResult | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $taskOut -Encoding utf8
[pscustomobject]@{ storedPrimeCount = $taskPrimes.Count; uncoveredIntervalCount = $taskHoles.Count; firstHole = ($taskHoles | Select-Object -First 1); firstHoleAfterAcceptedPilot = $taskResult.firstHoleAfterAcceptedPilot; output = $taskOut } | ConvertTo-Json -Depth 3
