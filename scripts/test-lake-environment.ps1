[CmdletBinding()]
param([string] $OutputPath = 'research/lake-environment-regression.json')
$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repoRoot
try {
  $rows = @()
  for ($step = 1; $step -le 10; $step++) {
    & (Join-Path $PSScriptRoot 'lake.ps1') -LakeArgs @('--version') | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "Lake version call $step failed." }
    $rows += [PSCustomObject]@{
      step = $step
      gitConfigCount = [int]$env:GIT_CONFIG_COUNT
      pathLength = $env:PATH.Length
    }
  }
  & (Join-Path $PSScriptRoot 'lake.ps1') -LakeArgs @('env', 'lean', 'Examples/CofactorCriterion.lean')
  $leanExit = $LASTEXITCODE
  $countStable = @($rows.gitConfigCount | Select-Object -Unique).Count -eq 1
  $result = [PSCustomObject]@{
    utc = [DateTimeOffset]::UtcNow.ToString('o')
    trigger = 'ten real wrapper calls followed by the actual project example'
    gitConfigCountStable = $countStable
    exampleExitCode = $leanExit
    rows = $rows
  }
  $result | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutputPath -Encoding utf8
  $result | ConvertTo-Json -Depth 5
  if ($leanExit -ne 0 -or -not $countStable) { exit 1 }
} finally {
  Pop-Location
}
