[CmdletBinding()]
param(
  [ValidateSet('Pilot','Batch','Full')][string]$Mode='Pilot',
  [ValidateRange(0,10000)][int]$StartNode=0,
  [ValidateRange(2,128)][int]$NodeCount=32
)
$ErrorActionPreference='Stop'
$repo=(Get-Location).Path
$sourceRel='research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/extension/primeChain/blocks'
$targetRel='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite'
$module='research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite'
$files=@(Get-ChildItem -LiteralPath $sourceRel -Filter '*.lean' -File | Sort-Object Name)
if($Mode -eq 'Pilot'){$files=@($files | Select-Object -Last 4)}
$nodes=[Collections.Generic.List[int]]::new()
if($Mode -ne 'Pilot'){$nodes.Add(2)}
$sourceMap=[Collections.Generic.List[object]]::new()
foreach($file in $files){
  $text=[IO.File]::ReadAllText($file.FullName)
  $sourceMap.Add([pscustomobject]@{path=[IO.Path]::GetRelativePath($repo,$file.FullName);bytes=$file.Length;sha256=(Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash.ToLowerInvariant()})
  foreach($match in [regex]::Matches($text,'def tail\d+ : List Nat := \[([^\]]+)\]')){
    foreach($token in $match.Groups[1].Value.Split(',')){$nodes.Add([int]$token.Trim())}
  }
}
# This is selection from given source literals, not a prime test or prime search.
$chosen=[Collections.Generic.List[int]]::new()
$chosen.Add($nodes[0])
$cursor=1
while($cursor -lt $nodes.Count){
  $limit=$chosen[$chosen.Count-1]+4883
  $end=$cursor
  while($end -lt $nodes.Count -and $nodes[$end] -le $limit){$end++}
  if($end -eq $cursor){throw 'Source literals contain an uncovered selection edge'}
  $chosen.Add($nodes[$end-1]);$cursor=$end
  if($Mode -eq 'Pilot' -and $chosen.Count -eq 32){break}
}
if($Mode -ne 'Pilot' -and ($chosen[0] -ne 2 -or $chosen[$chosen.Count-1] -ne 20000093)){throw 'Unexpected frozen endpoints'}
$utf8=[Text.UTF8Encoding]::new($false)
function Write-Block([string]$name,[int[]]$values){
  $lines=[Collections.Generic.List[string]]::new()
  $lines.Add('module')
  $lines.Add('public import '+$module+'.ChainCore')
  $lines.Add('public import Mathlib.Tactic.NormNum.Prime')
  $lines.Add('set_option autoImplicit false')
  $lines.Add('set_option relaxedAutoImplicit false')
  $lines.Add('set_option Elab.async false')
  $lines.Add('set_option maxRecDepth 8192')
  $lines.Add('set_option maxHeartbeats 4000000')
  $lines.Add('@[expose] public section')
  $lines.Add('namespace B699Finite20261002.'+$name)
  for($k=0;$k -lt $values.Count;$k++){$lines.Add("theorem prime$k : Nat.Prime $($values[$k]) := by norm_num")}
  $lines.Add("theorem chain : B699Finite20261002.PrimeChain 4883 $($values[0]) $($values[$values.Count-1]) := by")
  for($k=0;$k -lt $values.Count-1;$k++){$lines.Add("  refine .step prime$k (by decide) (by decide) ?_")}
  $lines.Add("  exact .singleton prime$($values.Count-1)")
  $lines.Add('end B699Finite20261002.'+$name)
  $lines.Add('#print axioms B699Finite20261002.'+$name+'.chain')
  $target=Join-Path $targetRel ($name+'.lean')
  [IO.File]::WriteAllText((Join-Path $repo $target),($lines -join "`n")+"`n",$utf8)
  return $target
}
$outputs=[Collections.Generic.List[object]]::new()
if($Mode -eq 'Pilot'){
  $path=Write-Block 'Pilot32' $chosen.ToArray()
  $outputs.Add([pscustomobject]@{path=$path;lo=$chosen[0];hi=$chosen[$chosen.Count-1];nodeCount=$chosen.Count})
}elseif($Mode -eq 'Batch'){
  if($StartNode+$NodeCount -gt $chosen.Count){throw 'Requested batch exceeds the frozen-literal selection'}
  $values=$chosen.GetRange($StartNode,$NodeCount).ToArray()
  $name='Batch'+$StartNode.ToString('00000')
  $path=Write-Block $name $values
  $outputs.Add([pscustomobject]@{path=$path;name=$name;lo=$values[0];hi=$values[$values.Count-1];nodeCount=$values.Count})
}else{
  for($start=0;$start -lt $chosen.Count-1;$start+=31){
    $last=[Math]::Min($start+31,$chosen.Count-1)
    $values=$chosen.GetRange($start,$last-$start+1).ToArray()
    $name='Block'+($outputs.Count.ToString('000'))
    $path=Write-Block $name $values
    $outputs.Add([pscustomobject]@{path=$path;name=$name;lo=$values[0];hi=$values[$values.Count-1];nodeCount=$values.Count})
  }
  $lines=[Collections.Generic.List[string]]::new()
  $lines.Add('module')
  foreach($output in $outputs){$lines.Add('public import '+$module+'.'+$output.name)}
  $lines.Add('set_option autoImplicit false')
  $lines.Add('set_option relaxedAutoImplicit false')
  $lines.Add('set_option Elab.async false')
  $lines.Add('@[expose] public section')
  $lines.Add('namespace B699Finite20261002')
  $current=@($outputs | ForEach-Object { [pscustomobject]@{lo=$_.lo;hi=$_.hi;term=$_.name+'.chain'} })
  $level=0
  while($current.Count -gt 1){
    $next=[Collections.Generic.List[object]]::new()
    for($k=0;$k -lt $current.Count;$k+=2){
      if($k+1 -eq $current.Count){$next.Add($current[$k]);continue}
      $left=$current[$k];$right=$current[$k+1]
      if($left.hi -ne $right.lo){throw 'Disconnected block endpoints'}
      $name="join$($level)_$($k/2)"
      $lines.Add("theorem $name : PrimeChain 4883 $($left.lo) $($right.hi) :=")
      $lines.Add("  PrimeChain.trans $($left.term) $($right.term)")
      $next.Add([pscustomobject]@{lo=$left.lo;hi=$right.hi;term=$name})
    }
    $current=$next.ToArray();$level++
  }
  $lines.Add('theorem complete_chain : PrimeChain 4883 2 20000093 := '+$current[0].term)
  $lines.Add('end B699Finite20261002')
  $lines.Add('#print axioms B699Finite20261002.complete_chain')
  [IO.File]::WriteAllText((Join-Path $repo (Join-Path $targetRel 'CompleteChain.lean')),($lines -join "`n")+"`n",$utf8)
}
$record=[pscustomobject]@{mode=$Mode;generationUtc=[DateTime]::UtcNow.ToString('o');source=$sourceMap.ToArray();sourceNodeCount=$nodes.Count;selected=$chosen.ToArray();selectedCount=$chosen.Count;outputs=$outputs.ToArray();selectionRule='greedy farthest frozen literal <= predecessor+4883; no primality computation';executedLean=$false}
$mapName=if($Mode -eq 'Batch'){'batch'+$StartNode.ToString('00000')+'-source-map.json'}else{$Mode.ToLowerInvariant()+'-source-map.json'}
[IO.File]::WriteAllText((Join-Path $repo (Join-Path $targetRel $mapName)),($record|ConvertTo-Json -Depth 7),$utf8)
[pscustomobject]@{mode=$Mode;sourceNodeCount=$nodes.Count;selectedCount=$chosen.Count;outputCount=$outputs.Count;lo=$chosen[0];hi=$chosen[$chosen.Count-1];executedLean=$false}|ConvertTo-Json
