#!/usr/bin/env python3
"""Optional finite certificate constructor. The proof is in PROOFS.md."""
import json
from pathlib import Path
from checks import all_evidence
root=Path(__file__).resolve().parents[1]
data=all_evidence()
(root/'evidence'/'exact.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('BUILT_SOURCE_SATURATION_EVIDENCE')
