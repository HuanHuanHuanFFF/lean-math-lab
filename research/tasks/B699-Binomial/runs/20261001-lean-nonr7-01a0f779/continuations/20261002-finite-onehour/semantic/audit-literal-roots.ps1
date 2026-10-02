param(
  [Parameter(Mandatory=$true)][string]$Receipt,
  [Parameter(Mandatory=$true)][string[]]$Roots,
  [string[]]$ExactlyThreeRoots=@(),
  [Parameter(Mandatory=$true)][string]$Output
)
$ErrorActionPreference='Stop'
$r=Get-Content -LiteralPath $Receipt -Raw|ConvertFrom-Json
if($r.mode-ne'Lean'-or$r.status-ne'success'-or$r.exitCode-ne0-or-not$r.sourceUnchanged){throw 'Actual unchanged-source Lean success required'}
foreach($p in @($r.source,$r.sourceSnapshot)){
  if(-not$p-or-not(Test-Path -LiteralPath $p)-or(Get-FileHash -LiteralPath $p -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.sourceSha256){throw 'Source/snapshot hash mismatch'}
}
if(-not(Test-Path -LiteralPath $r.stdout)){throw 'Actual stdout missing'}
$raw=Get-Content -LiteralPath $r.stdout -Raw
$seen=@{}
$allowed=@('propext','Classical.choice','Quot.sound')
$pattern="'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)"
foreach($m in [regex]::Matches($raw,$pattern,[Text.RegularExpressions.RegexOptions]::Singleline)){
  $name=$m.Groups[1].Value
  if($seen.ContainsKey($name)){throw ('Duplicate axiom output '+$name)}
  $axioms=@($m.Groups[2].Value -split ','|ForEach-Object{$_.Trim()}|Where-Object{$_})
  if(@($axioms|Select-Object -Unique).Count-ne$axioms.Count){throw ('Duplicate axiom '+$name)}
  foreach($a in $axioms){if($a-notin$allowed){throw ('Forbidden transitive axiom '+$name+' -> '+$a)}}
  $seen[$name]=$axioms
}
foreach($name in $Roots){if(-not$seen.ContainsKey($name)){throw ('Missing actual axiom output '+$name)}}
foreach($name in $ExactlyThreeRoots){
  if(-not$seen.ContainsKey($name)-or(@($seen[$name]|Sort-Object)-join'|')-ne(@($allowed|Sort-Object)-join'|')){throw ('Final root must have exactly standard three axioms '+$name)}
}
$result=[ordered]@{utc=[DateTime]::UtcNow.ToString('o');status='accepted-literal-root-audit';roots=$Roots;exactlyThreeRoots=$ExactlyThreeRoots;actualAxioms=$seen;receipt=$Receipt;receiptSha256=(Get-FileHash -LiteralPath $Receipt -Algorithm SHA256).Hash.ToLowerInvariant();source=$r.source;sourceSha256=$r.sourceSha256;stdout=$r.stdout;stdoutSha256=(Get-FileHash -LiteralPath $r.stdout -Algorithm SHA256).Hash.ToLowerInvariant();arguments=$r.arguments;exitCode=$r.exitCode;auditScriptSha256=(Get-FileHash -LiteralPath $PSCommandPath -Algorithm SHA256).Hash.ToLowerInvariant()}
$result|ConvertTo-Json -Depth 6|Set-Content -LiteralPath $Output -Encoding utf8
[pscustomobject]@{status=$result.status;roots=$Roots.Count;output=$Output}|ConvertTo-Json -Compress
