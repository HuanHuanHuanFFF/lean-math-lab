# Validate current migration mappings; original hash-audit bytes remain archived.
$ErrorActionPreference = 'Stop'
$repoRoot = (& git -C $PSScriptRoot rev-parse --show-toplevel).Trim()
if ($LASTEXITCODE -ne 0) { throw 'Repository root not found' }
& python (Join-Path $repoRoot 'scripts/check-research-layout.py') @args
exit $LASTEXITCODE
