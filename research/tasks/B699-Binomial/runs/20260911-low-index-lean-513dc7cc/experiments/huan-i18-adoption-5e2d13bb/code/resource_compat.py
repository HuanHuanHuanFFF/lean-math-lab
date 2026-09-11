"""Process-memory metadata compatibility; no certificate decision uses it."""


def peak_rss_kib():
  """Return peak resident memory in KiB, or None when unavailable.

  POSIX resource reports KiB on the supported Unix runners. Windows has
  no stdlib resource module, so use the process working-set counter from
  PSAPI and convert its byte count to KiB. This value is diagnostic metadata
  only and never participates in mathematical checks.
  """
  try:
    import resource
  except ModuleNotFoundError:
    try:
      import ctypes
      from ctypes import wintypes

      class ProcessMemoryCounters(ctypes.Structure):
        _fields_ = [
          ("cb", wintypes.DWORD),
          ("PageFaultCount", wintypes.DWORD),
          ("PeakWorkingSetSize", ctypes.c_size_t),
          ("WorkingSetSize", ctypes.c_size_t),
          ("QuotaPeakPagedPoolUsage", ctypes.c_size_t),
          ("QuotaPagedPoolUsage", ctypes.c_size_t),
          ("QuotaPeakNonPagedPoolUsage", ctypes.c_size_t),
          ("QuotaNonPagedPoolUsage", ctypes.c_size_t),
          ("PagefileUsage", ctypes.c_size_t),
          ("PeakPagefileUsage", ctypes.c_size_t),
        ]

      counters = ProcessMemoryCounters()
      counters.cb = ctypes.sizeof(counters)
      process = ctypes.windll.kernel32.GetCurrentProcess()
      psapi = ctypes.windll.psapi
      psapi.GetProcessMemoryInfo.argtypes = [
        wintypes.HANDLE,
        ctypes.POINTER(ProcessMemoryCounters),
        wintypes.DWORD,
      ]
      psapi.GetProcessMemoryInfo.restype = wintypes.BOOL
      if not psapi.GetProcessMemoryInfo(process, ctypes.byref(counters), counters.cb):
        return None
      return int(counters.PeakWorkingSetSize) // 1024
    except Exception:
      return None
  return int(resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
