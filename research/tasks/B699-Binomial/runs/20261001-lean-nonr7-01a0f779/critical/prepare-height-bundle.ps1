$ErrorActionPreference='Stop'
$repo=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../..'))
$height=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'height-plan.json') -Raw|ConvertFrom-Json
$base=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'base-plan.json') -Raw|ConvertFrom-Json
$baseSet=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
foreach($path in $base.orderedSources){[void]$baseSet.Add($path)}
$own=[IO.Path]::GetFullPath($PSScriptRoot)+[IO.Path]::DirectorySeparatorChar
$selected=@($height.orderedSources|Where-Object{-not $baseSet.Contains($_) -and -not $_.StartsWith($own,[StringComparison]::OrdinalIgnoreCase)})
if(-not ('B699ScopeStripper' -as [type])) {
  Add-Type -TypeDefinition @'
using System.Text;
public static class B699ScopeStripper {
 public static string Strip(string s) {
  var b=new StringBuilder(); int depth=0; bool str=false,line=false,escape=false;
  for(int i=0;i<s.Length;i++) {
   char c=s[i],n=i+1<s.Length?s[i+1]:'\0';
   if(line){if(c=='\n'){line=false;b.Append(c);}else b.Append(' ');continue;}
   if(depth>0){if(c=='/'&&n=='-'){depth++;b.Append("  ");i++;}else if(c=='-'&&n=='/'){depth--;b.Append("  ");i++;}else b.Append(c=='\n'||c=='\r'?c:' ');continue;}
   if(str){if(escape){escape=false;}else if(c=='\\'){escape=true;}else if(c=='"'){str=false;}b.Append(c=='\n'||c=='\r'?c:' ');continue;}
   if(c=='/'&&n=='-'){depth=1;b.Append("  ");i++;}else if(c=='-'&&n=='-'){line=true;b.Append("  ");i++;}else if(c=='"'){str=true;b.Append(' ');}else b.Append(c);
  }
  if(depth!=0||str)throw new System.Exception("Unclosed comment or string");
  return b.ToString();
 }
}
'@
}
$imports=[Collections.Generic.HashSet[string]]::new()
$members=@();$texts=@();$index=0
foreach($path in $selected) {
  $text=[IO.File]::ReadAllText($path)
  $code=[B699ScopeStripper]::Strip($text)
  if($code -match '(?m)^\s*(axiom|constant)\b|\b(sorry|admit|native_decide)\b|(?m)^\s*#(eval|reduce)\b'){throw "Policy-sensitive source: $path"}
  $stack=[Collections.Generic.List[string]]::new()
  foreach($line in ($code -split '\r?\n')) {
    $l=$line.Trim()
    if($l -match '^(?:namespace\s+(\S+)|(?:noncomputable\s+)?section(?:\s+(\S+))?|mutual)\s*$'){$stack.Add($l)}
    elseif($l -match '^end(?:\s+\S+)?\s*$') {if($stack.Count -eq 0){throw "Scope closes outside member: $path"};$stack.RemoveAt($stack.Count-1)}
  }
  if($stack.Count -ne 0){throw "Unclosed member scopes: $path"}
  foreach($match in [regex]::Matches($text,'(?m)^import\s+([^\r\n]+)')) {
    $module=$match.Groups[1].Value.Trim()
    if($module -match '^(Mathlib|Lean|Std|Batteries|Aesop|Qq)\.') {[void]$imports.Add($module)}
  }
  $body=[regex]::Replace($text,'(?m)^import[^\r\n]*','')
  $bodyBytes=[Text.Encoding]::UTF8.GetBytes($body)
  $hash=[Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($bodyBytes)).ToLowerInvariant()
  $members+=@{index=$index;source=[IO.Path]::GetRelativePath($repo,$path);sourceSha256=(Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant();retainedBodyTextSha256=$hash;retainedBodyBytes=$bodyBytes.Length;scopeBalanced=$true;wrapperSection=('HeightMember'+$index.ToString('D3'))}
  $texts+=$body;$index++
}
$builder=[Text.StringBuilder]::new()
[void]$builder.AppendLine('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.BaseAudit')
foreach($module in ($imports|Sort-Object)){[void]$builder.AppendLine('import '+$module)}
[void]$builder.AppendLine('set_option Elab.async false')
for($i=0;$i -lt $members.Count;$i++) {
  $member=$members[$i]
  [void]$builder.AppendLine('/- Frozen source member '+$i+': '+$member.source+' SHA256 '+$member.sourceSha256+' -/')
  [void]$builder.AppendLine('section '+$member.wrapperSection)
  $member.bundleBodyStartByte=[Text.Encoding]::UTF8.GetByteCount($builder.ToString())
  [void]$builder.Append($texts[$i])
  $member.bundleBodyEndByte=[Text.Encoding]::UTF8.GetByteCount($builder.ToString())
  [void]$builder.AppendLine('')
  [void]$builder.AppendLine('end '+$member.wrapperSection)
}
$target=Join-Path $PSScriptRoot 'CriticalHeightBundle.lean'
[IO.File]::WriteAllText($target,$builder.ToString(),[Text.UTF8Encoding]::new($false))
@{sourceBaseline='4d22485e20e509e33348b33e63f6902becbae414';bundle=$target;bundleSha256=(Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant();members=$members;topology=$selected;scopeIsolation='Each complete original file body is enclosed in its own section; namespaces/sections lexically balanced; final typed/axiom acceptance remains required.'}|ConvertTo-Json -Depth 7|Set-Content -LiteralPath (Join-Path $PSScriptRoot 'height-bundle-map.json') -Encoding utf8
[pscustomobject]@{members=$members.Count;bytes=(Get-Item -LiteralPath $target).Length;status='prepared-not-compiled';map='height-bundle-map.json'}|ConvertTo-Json
