param([Parameter(Mandatory=$true)][string]$Module,[Parameter(Mandatory=$true)][string]$Source,[string]$OutputRoot,[switch]$Fresh,[int]$TreeMemoryMiB=1792,[int]$MinimumAvailableMiB=3072,[int]$TimeoutSeconds=300)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$objRoot=if($OutputRoot){if([IO.Path]::IsPathRooted($OutputRoot)){[IO.Path]::GetFullPath($OutputRoot)}else{[IO.Path]::GetFullPath((Join-Path $repo $OutputRoot))}}else{Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-tail-twohour/runtime/objects'}
$sourcePath=if([IO.Path]::IsPathRooted($Source)){$Source}else{Join-Path $repo $Source}
$modulePath=($Module.Replace('«','').Replace('»','')).Replace('.', [IO.Path]::DirectorySeparatorChar)+'.olean'
$obj=Join-Path $objRoot $modulePath
if(-not(Test-Path -LiteralPath $obj)){throw ('Exact module object missing: '+$obj)}
$before=(Get-FileHash $obj -Algorithm SHA256).Hash.ToLowerInvariant()
$parts=@();foreach($part in @($obj,($obj+'.server'),($obj+'.private'))){if(Test-Path -LiteralPath $part){$parts+=[pscustomobject]@{path=$part;bytes=(Get-Item $part).Length;sha256=(Get-FileHash $part -Algorithm SHA256).Hash.ToLowerInvariant()}}}
$exe=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime/toolchain/bin/leanchecker.exe'
$argsForChecker=@('-v');if($Fresh){$argsForChecker+='--fresh'};$argsForChecker+=$Module
$raw=(& (Join-Path $PSScriptRoot 'invoke-task.ps1') -Mode Command -Source $sourcePath -Executable $exe -Arguments $argsForChecker -OutputRoot $objRoot -Label ('independent-checker-'+[IO.Path]::GetFileNameWithoutExtension($sourcePath)) -TreeMemoryMiB $TreeMemoryMiB -MinimumAvailableMiB $MinimumAvailableMiB -MemoryMiB 3132 -PhysicalReserveMiB 900 -MinimumAvailableCommitMiB 4096 -TimeoutSeconds $TimeoutSeconds) -join "`n"
$exit=$LASTEXITCODE
$run=$raw|ConvertFrom-Json
$actual=Get-Content -LiteralPath $run.receipt -Raw|ConvertFrom-Json
$after=(Get-FileHash $obj -Algorithm SHA256).Hash.ToLowerInvariant()
if($before-ne$after){throw 'Compiled object changed during checker replay'}
foreach($part in $parts){if((Get-FileHash $part.path -Algorithm SHA256).Hash.ToLowerInvariant()-ne$part.sha256){throw ('Checker module part changed: '+$part.path)}}
$result=[pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');verifier='runtime_review';checker='pinned leanchecker same-kernel replay, not second implementation';fresh=[bool]$Fresh;module=$Module;source=$sourcePath;sourceSha256=(Get-FileHash $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant();object=$obj;objectSha256=$before;checkerExe=$exe;checkerExeSha256=(Get-FileHash $exe -Algorithm SHA256).Hash.ToLowerInvariant();arguments=$actual.arguments;exitCode=$actual.exitCode;receipt=$run.receipt;receiptSha256=(Get-FileHash $run.receipt -Algorithm SHA256).Hash.ToLowerInvariant();stdout=$actual.stdout;stdoutSha256=if($actual.stdout){(Get-FileHash $actual.stdout -Algorithm SHA256).Hash.ToLowerInvariant()}else{$null};stderr=$actual.stderr;stderrSha256=if($actual.stderr){(Get-FileHash $actual.stderr -Algorithm SHA256).Hash.ToLowerInvariant()}else{$null};peakTreeWorkingSetBytes=$actual.peakTreeWorkingSetBytes}
$result|Add-Member -NotePropertyName objectParts -NotePropertyValue $parts
$result|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path (Split-Path $run.receipt) 'checker-evidence.json') -Encoding utf8
$result|Select-Object module,fresh,exitCode,objectSha256,receipt|ConvertTo-Json -Compress
exit $exit
