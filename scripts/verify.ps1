[CmdletBinding()]
param([switch] $List)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$checkFiles = @(foreach ($folder in @('Math', 'Tests', 'Examples')) {
  Get-ChildItem -LiteralPath (Join-Path $repoRoot $folder) -Filter '*.lean' -File -Recurse |
    Sort-Object FullName | ForEach-Object {
      $_.FullName.Substring($repoRoot.Length + 1).Replace('\', '/')
    }
})
if ($checkFiles.Count -eq 0) { throw 'No Lean sources or checks found.' }
if ($List) { $checkFiles; exit 0 }

function Invoke-ProjectLake {
  param([string[]] $Arguments)
  if ($env:OS -eq 'Windows_NT' -and
      (Test-Path -LiteralPath (Join-Path $repoRoot '.tools/elan/bin/lake.exe'))) {
    & (Join-Path $PSScriptRoot 'lake.ps1') -LakeArgs $Arguments
  } else {
    & lake @Arguments
  }
  if ($LASTEXITCODE -ne 0) {
    throw "Lake failed with exit code ${LASTEXITCODE}: $($Arguments -join ' ')"
  }
}

function Invoke-SourcePolicy {
  $pythonCommand = Get-Command python -ErrorAction SilentlyContinue
  if (-not $pythonCommand) {
    $pythonCommand = Get-Command python3 -ErrorAction SilentlyContinue
  }
  if (-not $pythonCommand) {
    throw 'Python is required for scripts/check-lean-policy.py.'
  }
  & $pythonCommand.Source (Join-Path $repoRoot 'scripts/check-lean-policy.py') --roots Math Tests Examples
  if ($LASTEXITCODE -ne 0) {
    throw "Lean source policy failed with exit code ${LASTEXITCODE}."
  }
}

Push-Location $repoRoot
try {
  Invoke-SourcePolicy
  Invoke-ProjectLake -Arguments @('build')
  foreach ($checkFile in $checkFiles) {
    Write-Host "Checking $checkFile"
    Invoke-ProjectLake -Arguments @('env', 'lean', $checkFile)
  }
  Write-Host "Verified library build and $($checkFiles.Count) Lean files."
} finally {
  Pop-Location
}
