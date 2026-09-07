[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$taskDir = $PSScriptRoot
$repoDir = (Resolve-Path -LiteralPath (Join-Path $taskDir '../../../../../')).Path
$lakeScript = Join-Path $repoDir 'scripts/lake.ps1'
$expected = @{
  'B686Round8Independent.sqrt_approx10_residual' = @('propext', 'Classical.choice', 'Quot.sound')
  'B686Round8Independent.sqrt_approx10_squared_bracket_at_cubic_scale' = @('propext', 'Classical.choice', 'Quot.sound')
  'B686Round8Independent.pell_pair_ratio_two' = @('propext')
  'B686Round8Independent.pell_pair_gap_grows' = @('propext', 'Quot.sound')
}
$seen = @{}
foreach ($name in @('SqrtRoundingBoundary', 'PellCapacityBoundary')) {
  $sourcePath = Join-Path $taskDir ($name + '.lean')
  $logPath = Join-Path $taskDir ($name + '.log')
  $runOutput = @(& $lakeScript env lean $sourcePath 2>&1)
  $runExitCode = $LASTEXITCODE
  $runText = $runOutput -join "`n"
  Set-Content -LiteralPath $logPath -Value $runText -Encoding utf8
  if ($runExitCode -ne 0) { throw "Lean failed for $name with exit $runExitCode`: $runText" }
  $matches = [regex]::Matches($runText, "'(?<name>[^']+)' depends on axioms: \[(?<axioms>[^\]]*)\]")
  foreach ($match in $matches) {
    $declName = $match.Groups['name'].Value
    if (-not $expected.ContainsKey($declName)) { throw "Unexpected audited declaration: $declName" }
    $actual = @($match.Groups['axioms'].Value -split ',' | ForEach-Object { $_.Trim() } | Where-Object { $_ } | Sort-Object)
    $wanted = @($expected[$declName] | Sort-Object)
    if (($actual -join ',') -ne ($wanted -join ',')) { throw "Unexpected axioms for $declName`: $($actual -join ',')" }
    $seen[$declName] = $true
  }
  Write-Output "$name`: Lean passed; transitive axiom list checked."
}
foreach ($declName in $expected.Keys) {
  if (-not $seen.ContainsKey($declName)) { throw "Missing axiom audit: $declName" }
}
Write-Output 'All four auxiliary declarations passed. No claim about the full B686 target is made.'
