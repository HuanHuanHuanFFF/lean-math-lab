[CmdletBinding()]
param(
  [Parameter(Position = 0, ValueFromRemainingArguments = $true)]
  [string[]] $LeanArgs
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$toolsRoot = Join-Path $repoRoot ".tools"
$elanHome = Join-Path $toolsRoot "elan"
$lakeHome = Join-Path $toolsRoot "lake"
$tempRoot = Join-Path $toolsRoot "tmp"
$cacheRoot = Join-Path $toolsRoot "cache"
$mathlibCacheRoot = Join-Path $cacheRoot "mathlib"
$leanExe = Join-Path $elanHome "bin\lean.exe"

New-Item -ItemType Directory -Force -Path $lakeHome, $tempRoot, $cacheRoot, $mathlibCacheRoot | Out-Null
$env:ELAN_HOME = $elanHome
$env:LAKE_HOME = $lakeHome
$env:TEMP = $tempRoot
$env:TMP = $tempRoot
$env:XDG_CACHE_HOME = $cacheRoot
$env:MATHLIB_CACHE_DIR = $mathlibCacheRoot
$env:ELAN = Join-Path $elanHome "bin\elan.exe"
$env:PATH = (Join-Path $elanHome "bin") + [IO.Path]::PathSeparator + $env:PATH

if (-not (Test-Path -LiteralPath $leanExe)) {
  throw "Lean proxy not found at $leanExe. Run the D-drive elan installation first."
}

& $leanExe @LeanArgs
exit $LASTEXITCODE
