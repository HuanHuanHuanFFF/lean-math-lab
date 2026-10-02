[CmdletBinding()]
param(
  [Parameter(Mandatory=$true)][string]$BuildRecord,
  [string[]]$AuditSources=@(),
  [switch]$CurrentRunRoots,
  [Parameter(Mandatory=$true)][string]$Output
)
$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
$build=Get-Content -LiteralPath $BuildRecord -Raw|ConvertFrom-Json
if($build.status -ne 'success'){throw 'Build record is not successful'}
if($AuditSources.Count -eq 0){$AuditSources=@($build.orderedSources)}
if($CurrentRunRoots){$AuditSources=@($AuditSources|Where-Object{[IO.Path]::GetFullPath($_).StartsWith($PSScriptRoot+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)})}
$allow=@('propext','Classical.choice','Quot.sound')
$expected=[Collections.Generic.HashSet[string]]::new()
$sources=@()
foreach($source in $AuditSources) {
  $abs=if([IO.Path]::IsPathRooted($source)){[IO.Path]::GetFullPath($source)}else{[IO.Path]::GetFullPath((Join-Path $repo $source))}
  $scopes=[Collections.Generic.List[object]]::new()
  foreach($line in [IO.File]::ReadAllLines($abs)) {
    $trimmed=$line.Trim()
    if($trimmed -match '^namespace\s+(\S+)'){$scopes.Add(@{kind='namespace';name=$Matches[1]})}
    elseif($trimmed -match '^(?:noncomputable\s+)?section(?:\s+(\S+))?\s*$'){$scopes.Add(@{kind='section';name=$Matches[1]})}
    elseif($trimmed -match '^end(?:\s+(\S+))?\s*$'){
      if($scopes.Count -gt 0){$scopes.RemoveAt($scopes.Count-1)}
    }
    elseif($trimmed -match '^#print axioms (\S+)'){
      $name=$Matches[1]
      if($name.StartsWith('_root_.')){$name=$name.Substring(7)}
      elseif(-not $name.Contains('.')) {
        $prefix=(@($scopes|Where-Object{$_.kind -eq 'namespace'}|ForEach-Object{$_.name}) -join '.')
        if($prefix){$name=$prefix+'.'+$name}
      }
      [void]$expected.Add($name)
    }
  }
  $sources+=@{path=$abs;sha256=(Get-FileHash -LiteralPath $abs -Algorithm SHA256).Hash.ToLowerInvariant()}
}
if($expected.Count -eq 0){throw 'No expected axiom roots'}
$allText=[Text.StringBuilder]::new();$receipts=@()
foreach($entry in $build.records) {
  foreach($objectFile in $entry.objectFiles) {
    if(-not (Test-Path -LiteralPath $objectFile.path) -or (Get-FileHash -LiteralPath $objectFile.path -Algorithm SHA256).Hash.ToLowerInvariant() -ne $objectFile.sha256){throw "Changed local object sidecar: $($objectFile.path)"}
  }
  $r=Get-Content -LiteralPath $entry.receipt -Raw|ConvertFrom-Json
  if($r.status -ne 'success' -or $r.exitCode -ne 0 -or -not $r.sourceUnchanged){throw "Unaccepted receipt: $($entry.receipt)"}
  if((Get-FileHash -LiteralPath $r.source -Algorithm SHA256).Hash.ToLowerInvariant() -ne $r.sourceSha256){throw "Changed source: $($r.source)"}
  if(-not $r.object -or -not (Test-Path -LiteralPath $r.object)){throw "Missing object: $($r.source)"}
  if((Get-FileHash -LiteralPath $r.object -Algorithm SHA256).Hash.ToLowerInvariant() -ne $r.objectSha256){throw "Changed object: $($r.object)"}
  $stdout=[IO.File]::ReadAllText($r.stdout)
  $stderr=[IO.File]::ReadAllText($r.stderr)
  if(($stdout+$stderr) -match '(?i)\berror:|sorryAx|Lean\.ofReduceBool'){throw "Compiler/policy failure: $($entry.receipt)"}
  [void]$allText.AppendLine($stdout)
  $receipts+=@{receipt=$entry.receipt;receiptSha256=(Get-FileHash -LiteralPath $entry.receipt -Algorithm SHA256).Hash.ToLowerInvariant();source=$r.source;sourceSha256=$r.sourceSha256;object=$r.object;objectSha256=$r.objectSha256;stdout=$r.stdout;stdoutSha256=(Get-FileHash -LiteralPath $r.stdout -Algorithm SHA256).Hash.ToLowerInvariant();stderr=$r.stderr;stderrSha256=(Get-FileHash -LiteralPath $r.stderr -Algorithm SHA256).Hash.ToLowerInvariant();exitCode=$r.exitCode;arguments=$r.arguments}
}
$found=@{}
foreach($match in [regex]::Matches($allText.ToString(),"'([^']+)'\s+depends on axioms:\s*\[([^\]]*)\]",'Singleline')) {
  $name=$match.Groups[1].Value
  $axioms=@($match.Groups[2].Value.Split(',')|ForEach-Object{$_.Trim()}|Where-Object{$_})
  if(-not $found.ContainsKey($name)){$found[$name]=[Collections.Generic.HashSet[string]]::new()}
  foreach($axiom in $axioms){[void]$found[$name].Add($axiom)}
}
foreach($match in [regex]::Matches($allText.ToString(),"'([^']+)'\s+does not depend on any axioms")){
  $name=$match.Groups[1].Value
  if(-not $found.ContainsKey($name)){$found[$name]=[Collections.Generic.HashSet[string]]::new()}
}
$accepted=@{}
foreach($name in $expected) {
  if(-not $found.ContainsKey($name)){throw "Missing actual axiom output: $name"}
  foreach($axiom in $found[$name]){if($axiom -notin $allow){throw "Unexpected transitive axiom $axiom in $name"}}
  $accepted[$name]=@($found[$name]|Sort-Object)
}
$result=[ordered]@{status='accepted';utc=[DateTime]::UtcNow.ToString('o');verifier='/root/critical_verify';buildRecord=$BuildRecord;buildRecordSha256=(Get-FileHash -LiteralPath $BuildRecord -Algorithm SHA256).Hash.ToLowerInvariant();rootCount=$expected.Count;axioms=$accepted;auditSources=$sources;receipts=$receipts;sourceBaseline='8685508c19d73a0dbf8e07339b72bac35e6899ce';leanToolchain=([IO.File]::ReadAllText((Join-Path $repo 'lean-toolchain')).Trim());manifestSha256=(Get-FileHash -LiteralPath (Join-Path $repo 'lake-manifest.json') -Algorithm SHA256).Hash.ToLowerInvariant();runtimeEnvironmentReceiptSha256=(Get-FileHash -LiteralPath (Join-Path $repo 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-tail-twohour/runtime/environment-receipt.json') -Algorithm SHA256).Hash.ToLowerInvariant();auditScriptSha256=(Get-FileHash -LiteralPath $PSCommandPath -Algorithm SHA256).Hash.ToLowerInvariant();remainingOriginalRegion='unbounded i>=4883; infinite Gap supply not established';fullOriginalIndexIncrement=0}
$result.rootScope=if($CurrentRunRoots){'current-run-public-roots-transitive-axioms'}else{'all-source-explicit-prints'}
$result|ConvertTo-Json -Depth 12|Set-Content -LiteralPath $Output -Encoding utf8
[pscustomobject]@{status='accepted';roots=$expected.Count;output=$Output}|ConvertTo-Json
