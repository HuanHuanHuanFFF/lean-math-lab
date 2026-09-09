# Recreate the developmental mathlib overlay without modifying the fixed package.
# Only Mathlib/Tactic/NormNum is writable locally; sibling directories are junctions.
$ErrorActionPreference = 'Stop'
$projectRoot = [System.IO.DirectoryInfo]$PSScriptRoot
while ($projectRoot -and -not (Test-Path -LiteralPath (Join-Path $projectRoot.FullName 'lake-manifest.json'))) {
  $projectRoot = $projectRoot.Parent
}
if (-not $projectRoot) { throw 'Cannot find the project root.' }
$fixedMathlib = 'D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/lib/lean/Mathlib'
$overlayMathlib = Join-Path $projectRoot.FullName '.tools/mid/prime-chain-dev/mathlib/Mathlib'
function Add-CacheMirrorLevel([string]$sourceDirectory, [string]$targetDirectory, [string]$writableChild) {
  New-Item -ItemType Directory -Force -Path $targetDirectory | Out-Null
  foreach ($entry in Get-ChildItem -LiteralPath $sourceDirectory -Force) {
    $destination = Join-Path $targetDirectory $entry.Name
    if (Test-Path -LiteralPath $destination) { continue }
    if ($entry.PSIsContainer) {
      if ($entry.Name -eq $writableChild) {
        New-Item -ItemType Directory -Path $destination | Out-Null
      } else {
        New-Item -ItemType Junction -Path $destination -Target $entry.FullName | Out-Null
      }
    } else {
      New-Item -ItemType HardLink -Path $destination -Target $entry.FullName | Out-Null
    }
  }
}
Add-CacheMirrorLevel $fixedMathlib $overlayMathlib 'Tactic'
Add-CacheMirrorLevel (Join-Path $fixedMathlib 'Tactic') (Join-Path $overlayMathlib 'Tactic') 'NormNum'
Add-CacheMirrorLevel (Join-Path $fixedMathlib 'Tactic/NormNum') (Join-Path $overlayMathlib 'Tactic/NormNum') ''
Write-Output $overlayMathlib
