param([switch]$NestedWriteFix,[switch]$NoCommittedCap)
$ErrorActionPreference='Stop'
$controller=Get-Content -LiteralPath (Join-Path $PSScriptRoot 'invoke-task.ps1') -Raw
$match=[regex]::Match($controller,"(?s)Add-Type -TypeDefinition @'\r?\n(?<native>.*?)\r?\n'@")
if(-not $match.Success){throw 'Controller native type not found'}
Add-Type -TypeDefinition $match.Groups['native'].Value
$job=[B699ControlledJob]::CreateJobObject([IntPtr]::Zero,$null)
try {
  $limits=[B699ControlledJob+ExtendedLimits]::new()
  $requestedFlags=if($NoCommittedCap){0x2030}else{0x2230}
  if($NestedWriteFix){
    $basic=[B699ControlledJob+BasicLimits]::new();$basic.Flags=$requestedFlags;$basic.Affinity=[UIntPtr]::new(3);$basic.Priority=0x40
    $limits.Basic=$basic
  }else{$limits.Basic.Flags=$requestedFlags;$limits.Basic.Affinity=[UIntPtr]::new(3);$limits.Basic.Priority=0x40}
  $limits.JobMemory=[UIntPtr]::new([uint64](1536MB))
  $size=[Runtime.InteropServices.Marshal]::SizeOf($limits)
  $set=[B699ControlledJob]::SetInformationJobObject($job,9,[ref]$limits,$size)
  $actual=[B699ControlledJob+ExtendedLimits]::new()
  $query=[B699ControlledJob]::QueryInformationJobObject($job,9,[ref]$actual,$size,[IntPtr]::Zero)
  [pscustomobject]@{utc=[DateTime]::UtcNow.ToString('o');nestedWriteFix=$NestedWriteFix.IsPresent;requestedFlags=('0x{0:X}'-f $requestedFlags);processIs64bit=[Environment]::Is64BitProcess;basicSize=[Runtime.InteropServices.Marshal]::SizeOf([type][B699ControlledJob+BasicLimits]);ioSize=[Runtime.InteropServices.Marshal]::SizeOf([type][B699ControlledJob+IO]);extendedSize=$size;jobMemoryOffset=[Runtime.InteropServices.Marshal]::OffsetOf([type][B699ControlledJob+ExtendedLimits],'JobMemory').ToInt64();peakJobOffset=[Runtime.InteropServices.Marshal]::OffsetOf([type][B699ControlledJob+ExtendedLimits],'PeakJobMemory').ToInt64();setSucceeded=$set;querySucceeded=$query;flags=('0x{0:X}'-f $actual.Basic.Flags);jobCommittedLimitBytes=$actual.JobMemory.ToUInt64();processCommittedLimitBytes=$actual.ProcessMemory.ToUInt64();workingSetMinBytes=$actual.Basic.MinWS.ToUInt64();workingSetMaxBytes=$actual.Basic.MaxWS.ToUInt64();affinity=$actual.Basic.Affinity.ToUInt64();priority=$actual.Basic.Priority;availablePhysicalBytes=[B699ControlledJob]::Available()}|ConvertTo-Json
} finally {$null=[B699ControlledJob]::CloseHandle($job)}
