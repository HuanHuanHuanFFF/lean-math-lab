param([int]$SampleMs = 500)
$ErrorActionPreference = 'Stop'
if (-not ('B699RuntimeNative' -as [type])) {
  Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class B699RuntimeNative {
  [StructLayout(LayoutKind.Sequential)] public struct MemoryStatus {
    public uint length, load;
    public ulong totalPhys, availPhys, totalPage, availPage, totalVirtual, availVirtual, availExtended;
  }
  [DllImport("kernel32.dll", SetLastError=true)] public static extern bool GlobalMemoryStatusEx(ref MemoryStatus status);
  [DllImport("kernel32.dll", SetLastError=true)] public static extern bool GetSystemTimes(out long idle, out long kernel, out long user);
}
'@
}
$mem = [B699RuntimeNative+MemoryStatus]::new()
$mem.length = [Runtime.InteropServices.Marshal]::SizeOf($mem)
if (-not [B699RuntimeNative]::GlobalMemoryStatusEx([ref]$mem)) { throw 'GlobalMemoryStatusEx failed' }
[long]$i1=0; [long]$k1=0; [long]$u1=0
[long]$i2=0; [long]$k2=0; [long]$u2=0
$null = [B699RuntimeNative]::GetSystemTimes([ref]$i1,[ref]$k1,[ref]$u1)
Start-Sleep -Milliseconds $SampleMs
$null = [B699RuntimeNative]::GetSystemTimes([ref]$i2,[ref]$k2,[ref]$u2)
$delta=($k2-$k1)+($u2-$u1)
$busy = if ($delta -gt 0) { 100.0 * (1.0 - ($i2-$i1)/$delta) } else { $null }
$jobs = @(Get-Process | Where-Object { $_.ProcessName -match '^(lean|lake|python.*|pwsh|powershell)$' } | ForEach-Object {
  [pscustomobject]@{ pid=$_.Id; name=$_.ProcessName; workingSetMiB=[math]::Round($_.WorkingSet64/1MB,1); cpuSeconds=$_.CPU }
})
[pscustomobject]@{
  utc=[DateTime]::UtcNow.ToString('o'); physicalTotalGiB=[math]::Round($mem.totalPhys/1GB,3)
  physicalAvailableGiB=[math]::Round($mem.availPhys/1GB,3); memoryLoadPercent=$mem.load
  commitLimitGiB=[math]::Round($mem.totalPage/1GB,3); commitAvailableGiB=[math]::Round($mem.availPage/1GB,3)
  logicalCPU=[Environment]::ProcessorCount; cpuBusyPercent=[math]::Round($busy,2)
  sampleMs=$SampleMs; dFreeGiB=[math]::Round([IO.DriveInfo]::new('D:').AvailableFreeSpace/1GB,3)
  relevantJobs=$jobs
} | ConvertTo-Json -Depth 4
