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

Push-Location $repoRoot
try {
  Invoke-ProjectLake -Arguments @('build')
  foreach ($checkFile in $checkFiles) {
    Write-Host "Checking $checkFile"
    Invoke-ProjectLake -Arguments @('env', 'lean', $checkFile)
  }
  Write-Host "Verified library build and $($checkFiles.Count) Lean files."
} finally {
  Pop-Location
}
