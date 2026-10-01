param([Parameter(Mandatory=$true)][string]$Source,[Parameter(Mandatory=$true)][string]$ExpectedSourceSha256,[Parameter(Mandatory=$true)][string]$Module,[Parameter(Mandatory=$true)][string]$OriginalRoot,[ValidateSet('AllOriginal4883','RatioOriginal1000')][string]$Scope='AllOriginal4883',[int]$TreeMemoryMiB=1792,[int]$MinimumAvailableMiB=3072)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$sourcePath=if([IO.Path]::IsPathRooted($Source)){$Source}else{Join-Path $repo $Source}
if((Get-FileHash $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant()-ne$ExpectedSourceSha256.ToLowerInvariant()){throw 'Fixed final source hash differs'}
if($OriginalRoot-notmatch'^[A-Za-z0-9_.]+$'){throw 'Public root identifier must be explicit'}
$outputRoot=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-tail-twohour/runtime/objects'
$null=& (Join-Path $PSScriptRoot 'seed-objects.ps1') -Owner runtime -IncludeCurrent
$raw=(& (Join-Path $PSScriptRoot 'invoke-task.ps1') -Mode Lean -Source $sourcePath -OutputRoot $outputRoot -Label 'independent-fresh-original-source' -MemoryMiB 3132 -TreeMemoryMiB $TreeMemoryMiB -MinimumAvailableMiB $MinimumAvailableMiB -MinimumAvailableCommitMiB 4096 -PhysicalReserveMiB 900) -join "`n"
$compileExit=$LASTEXITCODE;$compile=$raw|ConvertFrom-Json
if($compileExit-ne0){throw ('Independent fresh source did not pass: '+$compile.receipt)}
$premises=if($Scope-eq'AllOriginal4883'){'4883 ≤ i → i < j → j ≤ n / 2 →'}else{'1000 ≤ i → i < j → j ≤ n / 2 → 4096 * i ≤ n →'}
$auditPath=Join-Path (Split-Path $PSScriptRoot) ('reviews/FinalTyped-'+$Scope+'.lean')
$audit="import $Module`n#check ($OriginalRoot : ∀ {n i j : Nat}, $premises ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)`n#print axioms $OriginalRoot`n"
Set-Content -LiteralPath $auditPath -Value $audit -Encoding utf8
$raw=(& (Join-Path $PSScriptRoot 'invoke-task.ps1') -Mode Lean -Source $auditPath -OutputRoot $outputRoot -NoObject -Label 'independent-original-type-and-axioms' -MemoryMiB 3132 -TreeMemoryMiB $TreeMemoryMiB -MinimumAvailableMiB $MinimumAvailableMiB -MinimumAvailableCommitMiB 4096 -PhysicalReserveMiB 900) -join "`n"
$auditExit=$LASTEXITCODE;$typeRun=$raw|ConvertFrom-Json
if($auditExit-ne0){throw ('Canonical original type audit did not pass: '+$typeRun.receipt)}
$axiomEvidence=Join-Path (Split-Path $typeRun.receipt) 'refusal-axiom-audit.json'
$null=& (Join-Path $PSScriptRoot 'audit-axiom-output.ps1') -Receipt $typeRun.receipt -Roots @($OriginalRoot) -Output $axiomEvidence
$raw=(& (Join-Path $PSScriptRoot 'invoke-checker.ps1') -Module $Module -Source $sourcePath -OutputRoot $outputRoot -TreeMemoryMiB $TreeMemoryMiB -MinimumAvailableMiB $MinimumAvailableMiB) -join "`n"
$checkerExit=$LASTEXITCODE;$checker=$raw|ConvertFrom-Json
if($checkerExit-ne0){throw ('Actual checker replay did not pass: '+$checker.receipt)}
if((Get-FileHash $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant()-ne$ExpectedSourceSha256.ToLowerInvariant()){throw 'Final source changed across validation'}
$packet=[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');status='fresh-original-source-type-axiom-and-checker-accepted';verifier='runtime_review';scope=$Scope;originalRoot=$OriginalRoot;source=$sourcePath;sourceSha256=$ExpectedSourceSha256;freshCompileReceipt=$compile.receipt;typedAxiomReceipt=$typeRun.receipt;refusalAudit=$axiomEvidence;checkerReceipt=$checker.receipt;checker='pinned leanchecker normal same-kernel replay; no second implementation, imported environments trusted';fullOriginalIndicesScope=if($Scope-eq'AllOriginal4883'){'every natural i>=4883, subject to historical coverage overlap'}else{'none; n>=4096*i region only'}}
$packet|ConvertTo-Json -Depth 5|Set-Content -LiteralPath (Join-Path $PSScriptRoot ('final-'+$Scope+'-validation.json')) -Encoding utf8
$packet|ConvertTo-Json -Compress
