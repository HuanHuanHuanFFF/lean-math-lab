$ErrorActionPreference='Stop'
$repo=(Get-Location).Path
$own='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite'
$dest=$own+'/alternative'
$old='research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean'
$low='research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/TrialPrimeCheck.lean'
$module='research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite'
$oldModule='research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean'
$lowModule='research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck'
$utf8=[Text.UTF8Encoding]::new($false)
$map=[Collections.Generic.List[object]]::new()
function Save([string]$relative,[string]$text){$path=Join-Path $repo $relative; New-Item -ItemType Directory -Force -Path (Split-Path -Parent $path)|Out-Null;[IO.File]::WriteAllText($path,$text,$utf8)}
function Rename-Body([string]$text){$text.Replace('B699MiddleExtension','B699AltExtension20261002').Replace('B699LowIndex','B699AltLow20261002').Replace('B699MiddleIndex','B699Finite20261002').Replace('B699Middle','B699AltMiddle20261002')}
function Hash-Text([string]$text){$sha=[Security.Cryptography.SHA256]::Create(); try{return [Convert]::ToHexString($sha.ComputeHash($utf8.GetBytes($text))).ToLowerInvariant()}finally{$sha.Dispose()}}
function Port([string]$source,[string]$target){
  $original=[IO.File]::ReadAllText((Join-Path $repo $source))
  $start=$original.IndexOf('namespace ')
  $oldBody=$original.Substring($start)
  $newBody=Rename-Body $oldBody
  $head=$original.Substring(0,$start)
  $head=$head.Replace($lowModule,$module+'.alternative.TrialPrimeCheck').Replace($oldModule+'.extension.',$module+'.alternative.').Replace($oldModule+'.PrimeChain',$module+'.alternative.ChainEnd').Replace($oldModule+'.SmallPrimeCount',$module+'.alternative.TrialComplete')
  $head=[regex]::Replace($head,'(?m)^import ','public import ')
  $text="module`n"+$head+"@[expose] public section`n"+$newBody
  Save ($dest+'/'+$target) $text
  $map.Add([pscustomobject]@{source=$source;sourceSha256=(Get-FileHash -LiteralPath (Join-Path $repo $source) -Algorithm SHA256).Hash.ToLowerInvariant();target=$dest+'/'+$target;targetSha256=Hash-Text $text;bodyByteStart=$utf8.GetByteCount($original.Substring(0,$start));oldBodySha256=Hash-Text $oldBody;renamedBodySha256=Hash-Text $newBody;bodyMatchesExpectedRenaming=$true;changes='module/public imports/expose; fixed namespace substitutions; PrimePrimorial target uses new ChainCore type; no proof tactic or math body edits'})
}
Port $low 'TrialPrimeCheck.lean'
Port ($old+'/extension/PrimeBasis.lean') 'PrimeBasis.lean'
Port ($old+'/extension/PrimeBasisCoverage.lean') 'PrimeBasisCoverage.lean'
Port ($old+'/extension/basis/BasisData.lean') 'basis/BasisData.lean'
0..9|ForEach-Object {$name='Coverage'+$_.ToString('00')+'.lean'; Port ($old+'/extension/basis/'+$name) ('basis/'+$name)}
Port ($old+'/extension/PrimeBasis4473.lean') 'PrimeBasis4473.lean'
Port ($old+'/extension/PrimePrimorial.lean') 'PrimePrimorial.lean'
Port ($old+'/extension/primorial/PrimorialData.lean') 'primorial/PrimorialData.lean'
# Extract exactly the accepted completeness theorem; discard unrelated count consumer imports.
$source=$old+'/SmallPrimeCount.lean'
$original=[IO.File]::ReadAllText((Join-Path $repo $source))
$start=$original.IndexOf('theorem trialPrimeCheck_complete')
$end=$original.IndexOf('theorem trialPrimeCheck_false')
$body=$original.Substring($start,$end-$start)
$text="module`npublic import $module.alternative.TrialPrimeCheck`nset_option autoImplicit false`nset_option relaxedAutoImplicit false`nset_option Elab.async false`n@[expose] public section`nnamespace B699AltMiddle20261002`nopen B699AltLow20261002`n"+$body+"end B699AltMiddle20261002`n#print axioms B699AltMiddle20261002.trialPrimeCheck_complete`n"
Save ($dest+'/TrialComplete.lean') $text
$map.Add([pscustomobject]@{source=$source;sourceSha256=(Get-FileHash -LiteralPath (Join-Path $repo $source) -Algorithm SHA256).Hash.ToLowerInvariant();target=$dest+'/TrialComplete.lean';targetSha256=Hash-Text $text;bodyByteStart=$utf8.GetByteCount($original.Substring(0,$start));bodyByteLength=$utf8.GetByteCount($body);oldBodySha256=Hash-Text $body;renamedBodySha256=Hash-Text $body;bodyMatchesExpectedRenaming=$true;changes='exact theorem body extraction, new namespace/import; omit unrelated count consumer'})
$text="module`npublic import $module.ChainCore`nset_option autoImplicit false`nset_option relaxedAutoImplicit false`nset_option Elab.async false`n@[expose] public section`nnamespace B699Finite20261002`ndef chainEnd : Nat → List Nat → Nat`n  | p, [] => p`n  | _, q :: qs => chainEnd q qs`nend B699Finite20261002`n"
Save ($dest+'/ChainEnd.lean') $text
$values=(Get-Content -LiteralPath ($own+'/pilot-source-map.json') -Raw|ConvertFrom-Json).selected
$lines=[Collections.Generic.List[string]]::new()
$lines.Add('module');$lines.Add('public import '+$module+'.alternative.primorial.PrimorialData')
$lines.Add('set_option autoImplicit false');$lines.Add('set_option relaxedAutoImplicit false');$lines.Add('set_option Elab.async false');$lines.Add('set_option maxRecDepth 8192');$lines.Add('set_option maxHeartbeats 4000000');$lines.Add('@[expose] public section');$lines.Add('namespace B699Finite20261002.GcdPilot32');$lines.Add('open B699AltExtension20261002')
for($k=0;$k -lt $values.Count;$k++){
  $lines.Add("theorem prime$k : Nat.Prime $($values[$k]) := by")
  $lines.Add('  exact primorialPrimeCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473)')
  $lines.Add('    basis4473_complete basis4473_prod_eq (by decide +kernel)')
}
$lines.Add("theorem chain : B699Finite20261002.PrimeChain 4883 $($values[0]) $($values[$values.Count-1]) := by")
for($k=0;$k -lt $values.Count-1;$k++){$lines.Add("  refine .step prime$k (by decide) (by decide) ?_")}
$lines.Add("  exact .singleton prime$($values.Count-1)");$lines.Add('end B699Finite20261002.GcdPilot32');$lines.Add('#print axioms B699Finite20261002.GcdPilot32.chain')
Save ($dest+'/GcdPilot32.lean') (($lines -join "`n")+"`n")
$map|ConvertTo-Json -Depth 5|Set-Content -LiteralPath ($dest+'/port-source-map.json') -Encoding utf8
[pscustomobject]@{portedCount=$map.Count;sourcePrepared=$true;executedLean=$false;fullSparseChainGenerated=$false}|ConvertTo-Json
