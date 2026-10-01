[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)][string[]]$Receipts,
  [Parameter(Mandatory=$true)][string]$Output
)
$ErrorActionPreference='Stop'
$allowed=@('propext','Classical.choice','Quot.sound')
$results=@()
foreach($receiptPath in $Receipts){
  $r=Get-Content -LiteralPath $receiptPath -Raw | ConvertFrom-Json
  if($r.status -ne 'success' -or $r.exitCode -ne 0 -or $r.stopReason){throw "Not an actual successful Lean run: $receiptPath"}
  if(-not $r.sourceUnchanged){throw "Source mutated during run: $receiptPath"}
  $sourceHash=(Get-FileHash -LiteralPath $r.source -Algorithm SHA256).Hash.ToLowerInvariant()
  if($sourceHash -ne $r.sourceSha256){throw "Source no longer matches receipt: $receiptPath"}
  $objectHash=(Get-FileHash -LiteralPath $r.object -Algorithm SHA256).Hash.ToLowerInvariant()
  if($objectHash -ne $r.objectSha256){throw "Object no longer matches receipt: $receiptPath"}
  $source=Get-Content -LiteralPath $r.source -Raw
  if($source -match '(?m)^\s*(axiom|constant)\b|\bsorry\b|\badmit\b|\bnative_decide\b'){throw "Disallowed proof policy token: $($r.source)"}
  $expected=@([regex]::Matches($source,'(?m)^#print axioms\s+([A-Za-z0-9_.]+)')|ForEach-Object{$_.Groups[1].Value})
  if($expected.Count -eq 0){throw "No actual axiom audit requested in source: $($r.source)"}
  $log=Get-Content -LiteralPath $r.stdout -Raw
  $observed=@{}
  foreach($m in [regex]::Matches($log,"'([^']+)'\s+(?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)")){
    $axioms=@($m.Groups[2].Value.Split(',',[StringSplitOptions]::RemoveEmptyEntries)|ForEach-Object{$_.Trim()})
    foreach($a in $axioms){if($allowed -notcontains $a){throw "Unexpected transitive axiom $a in $($m.Groups[1].Value)"}}
    $observed[$m.Groups[1].Value]=$axioms
  }
  foreach($name in $expected){if(-not $observed.ContainsKey($name)){throw "Missing actual axiom output for $name"}}
  $results+=[ordered]@{source=$r.source;sourceSha256=$sourceHash;object=$r.object;objectSha256=$objectHash;receipt=$receiptPath;receiptSha256=(Get-FileHash -LiteralPath $receiptPath -Algorithm SHA256).Hash.ToLowerInvariant();stdout=$r.stdout;stdoutSha256=(Get-FileHash -LiteralPath $r.stdout -Algorithm SHA256).Hash.ToLowerInvariant();executable=$r.executable;arguments=$r.arguments;exitCode=$r.exitCode;wallSeconds=$r.wallSeconds;auditedDeclarations=$expected;actualAxioms=$observed}
}
[ordered]@{utc=[DateTime]::UtcNow.ToString('o');allowedAxioms=$allowed;fullOriginalTailAccepted=$false;acceptedRuns=$results}|ConvertTo-Json -Depth 12|Set-Content -LiteralPath $Output -Encoding utf8NoBOM
Write-Output ("Bound successful source/object/log runs: "+$results.Count)

