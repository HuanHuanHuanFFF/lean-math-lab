[CmdletBinding()]
param(
  [Parameter(Position = 0, ValueFromRemainingArguments = $true)]
  [string[]] $LakeArgs
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$toolsRoot = Join-Path $repoRoot ".tools"
$elanHome = Join-Path $toolsRoot "elan"
$lakeHome = Join-Path $toolsRoot "lake"
$tempRoot = Join-Path $toolsRoot "tmp"
$cacheRoot = Join-Path $toolsRoot "cache"
$mathlibCacheRoot = Join-Path $cacheRoot "mathlib"
$lakeExe = Join-Path $elanHome "bin\lake.exe"

New-Item -ItemType Directory -Force -Path $lakeHome, $tempRoot, $cacheRoot, $mathlibCacheRoot | Out-Null
$env:ELAN_HOME = $elanHome
$env:LAKE_HOME = $lakeHome
$env:TEMP = $tempRoot
$env:TMP = $tempRoot
$env:XDG_CACHE_HOME = $cacheRoot
$env:MATHLIB_CACHE_DIR = $mathlibCacheRoot
$env:ELAN = Join-Path $elanHome "bin\elan.exe"
$env:PATH = (Join-Path $elanHome "bin") + [IO.Path]::PathSeparator + $env:PATH

# Lake invokes Git for package metadata.  Keep the trust exception process-local
# and limited to this project and its dependencies when another SID created
# the downloaded packages.  Preserve any caller-provided Git config entries.
$packageRoot = Join-Path $repoRoot ".lake\packages"
$gitConfigCount = 0
if ($env:GIT_CONFIG_COUNT -match "^\d+$") {
  $gitConfigCount = [int]$env:GIT_CONFIG_COUNT
}
$packageDirs = @(Get-ChildItem -LiteralPath $packageRoot -Directory -ErrorAction SilentlyContinue)
$trustedGitDirs = @($repoRoot) + @($packageDirs | ForEach-Object { $_.FullName })
foreach ($trustedGitDir in $trustedGitDirs) {
  [Environment]::SetEnvironmentVariable("GIT_CONFIG_KEY_$gitConfigCount", "safe.directory", "Process")
  [Environment]::SetEnvironmentVariable("GIT_CONFIG_VALUE_$gitConfigCount", $trustedGitDir.Replace('\', '/'), "Process")
  $gitConfigCount++
}
$env:GIT_CONFIG_COUNT = [string]$gitConfigCount

if (-not (Test-Path -LiteralPath $lakeExe)) {
  throw "Lake proxy not found at $lakeExe. Run the D-drive elan installation first."
}

& $lakeExe @LakeArgs
exit $LASTEXITCODE
