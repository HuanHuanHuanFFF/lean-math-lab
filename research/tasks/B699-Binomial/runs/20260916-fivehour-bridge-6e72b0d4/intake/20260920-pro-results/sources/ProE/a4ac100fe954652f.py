#!/usr/bin/env python3
"""Regenerate the new certificate. Explicitly writes, unlike replay.py."""
import json
from pathlib import Path
from build_data import build_payload
if __name__=='__main__':
    dest=Path(__file__).parent/'certificates'/'certificate.json'
    dest.write_text(json.dumps(build_payload(),ensure_ascii=False,indent=2)+'\n')
    print('WROTE certificates/certificate.json')
