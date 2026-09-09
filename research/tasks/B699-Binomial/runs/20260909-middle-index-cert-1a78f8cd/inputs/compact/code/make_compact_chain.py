#!/usr/bin/env python3
"""Extract a positive subchain from the unchanged source archive; not a Lean proof."""
from pathlib import Path
import hashlib
import json
import zipfile

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT.parent / "source" / "B699-middle-index-closure-evidence.zip"
EXPECTED = "b96965a898f6f097d66fbb0d8df4e12e5b03c8f238e43143cd32fe7c506e0cf0"
N = 2_000_000
GAP_LIMIT = 322


def main():
    assert hashlib.sha256(SOURCE.read_bytes()).hexdigest() == EXPECTED
    with zipfile.ZipFile(SOURCE) as archive:
        values = list(map(int, archive.read("b699-new-math/outputs/prime_chain_20m.txt").split()))
    assert values[0] == 2
    assert all(a < b for a, b in zip(values, values[1:]))
    result = [values[0]]
    index = 0
    while result[-1] <= N:
        next_index = index
        while next_index + 1 < len(values) and values[next_index + 1] - result[-1] <= GAP_LIMIT:
            next_index += 1
        assert next_index > index
        result.append(values[next_index])
        index = next_index
    output = ROOT / "outputs" / "prime_chain_2m_gap322.txt"
    output.write_text("\n".join(map(str, result)) + "\n")
    record = {
        "status": "PASS",
        "source_archive_sha256": EXPECTED,
        "method": "greedy subsequence of the unchanged original positive witness chain",
        "N": N,
        "gap_limit": GAP_LIMIT,
        "count": len(result),
        "first": result[0],
        "last": result[-1],
        "max_gap": max(b - a for a, b in zip(result, result[1:])),
        "sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
        "evidence_level": "Data generation and subset checks only; use the independent complete-trial-division checker for primality. Not Lean accepted.",
    }
    (ROOT / "outputs" / "prime_chain_generation.json").write_text(json.dumps(record, indent=2) + "\n")
    print(json.dumps(record, indent=2))


if __name__ == "__main__":
    main()
