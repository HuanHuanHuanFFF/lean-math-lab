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
# Repeated calls from verify.ps1 share this process environment. Reuse existing
# trust entries instead of making the child environment grow on every file.
$seenTrustedPaths = [System.Collections.Generic.HashSet[string]]::new(
  [StringComparer]::OrdinalIgnoreCase)
for ($configIndex = 0; $configIndex -lt $gitConfigCount; $configIndex++) {
  $configKey = [Environment]::GetEnvironmentVariable("GIT_CONFIG_KEY_$configIndex", "Process")
  if ($configKey -eq "safe.directory") {
    $configValue = [Environment]::GetEnvironmentVariable("GIT_CONFIG_VALUE_$configIndex", "Process")
    if ($null -ne $configValue) {
      [void]$seenTrustedPaths.Add($configValue.Replace([char]92, [char]47))
    }
  }
}
foreach ($trustedGitDir in $trustedGitDirs) {
  $normalizedTrustedDir = $trustedGitDir.Replace([char]92, [char]47)
  if (-not $seenTrustedPaths.Add($normalizedTrustedDir)) { continue }
  [Environment]::SetEnvironmentVariable("GIT_CONFIG_KEY_$gitConfigCount", "safe.directory", "Process")
  [Environment]::SetEnvironmentVariable("GIT_CONFIG_VALUE_$gitConfigCount", $normalizedTrustedDir, "Process")
  $gitConfigCount++
}
$env:GIT_CONFIG_COUNT = [string]$gitConfigCount

if (-not (Test-Path -LiteralPath $lakeExe)) {
  throw "Lake proxy not found at $lakeExe. Run the D-drive elan installation first."
}

& $lakeExe @LakeArgs
exit $LASTEXITCODE
