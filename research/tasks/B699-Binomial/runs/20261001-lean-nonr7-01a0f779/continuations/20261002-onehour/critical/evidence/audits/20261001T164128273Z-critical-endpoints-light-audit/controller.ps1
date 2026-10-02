[CmdletBinding()]
param(
  [ValidateSet('Lean','Command')][string]$Mode = 'Lean',
  [string]$Source,
  [string]$SourceRoot,
  [string]$OutputRoot,
  [string]$Executable,
  [string[]]$Arguments = @(),
  [string]$Label = 'task',
  [ValidateRange(1,300)][int]$TimeoutSeconds = 300,
  [ValidateRange(64,3132)][int]$MemoryMiB = 3132,
  [ValidateRange(64,2048)][int]$TreeMemoryMiB = 1536,
  [ValidateRange(64,4096)][int]$MinimumAvailableMiB = 3072,
  [ValidateRange(64,2048)][int]$PhysicalReserveMiB = 900,
  [ValidateRange(0,16384)][int]$MinimumAvailableCommitMiB = 4096,
  [string]$WorkingDirectory,
  [switch]$NoObject
)
$ErrorActionPreference='Stop'
$controllerBytes=[IO.File]::ReadAllBytes($PSCommandPath)
$controllerHash=[Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($controllerBytes)).ToLowerInvariant()
$repo = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../../../../../../..'))
function Resolve-TaskPath([string]$PathValue){
  if([IO.Path]::IsPathRooted($PathValue)){return [IO.Path]::GetFullPath($PathValue)}
  return [IO.Path]::GetFullPath((Join-Path $repo $PathValue))
}
$tool = Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-onehour/runtime'
$deadline=[DateTimeOffset]::Parse('2026-10-01T17:04:43Z').UtcDateTime
$labelSafe=$Label -replace '[^a-zA-Z0-9_-]','_'
New-Item -ItemType Directory -Force -Path $tool | Out-Null
$lockPath=Join-Path $repo '.tools/b699-lean-20261001-01a0f779/runtime/compile.lock'
$lock=$null
while ($null -eq $lock) {
  if ([DateTime]::UtcNow -ge $deadline) { throw 'Hard research deadline reached while waiting for lock' }
  try { $lock=[IO.FileStream]::new($lockPath,[IO.FileMode]::OpenOrCreate,[IO.FileAccess]::ReadWrite,[IO.FileShare]::None) }
  catch [IO.IOException] { Start-Sleep -Milliseconds 300 }
}
$runId=([DateTime]::UtcNow.ToString('yyyyMMddTHHmmssfffZ'))+'-'+$labelSafe
$receiptDir=Join-Path $tool ('logs/'+$runId)
New-Item -ItemType Directory -Force -Path $receiptDir | Out-Null
$stdout=Join-Path $receiptDir 'stdout.log'
$stderr=Join-Path $receiptDir 'stderr.log'
$receiptPath=Join-Path $receiptDir 'receipt.json'
$controllerSnapshot=Join-Path $receiptDir 'controller.ps1'
[IO.File]::WriteAllBytes($controllerSnapshot,$controllerBytes)
$job=[IntPtr]::Zero
$proc=$null
$record=$null
try {
  if (-not ('B699ControlledJob' -as [type])) {
    Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class B699ControlledJob {
 [StructLayout(LayoutKind.Sequential)] public struct BasicLimits { public long ProcessTime,JobTime; public uint Flags; public UIntPtr MinWS,MaxWS; public uint ActiveProcesses; public UIntPtr Affinity; public uint Priority,Scheduling; }
 [StructLayout(LayoutKind.Sequential)] public struct IO { public ulong ReadOps,WriteOps,OtherOps,ReadBytes,WriteBytes,OtherBytes; }
 [StructLayout(LayoutKind.Sequential)] public struct ExtendedLimits { public BasicLimits Basic; public IO Io; public UIntPtr ProcessMemory,JobMemory,PeakProcessMemory,PeakJobMemory; }
 [StructLayout(LayoutKind.Sequential)] public struct Memory { public uint Length,Load; public ulong TotalPhys,AvailPhys,TotalPage,AvailPage,TotalVirt,AvailVirt,Extended; }
 [DllImport("kernel32.dll",CharSet=CharSet.Unicode)] public static extern IntPtr CreateJobObject(IntPtr attr,string name);
 [DllImport("kernel32.dll",SetLastError=true)] public static extern bool SetInformationJobObject(IntPtr job,int cls,ref ExtendedLimits data,uint size);
 [DllImport("kernel32.dll",SetLastError=true)] public static extern bool AssignProcessToJobObject(IntPtr job,IntPtr process);
 [DllImport("kernel32.dll",SetLastError=true)] public static extern bool QueryInformationJobObject(IntPtr job,int cls,ref ExtendedLimits data,uint size,IntPtr len);
 [DllImport("kernel32.dll",EntryPoint="QueryInformationJobObject",SetLastError=true)] public static extern bool QueryRaw(IntPtr job,int cls,IntPtr data,uint size,IntPtr len);
 [DllImport("kernel32.dll",SetLastError=true)] public static extern bool TerminateJobObject(IntPtr job,uint exit);
 [DllImport("kernel32.dll")] public static extern bool CloseHandle(IntPtr h);
 [DllImport("kernel32.dll")] public static extern bool GlobalMemoryStatusEx(ref Memory m);
 public static ulong Available() { var m=new Memory(); m.Length=(uint)Marshal.SizeOf(m); if(!GlobalMemoryStatusEx(ref m)) throw new Exception("memory query failed"); return m.AvailPhys; }
 public static ulong AvailableCommit() { var m=new Memory(); m.Length=(uint)Marshal.SizeOf(m); if(!GlobalMemoryStatusEx(ref m)) throw new Exception("commit query failed"); return m.AvailPage; }
 public static long WorkingSet(IntPtr job) { var p=Marshal.AllocHGlobal(4096); try { if(!QueryRaw(job,3,p,4096,IntPtr.Zero)) return -1; uint n=(uint)Marshal.ReadInt32(p,4); long total=0; for(int i=0;i<n;i++){long id=IntPtr.Size==8?Marshal.ReadInt64(p,8+i*8):Marshal.ReadInt32(p,8+i*4);try{using(var process=System.Diagnostics.Process.GetProcessById((int)id)){total+=process.WorkingSet64;}}catch{}}return total;}finally{Marshal.FreeHGlobal(p);} }
}
'@
  }
  $dBefore=[IO.DriveInfo]::new('D:').AvailableFreeSpace
  $availBefore=[B699ControlledJob]::Available()
  $controlBefore=[Diagnostics.Process]::GetCurrentProcess().WorkingSet64
  $commitBefore=[B699ControlledJob]::AvailableCommit()
  if($dBefore -lt 20GB) { throw 'D disk reserve under 20 GiB before task' }
  if($availBefore -lt $MinimumAvailableMiB*1MB) { throw ('Available physical memory under '+$MinimumAvailableMiB+' MiB before task; retry after resources improve') }
  if($commitBefore -lt $MinimumAvailableCommitMiB*1MB){throw ('Available committed-memory margin under '+$MinimumAvailableCommitMiB+' MiB')}
  if([DateTime]::UtcNow -ge $deadline) { throw 'Hard research deadline reached before task' }
  $configPath=Join-Path $tool 'environment.json'
  $config=if(Test-Path -LiteralPath $configPath){Get-Content -LiteralPath $configPath -Raw|ConvertFrom-Json}else{$null}
  $sourceHash=$null; $sourcePath=$null; $objectPath=$null
  $outAbs=$null
  if($OutputRoot){
    $outAbs=Resolve-TaskPath $OutputRoot
    $roundOutputPrefix=[IO.Path]::GetFullPath((Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-onehour'))+[IO.Path]::DirectorySeparatorChar
    if(-not $outAbs.StartsWith($roundOutputPrefix,[StringComparison]::OrdinalIgnoreCase)){throw 'OutputRoot must belong to this round .tools directory'}
  }
  if($Mode -eq 'Command' -and $Source){
    $sourcePath=Resolve-TaskPath $Source
    $sourceHash=(Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant()
  }
  if($Mode -eq 'Lean') {
    if(-not $Source) { throw 'Lean mode requires Source' }
    $sourcePath=Resolve-TaskPath $Source
    if(-not $sourcePath.StartsWith($repo+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)){throw 'Source outside repository'}
    $sourceHash=(Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant()
    if($null -eq $config -or -not (Test-Path -LiteralPath $config.leanExe)){throw 'Fixed Lean environment not yet installed'}
    $Executable=$config.leanExe
    $srcRoot=if($SourceRoot){Resolve-TaskPath $SourceRoot}else{$repo}
    $Arguments=@('-j1',('-M'+$MemoryMiB),'-DElab.async=false','-R',$srcRoot)
    if(-not $NoObject) {
      if(-not $OutputRoot){$OutputRoot=Join-Path $tool 'objects'}
      $outAbs=Resolve-TaskPath $OutputRoot
      $roundOutputPrefix=[IO.Path]::GetFullPath((Join-Path $repo '.tools/b699-lean-20261001-01a0f779/20261002-onehour'))+[IO.Path]::DirectorySeparatorChar
      if(-not $outAbs.StartsWith($roundOutputPrefix,[StringComparison]::OrdinalIgnoreCase)){throw 'OutputRoot must belong to this round .tools directory'}
      $rel=[IO.Path]::GetRelativePath($srcRoot,$sourcePath)
      if($rel -eq '..' -or $rel.StartsWith('..'+[IO.Path]::DirectorySeparatorChar)){throw 'Source must be within SourceRoot'}
      $objectPath=Join-Path $outAbs ([IO.Path]::ChangeExtension($rel,'.olean'))
      New-Item -ItemType Directory -Force -Path (Split-Path -Parent $objectPath)|Out-Null
      $Arguments+=@('-o',$objectPath)
    }
    $Arguments+=@($sourcePath)
  }
  $sourceSnapshot=$null
  if($sourcePath){
    $sourceSnapshot=Join-Path $receiptDir ('source'+[IO.Path]::GetExtension($sourcePath))
    Copy-Item -LiteralPath $sourcePath -Destination $sourceSnapshot
    if((Get-FileHash -LiteralPath $sourceSnapshot -Algorithm SHA256).Hash.ToLowerInvariant() -ne $sourceHash){throw 'Source changed during fixed-byte snapshot'}
  }
  if(-not $WorkingDirectory){$WorkingDirectory=$repo}
  $start=[DateTime]::UtcNow
  $endLimit=$start.AddSeconds($TimeoutSeconds)
  if($endLimit -gt $deadline){$endLimit=$deadline}
  $psi=[Diagnostics.ProcessStartInfo]::new()
  $psi.FileName=$Executable; $psi.WorkingDirectory=$WorkingDirectory; $psi.UseShellExecute=$false
  $psi.CreateNoWindow=$true; $psi.RedirectStandardOutput=$true; $psi.RedirectStandardError=$true
  foreach($a in $Arguments){$psi.ArgumentList.Add($a)}
  $tmpDir=Join-Path $tool 'tmp'; New-Item -ItemType Directory -Force -Path $tmpDir|Out-Null
  foreach($k in @('TEMP','TMP','XDG_CACHE_HOME','MATHLIB_CACHE_DIR','LAKE_HOME')){$psi.Environment[$k]=$tmpDir}
  $psi.Environment['PYTHONDONTWRITEBYTECODE']='1'
  if($null -ne $config){
    $paths=@($config.leanPath)
    if($outAbs){$paths=@($outAbs)+@($paths|Where-Object{[IO.Path]::GetFullPath($_)-ne$outAbs})}
    $psi.Environment['LEAN_PATH']=($paths -join ';')
    $psi.Environment['LEAN_SRC_PATH']=($config.sourceRoots -join ';')
    $psi.Environment['PATH']=(Split-Path -Parent $config.leanExe)+';'+$env:PATH
    if($config.cacheDir){$psi.Environment['MATHLIB_CACHE_DIR']=$config.cacheDir}
    $trust=@($repo)+@($config.sourceRoots)
    $psi.Environment['GIT_CONFIG_COUNT']=[string]$trust.Count
    for($ti=0;$ti -lt $trust.Count;$ti++){$psi.Environment['GIT_CONFIG_KEY_'+$ti]='safe.directory';$psi.Environment['GIT_CONFIG_VALUE_'+$ti]=$trust[$ti].Replace('\','/')}
  }
  $job=[B699ControlledJob]::CreateJobObject([IntPtr]::Zero,$null)
  if($job -eq [IntPtr]::Zero){throw 'CreateJobObject failed'}
  $limits=[B699ControlledJob+ExtendedLimits]::new()
  # KILL_ON_JOB_CLOSE | AFFINITY | PRIORITY_CLASS. Working-set budget is
  # enforced by sampling, independently from committed address-space usage.
  # PowerShell nested value-type writes are copies: assign Basic as a whole.
  $basic=[B699ControlledJob+BasicLimits]::new()
  $basic.Flags=0x2030; $basic.Affinity=[UIntPtr]::new(3); $basic.Priority=0x40
  $limits.Basic=$basic
  $size=[Runtime.InteropServices.Marshal]::SizeOf($limits)
  if(-not [B699ControlledJob]::SetInformationJobObject($job,9,[ref]$limits,$size)){throw 'SetInformationJobObject failed'}
  $readback=[B699ControlledJob+ExtendedLimits]::new()
  if(-not [B699ControlledJob]::QueryInformationJobObject($job,9,[ref]$readback,$size,[IntPtr]::Zero)){throw 'Job limits readback failed'}
  if($readback.Basic.Flags -ne 0x2030 -or $readback.Basic.Affinity.ToUInt64() -ne 3 -or $readback.Basic.Priority -ne 0x40){throw 'Actual job limits do not match requested containment'}
  $proc=[Diagnostics.Process]::new();$proc.StartInfo=$psi
  $null=$proc.Start()
  if(-not [B699ControlledJob]::AssignProcessToJobObject($job,$proc.Handle)){
    $proc.Kill($true); throw 'AssignProcessToJobObject failed; own process stopped'
  }
  $proc.PriorityClass='Idle';$proc.ProcessorAffinity=[IntPtr]::new(3)
  $outStream=[IO.FileStream]::new($stdout,[IO.FileMode]::Create,[IO.FileAccess]::Write,[IO.FileShare]::ReadWrite)
  $errStream=[IO.FileStream]::new($stderr,[IO.FileMode]::Create,[IO.FileAccess]::Write,[IO.FileShare]::ReadWrite)
  $outCopy=$proc.StandardOutput.BaseStream.CopyToAsync($outStream)
  $errCopy=$proc.StandardError.BaseStream.CopyToAsync($errStream)
  $record=[ordered]@{runId=$runId;mode=$Mode;source=$sourcePath;sourceSha256=$sourceHash;sourceSnapshot=$sourceSnapshot;sourceAfterSha256=$null;sourceUnchanged=$null;executable=$Executable;arguments=$Arguments;cwd=$WorkingDirectory;startUtc=$start.ToString('o');deadlineUtc=$endLimit.ToString('o');ownedPid=$proc.Id;leanMemoryMiB=$MemoryMiB;treeMemoryMiB=$TreeMemoryMiB;minimumAvailableMiB=$MinimumAvailableMiB;physicalReserveMiB=$PhysicalReserveMiB;affinity=3;priority='Idle';physicalAvailableBeforeBytes=$availBefore;dBeforeBytes=$dBefore;object=$objectPath;stdout=$stdout;stderr=$stderr;receipt=$receiptPath;status='running';stopReason=$null;peakWorkingSetBytes=0;peakTreeWorkingSetBytes=0;peakTreeCommittedBytes=0}
  $record.actualJobFlags=('0x{0:X}'-f $readback.Basic.Flags)
  $record.controlWorkingSetBeforeBytes=$controlBefore
  $record.controlPeakWorkingSetBytes=$controlBefore
  $record.minimumObservedAvailablePhysicalBytes=$availBefore
  $record.minimumAvailableCommitMiB=$MinimumAvailableCommitMiB
  $record.commitAvailableBeforeBytes=$commitBefore
  $record.actualJobCommittedLimitBytes=$readback.JobMemory.ToUInt64()
  $record.actualProcessCommittedLimitBytes=$readback.ProcessMemory.ToUInt64()
  $record.controllerSha256=$controllerHash
  $record.controllerSnapshot=$controllerSnapshot
  $record.effectiveLeanPath=$psi.Environment['LEAN_PATH']
  $record|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $receiptPath -Encoding utf8
  while(-not $proc.HasExited){
    $self=[Diagnostics.Process]::GetCurrentProcess();$self.Refresh()
    $record.controlPeakWorkingSetBytes=[math]::Max([long]$record.controlPeakWorkingSetBytes,[long]$self.WorkingSet64)
    $record.minimumObservedAvailablePhysicalBytes=[math]::Min([long]$record.minimumObservedAvailablePhysicalBytes,[long][B699ControlledJob]::Available())
    $proc.Refresh();$record.peakWorkingSetBytes=[math]::Max([long]$record.peakWorkingSetBytes,[long]$proc.WorkingSet64)
    $treeWS=[B699ControlledJob]::WorkingSet($job)
    $record.peakTreeWorkingSetBytes=[math]::Max([long]$record.peakTreeWorkingSetBytes,[long]$treeWS)
    $query=[B699ControlledJob+ExtendedLimits]::new()
    $null=[B699ControlledJob]::QueryInformationJobObject($job,9,[ref]$query,$size,[IntPtr]::Zero)
    $record.peakTreeCommittedBytes=[math]::Max([long]$record.peakTreeCommittedBytes,[long]$query.PeakJobMemory.ToUInt64())
    if([DateTime]::UtcNow -ge $endLimit){$record.stopReason='timeout_or_hard_deadline'}
    elseif($treeWS -gt $TreeMemoryMiB*1MB){$record.stopReason='tree_working_set_budget'}
    elseif([B699ControlledJob]::Available() -lt $PhysicalReserveMiB*1MB){$record.stopReason='physical_memory_reserve'}
    elseif([IO.DriveInfo]::new('D:').AvailableFreeSpace -lt 20GB){$record.stopReason='D_disk_reserve'}
    if($record.stopReason){$null=[B699ControlledJob]::TerminateJobObject($job,124);break}
    Start-Sleep -Milliseconds 150
  }
  $proc.WaitForExit();$null=$outCopy.GetAwaiter().GetResult();$null=$errCopy.GetAwaiter().GetResult()
  $outStream.Dispose();$errStream.Dispose()
  $record.exitCode=$proc.ExitCode;$record.endUtc=[DateTime]::UtcNow.ToString('o')
  $record.wallSeconds=[math]::Round(([DateTime]::UtcNow-$start).TotalSeconds,3)
  $record.dAfterBytes=[IO.DriveInfo]::new('D:').AvailableFreeSpace
  $record.physicalAvailableAfterBytes=[B699ControlledJob]::Available()
  $record.commitAvailableAfterBytes=[B699ControlledJob]::AvailableCommit()
  if($sourcePath){$record.sourceAfterSha256=(Get-FileHash -LiteralPath $sourcePath -Algorithm SHA256).Hash.ToLowerInvariant();$record.sourceUnchanged=($record.sourceSha256 -eq $record.sourceAfterSha256)}
  $record.status=if($proc.ExitCode -eq 0 -and -not $record.stopReason -and $record.sourceUnchanged -ne $false){'success'}else{'failed'}
  if($objectPath -and (Test-Path -LiteralPath $objectPath)){$record.objectSha256=(Get-FileHash -LiteralPath $objectPath -Algorithm SHA256).Hash.ToLowerInvariant()}
  $record|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $receiptPath -Encoding utf8
  [pscustomobject]@{status=$record.status;exitCode=$record.exitCode;wallSeconds=$record.wallSeconds;stopReason=$record.stopReason;peakWorkingSetMiB=[math]::Round($record.peakWorkingSetBytes/1MB,2);peakTreeWorkingSetMiB=[math]::Round($record.peakTreeWorkingSetBytes/1MB,2);peakTreeCommittedMiB=[math]::Round($record.peakTreeCommittedBytes/1MB,2);receipt=$receiptPath;stdout=$stdout;stderr=$stderr;object=$objectPath}|ConvertTo-Json
  exit $record.exitCode
} catch {
  $failureText=$_.Exception.Message
  if($job -ne [IntPtr]::Zero){$null=[B699ControlledJob]::TerminateJobObject($job,125)}
  if($null -eq $record){
    $plannedSource=$null;$plannedHash=$null;$plannedSnapshot=$null
    if($Source){
      $plannedSource=Resolve-TaskPath $Source
      if(Test-Path -LiteralPath $plannedSource){
        $plannedHash=(Get-FileHash -LiteralPath $plannedSource -Algorithm SHA256).Hash.ToLowerInvariant()
        $plannedSnapshot=Join-Path $receiptDir ('preflight-source'+[IO.Path]::GetExtension($plannedSource))
        Copy-Item -LiteralPath $plannedSource -Destination $plannedSnapshot
      }
    }
    $record=[ordered]@{runId=$runId;mode=$Mode;status='preflight_rejected';childStarted=$false;ownedPid=$null;leanExitCode=$null;exitCode=125;stopReason='preflight_exception';runnerError=$failureText;source=$plannedSource;sourceSha256=$plannedHash;sourceSnapshot=$plannedSnapshot;plannedExecutable=$Executable;plannedArguments=$Arguments;actualArguments=$null;controllerSnapshot=$controllerSnapshot;controllerSha256=$controllerHash;utc=[DateTime]::UtcNow.ToString('o');physicalAvailableBeforeBytes=$availBefore;commitAvailableBeforeBytes=$commitBefore;dBeforeBytes=$dBefore;minimumAvailableMiB=$MinimumAvailableMiB;minimumAvailableCommitMiB=$MinimumAvailableCommitMiB;treeMemoryMiB=$TreeMemoryMiB;physicalReserveMiB=$PhysicalReserveMiB;receipt=$receiptPath;stdout=$null;stderr=$stderr}
    [IO.File]::WriteAllText($stderr,('Preflight rejected; Lean/command child not started: '+$failureText),[Text.UTF8Encoding]::new($false))
    $record|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $receiptPath -Encoding utf8
    [pscustomobject]@{status='preflight_rejected';childStarted=$false;exitCode=125;leanExitCode=$null;receipt=$receiptPath;stderr=$stderr;stopReason='preflight_exception'}|ConvertTo-Json
    exit 125
  }
  if($null -ne $record){
    $record.status='runner_failed';$record.stopReason='wrapper_exception';$record.runnerError=$failureText
    $record.endUtc=[DateTime]::UtcNow.ToString('o');$record.exitCode=125
    $record|ConvertTo-Json -Depth 8|Set-Content -LiteralPath $receiptPath -Encoding utf8
  }
  throw
} finally {
  if($job -ne [IntPtr]::Zero){$null=[B699ControlledJob]::CloseHandle($job)}
  if($null -ne $lock){$lock.Dispose()}
}
