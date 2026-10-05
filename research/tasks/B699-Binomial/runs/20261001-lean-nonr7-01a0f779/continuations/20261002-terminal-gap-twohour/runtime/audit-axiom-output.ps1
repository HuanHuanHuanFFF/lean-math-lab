param([Parameter(Mandatory=$true)][string]$Receipt,[Parameter(Mandatory=$true)][string[]]$Roots,[Parameter(Mandatory=$true)][string]$Output)
$ErrorActionPreference='Stop'
$r=Get-Content -LiteralPath $Receipt -Raw|ConvertFrom-Json
if($r.mode-ne'Lean'-or$r.status-ne'success'-or$r.exitCode-ne0-or-not$r.sourceUnchanged){throw 'Actual unchanged-source Lean success is required'}
foreach($p in @($r.source,$r.sourceSnapshot)){if(-not$p-or(Get-FileHash -LiteralPath $p -Algorithm SHA256).Hash.ToLowerInvariant()-ne$r.sourceSha256){throw 'Actual source/snapshot binding differs'}}
$text=Get-Content -LiteralPath $r.stdout -Raw
$seen=@{}
$pattern="'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)"
foreach($m in [regex]::Matches($text,$pattern,[Text.RegularExpressions.RegexOptions]::Singleline)){
  $name=$m.Groups[1].Value
  if($seen.ContainsKey($name)){throw ('Duplicate axiom output: '+$name)}
  $axioms=@($m.Groups[2].Value -split ','|ForEach-Object{$_.Trim()}|Where-Object{$_})
  foreach($a in $axioms){if($a-notin@('propext','Classical.choice','Quot.sound')){throw ('Forbidden transitive axiom: '+$name+' -> '+$a)}}
  $seen[$name]=$axioms
}
foreach($name in $Roots){if(-not$seen.ContainsKey($name)){throw ('Missing actual transitive axiom output: '+$name)}}
$result=[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');status='accepted-standard-axioms';roots=$Roots;actualAxioms=$seen;receipt=$Receipt;receiptSha256=(Get-FileHash $Receipt -Algorithm SHA256).Hash.ToLowerInvariant();source=$r.source;sourceSha256=$r.sourceSha256;stdout=$r.stdout;stdoutSha256=(Get-FileHash $r.stdout -Algorithm SHA256).Hash.ToLowerInvariant();arguments=$r.arguments;exitCode=$r.exitCode}
$result|ConvertTo-Json -Depth 5|Set-Content -LiteralPath $Output -Encoding utf8
[pscustomobject]@{status=$result.status;roots=$Roots.Count;output=$Output}|ConvertTo-Json -Compress
