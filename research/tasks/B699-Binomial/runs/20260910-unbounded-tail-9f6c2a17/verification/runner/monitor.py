# Standard-library-only Windows process memory sampling. No proof logic.
import subprocess, time, ctypes, tempfile
from ctypes import wintypes
class Counters(ctypes.Structure):
    _fields_ = [('cb',wintypes.DWORD),('PageFaultCount',wintypes.DWORD)] + [(x,ctypes.c_size_t) for x in ['PeakWorkingSetSize','WorkingSetSize','QuotaPeakPagedPoolUsage','QuotaPagedPoolUsage','QuotaPeakNonPagedPoolUsage','QuotaNonPagedPoolUsage','PagefileUsage','PeakPagefileUsage','PrivateUsage']]
psapi=ctypes.WinDLL('psapi',use_last_error=True)
psapi.GetProcessMemoryInfo.argtypes=[wintypes.HANDLE,ctypes.POINTER(Counters),wintypes.DWORD]
psapi.GetProcessMemoryInfo.restype=wintypes.BOOL
def measured_run(args,*,cwd,env,stdout,stderr,text,encoding,errors,timeout,check):
    started=time.monotonic()
    with tempfile.TemporaryFile(dir=env.get('TEMP')) as stream:
        p=subprocess.Popen(args,cwd=cwd,env=env,stdout=stream,stderr=subprocess.STDOUT,creationflags=subprocess.CREATE_NO_WINDOW)
        sample={'method':'GetProcessMemoryInfo, sampled every 0.2s; Windows peak WorkingSet field', 'sample_count':0,'peak_working_set_bytes':0,'sampled_peak_private_bytes':0,'peak_pagefile_bytes':0}
        timed_out=False
        while True:
            c=Counters();c.cb=ctypes.sizeof(c)
            if psapi.GetProcessMemoryInfo(wintypes.HANDLE(p._handle),ctypes.byref(c),c.cb):
                sample['sample_count']+=1
                sample['peak_working_set_bytes']=max(sample['peak_working_set_bytes'],c.PeakWorkingSetSize)
                sample['sampled_peak_private_bytes']=max(sample['sampled_peak_private_bytes'],c.PrivateUsage)
                sample['peak_pagefile_bytes']=max(sample['peak_pagefile_bytes'],c.PeakPagefileUsage)
            if p.poll() is not None: break
            if time.monotonic()-started>=timeout:
                p.kill();p.wait();timed_out=True;break
            time.sleep(0.2)
        stream.seek(0);out=stream.read().decode(encoding,errors=errors)
        if timed_out: raise subprocess.TimeoutExpired(args,timeout,output=out)
        result=subprocess.CompletedProcess(args,p.returncode,out)
        result.memory_measurement=sample
        return result
