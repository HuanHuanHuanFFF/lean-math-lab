"""Read-only resource snapshot before small exact experiments."""
import ctypes
import importlib.util
import json
import os
import shutil
from datetime import datetime, timezone
from pathlib import Path

class MEMORYSTATUSEX(ctypes.Structure):
    _fields_ = [("dwLength", ctypes.c_ulong), ("dwMemoryLoad", ctypes.c_ulong)] + [(x, ctypes.c_ulonglong) for x in ("ullTotalPhys", "ullAvailPhys", "ullTotalPageFile", "ullAvailPageFile", "ullTotalVirtual", "ullAvailVirtual", "ullAvailExtendedVirtual")]

v = MEMORYSTATUSEX()
v.dwLength = ctypes.sizeof(v)
ok = bool(ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(v)))
result = {"time_utc": datetime.now(timezone.utc).isoformat(), "cpu_logical": os.cpu_count(), "windows_memory_query_ok": ok, "physical_total": v.ullTotalPhys if ok else None, "physical_available": v.ullAvailPhys if ok else None, "disk_D_free": shutil.disk_usage("D:/").free, "modules": {x: importlib.util.find_spec(x) is not None for x in ("sympy", "scipy", "numpy")}, "scope": "Windows host snapshot; no cgroup or per-task job-object quota observed"}
out = Path(__file__).with_name("resources.json")
out.write_text(json.dumps(result, indent=2), encoding="utf-8")
print(json.dumps(result))
