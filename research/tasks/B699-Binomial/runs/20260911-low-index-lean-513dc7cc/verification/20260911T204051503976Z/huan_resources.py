"""Windows resource observations for serial Lean checks; standard library only."""
from __future__ import annotations
import ctypes
from ctypes import wintypes
import os
import shutil
import threading

class MemoryStatus(ctypes.Structure):
    _fields_ = [("length", wintypes.DWORD), ("load", wintypes.DWORD)] + [(n, ctypes.c_ulonglong) for n in ("total_phys", "avail_phys", "total_page", "avail_page", "total_virtual", "avail_virtual", "avail_extended")]

class ProcessEntry(ctypes.Structure):
    _fields_ = [("size", wintypes.DWORD), ("usage", wintypes.DWORD), ("pid", wintypes.DWORD), ("heap", ctypes.c_size_t), ("module", wintypes.DWORD), ("threads", wintypes.DWORD), ("parent", wintypes.DWORD), ("priority", wintypes.LONG), ("flags", wintypes.DWORD), ("exe", wintypes.WCHAR * 260)]

class ProcessMemory(ctypes.Structure):
    _fields_ = [("size", wintypes.DWORD), ("page_faults", wintypes.DWORD)] + [(n, ctypes.c_size_t) for n in ("peak_working_set", "working_set", "peak_paged", "paged", "peak_nonpaged", "nonpaged", "pagefile", "peak_pagefile")]

kernel = ctypes.WinDLL("kernel32", use_last_error=True)
psapi = ctypes.WinDLL("psapi", use_last_error=True)
kernel.CreateToolhelp32Snapshot.argtypes = [wintypes.DWORD, wintypes.DWORD]
kernel.CreateToolhelp32Snapshot.restype = wintypes.HANDLE
kernel.Process32FirstW.argtypes = [wintypes.HANDLE, ctypes.POINTER(ProcessEntry)]
kernel.Process32NextW.argtypes = [wintypes.HANDLE, ctypes.POINTER(ProcessEntry)]
kernel.CloseHandle.argtypes = [wintypes.HANDLE]
kernel.OpenProcess.argtypes = [wintypes.DWORD, wintypes.BOOL, wintypes.DWORD]
kernel.OpenProcess.restype = wintypes.HANDLE
psapi.GetProcessMemoryInfo.argtypes = [wintypes.HANDLE, ctypes.POINTER(ProcessMemory), wintypes.DWORD]

def snapshot(repo):
    mem = MemoryStatus()
    mem.length = ctypes.sizeof(mem)
    if not kernel.GlobalMemoryStatusEx(ctypes.byref(mem)):
        raise OSError(ctypes.get_last_error(), "GlobalMemoryStatusEx")
    return {"platform": "windows", "cpu_count": os.cpu_count(), "disk": list(shutil.disk_usage(repo)), "available_physical_bytes": mem.avail_phys, "total_physical_bytes": mem.total_phys, "memory_load_percent": mem.load, "meminfo": [f"MemAvailable: {mem.avail_phys // 1024} kB"], "memory.max": None, "memory.current": None, "cpu.max": None}

def own_tree_memory():
    handle = kernel.CreateToolhelp32Snapshot(2, 0)
    if handle == ctypes.c_void_p(-1).value:
        raise OSError(ctypes.get_last_error(), "CreateToolhelp32Snapshot")
    entries = []
    entry = ProcessEntry()
    entry.size = ctypes.sizeof(entry)
    try:
        ok = kernel.Process32FirstW(handle, ctypes.byref(entry))
        while ok:
            entries.append((entry.pid, entry.parent))
            ok = kernel.Process32NextW(handle, ctypes.byref(entry))
    finally:
        kernel.CloseHandle(handle)
    owned = {os.getpid()}
    while True:
        grown = owned | {pid for pid, parent in entries if parent in owned}
        if grown == owned:
            break
        owned = grown
    total = 0
    measured = 0
    for pid in owned:
        process = kernel.OpenProcess(0x0410, False, pid)
        if not process:
            continue
        try:
            counters = ProcessMemory()
            counters.size = ctypes.sizeof(counters)
            if psapi.GetProcessMemoryInfo(process, ctypes.byref(counters), counters.size):
                total += counters.working_set
                measured += 1
        finally:
            kernel.CloseHandle(process)
    return total, measured

def instrument(verifier):
    original = verifier.run_logged
    def measured(*args, **kwargs):
        stopped = threading.Event()
        observations = {"sample_interval_seconds": 0.2, "scope": "verification Python process and observed descendants", "peak_tree_working_set_bytes": 0, "peak_observed_process_count": 0, "samples": 0, "sampling_errors": []}
        def sample():
            while not stopped.is_set():
                try:
                    used, count = own_tree_memory()
                    observations["peak_tree_working_set_bytes"] = max(observations["peak_tree_working_set_bytes"], used)
                    observations["peak_observed_process_count"] = max(observations["peak_observed_process_count"], count)
                    observations["samples"] += 1
                except OSError as exc:
                    observations["sampling_errors"].append(str(exc))
                stopped.wait(0.2)
        thread = threading.Thread(target=sample, daemon=True)
        thread.start()
        try:
            record, output = original(*args, **kwargs)
        finally:
            stopped.set()
            thread.join()
        record["windows_process_tree"] = observations
        return record, output
    verifier.run_logged = measured
