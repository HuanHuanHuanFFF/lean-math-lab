"""Read-only Windows resource snapshot for this research stage."""
import ctypes
import json
import os
import platform
import shutil
from datetime import datetime,timezone
from pathlib import Path

class Memory(ctypes.Structure):
    _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[(x,ctypes.c_ulonglong) for x in ('total','available','page_total','page_available','virtual_total','virtual_available','extended')]
m=Memory();m.length=ctypes.sizeof(m)
ok=bool(ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m)))
r={'utc':datetime.now(timezone.utc).isoformat(),'cpu_logical':os.cpu_count(),'physical_available':m.available if ok else None,'physical_total':m.total if ok else None,'D_free':shutil.disk_usage('D:/').free,'python':platform.python_version(),'scope':'Windows host snapshot; no cgroup/task quota assumed; other processes untouched'}
out=Path(__file__).with_name('resources-'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'.json')
out.write_text(json.dumps(r,indent=2),encoding='utf-8')
print(json.dumps(r))
