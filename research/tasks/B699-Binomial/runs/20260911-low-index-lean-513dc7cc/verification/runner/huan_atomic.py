"""Atomic JSON checkpoints with bounded retries for Windows sharing conflicts."""
from pathlib import Path
import json
import os
import time


def write_json(path, data, *, temp_suffix='.huan-tmp', retry_seconds=3.0):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + temp_suffix)
    temporary.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n',
                         encoding='utf-8', newline='\n')
    started = time.monotonic()
    attempts = 0
    while True:
        attempts += 1
        try:
            os.replace(temporary, path)
            return attempts
        except PermissionError as error:
            if (os.name != 'nt' or getattr(error, 'winerror', None) not in (5, 32, 33)
                    or time.monotonic() - started >= retry_seconds):
                raise
            time.sleep(min(0.02 * (2 ** min(attempts - 1, 4)), 0.25))
