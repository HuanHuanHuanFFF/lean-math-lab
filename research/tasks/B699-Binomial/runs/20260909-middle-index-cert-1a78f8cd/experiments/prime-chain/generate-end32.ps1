param([int]$EdgeCount = 32)
$ErrorActionPreference = 'Stop'
if ($EdgeCount -ne 32) { throw 'This first checkpoint generator is bounded to exactly 32 edges.' }
$runRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$inputPath = Join-Path $runRoot 'inputs/compact/outputs/prime_chain_2m_gap322.txt'
$allNodes = @(Get-Content -LiteralPath $inputPath | Where-Object { $_.Trim() -ne '' } | ForEach-Object { [int]::Parse($_) })
$nodes = @($allNodes | Select-Object -Last ($EdgeCount + 1))
$leanDirectory = Join-Path $runRoot 'lean/primeChain'
$baseImport = 'import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core'
$normLines = [System.Collections.Generic.List[string]]::new()
$normLines.Add($baseImport)
$normLines.Add('import Mathlib.Tactic.NormNum.Prime')
$normLines.Add('')
$normLines.Add('set_option autoImplicit false')
$normLines.Add('set_option relaxedAutoImplicit false')
$normLines.Add('set_option maxRecDepth 8192')
$normLines.Add('set_option maxHeartbeats 4000000')
$normLines.Add('')
$normLines.Add('/-! First bounded cost probe: the actual final 32 edges, split into two blocks.')
$normLines.Add('Generated from the supplied chain without externally rechecking primality.')
$normLines.Add('The individual norm_num proof terms and their composition must pass Lean. -/')
$normLines.Add('namespace B699MiddleIndex.EndBlockNormNum')
$normLines.Add('')
for ($idx = 0; $idx -lt $nodes.Count; $idx++) {
  $normLines.Add("theorem nodePrime$idx : Nat.Prime $($nodes[$idx]) := by norm_num")
}
foreach ($block in @(@{Name='left';Start=0;End=16}, @{Name='right';Start=16;End=32})) {
  $normLines.Add('')
  $normLines.Add("theorem $($block.Name) : PrimeChain 322 $($nodes[$block.Start]) $($nodes[$block.End]) := by")
  for ($idx = $block.Start; $idx -lt $block.End; $idx++) {
    $normLines.Add("  refine PrimeChain.step (q := $($nodes[$idx+1])) nodePrime$idx (by decide) (by decide) ?_")
  }
  $normLines.Add("  exact .singleton nodePrime$($block.End)")
}
$normLines.Add('')
$normLines.Add("theorem joined : PrimeChain 322 $($nodes[0]) $($nodes[32]) := left.trans right")
$normLines.Add('')
$normLines.Add('end B699MiddleIndex.EndBlockNormNum')
$normLines.Add('')
$normLines.Add('#print axioms B699MiddleIndex.EndBlockNormNum.joined')
$normPath = Join-Path $leanDirectory 'End32NormNum.lean'
[System.IO.File]::WriteAllText($normPath, ($normLines -join "`n") + "`n", [System.Text.UTF8Encoding]::new($false))

$trialLines = [System.Collections.Generic.List[string]]::new()
$trialLines.Add($baseImport)
$trialLines.Add('')
$trialLines.Add('set_option autoImplicit false')
$trialLines.Add('set_option relaxedAutoImplicit false')
$trialLines.Add('set_option maxRecDepth 8192')
$trialLines.Add('set_option maxHeartbeats 4000000')
$trialLines.Add('')
$trialLines.Add('/-! Same actual final 32 edges, using the accepted square-root trial checker.')
$trialLines.Add('This candidate is not accepted merely because the input list was generated. -/')
$trialLines.Add('namespace B699MiddleIndex.EndBlockTrial')
foreach ($block in @(@{Name='left';Start=0;End=16}, @{Name='right';Start=16;End=32})) {
  $tail = @($nodes[($block.Start+1)..$block.End]) -join ', '
  $trialLines.Add('')
  $trialLines.Add("def $($block.Name)Nodes : List Nat := [$tail]")
  $trialLines.Add("theorem $($block.Name)Check : trialChainCheck 322 $($nodes[$block.Start]) $($block.Name)Nodes = true := by")
  $trialLines.Add('  decide')
  $trialLines.Add("theorem $($block.Name) : PrimeChain 322 $($nodes[$block.Start]) $($nodes[$block.End]) :=")
  $trialLines.Add("  trialChainCheck_sound $($block.Name)Check")
}
$trialLines.Add('')
$trialLines.Add("theorem joined : PrimeChain 322 $($nodes[0]) $($nodes[32]) := left.trans right")
$trialLines.Add('')
$trialLines.Add('end B699MiddleIndex.EndBlockTrial')
$trialLines.Add('')
$trialLines.Add('#print axioms B699MiddleIndex.EndBlockTrial.joined')
$trialPath = Join-Path $leanDirectory 'End32Trial.lean'
[System.IO.File]::WriteAllText($trialPath, ($trialLines -join "`n") + "`n", [System.Text.UTF8Encoding]::new($false))

$consumer = @"
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.End32NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleIndex

/-- Concrete final block and its two-block gluing, connected to the raw target.
This covers only the displayed rows, not all rows up to two million. -/
theorem common_of_last32_prime_edges {n i j : Nat}
    (hi : 323 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnlo : $($nodes[0]) ≤ n) (hnhi : n ≤ 2000000) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  exact common_of_prime_chain EndBlockNormNum.joined (by omega) hnlo (by omega)
    (by omega) hij hjn

end B699MiddleIndex

#print axioms B699MiddleIndex.common_of_last32_prime_edges
"@
$consumerPath = Join-Path $leanDirectory 'End32Consumer.lean'
[System.IO.File]::WriteAllText($consumerPath, $consumer.Replace("`r`n","`n") + "`n", [System.Text.UTF8Encoding]::new($false))
$files = @($normPath, $trialPath, $consumerPath)
$manifest = [ordered]@{
  generatedUtc = [DateTime]::UtcNow.ToString('o')
  generationOnly = $true
  externalPrimalityCheckRun = $false
  leanRun = $false
  source = $inputPath
  sourceSha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $inputPath).Hash.ToLowerInvariant()
  inputNodeCount = $allNodes.Count
  generatedEdgeCount = $EdgeCount
  first = $nodes[0]
  midpoint = $nodes[16]
  last = $nodes[32]
  generatedFiles = @($files | ForEach-Object { @{path=$_;sha256=(Get-FileHash -Algorithm SHA256 -LiteralPath $_).Hash.ToLowerInvariant()} })
}
$manifest | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $PSScriptRoot 'end32-generation.json') -Encoding utf8
$manifest | ConvertTo-Json -Depth 6
