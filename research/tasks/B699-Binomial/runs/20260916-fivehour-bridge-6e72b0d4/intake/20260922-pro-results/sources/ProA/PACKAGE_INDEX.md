# PACKAGE INDEX

Packaging date: 2026-09-22
Rounds: 6

| Round | Original ZIP | ZIP bytes | Expanded files | Expanded bytes | Internal manifest | Status |
|---|---|---:|---:|---:|---|---|
| 01_B22_H117 | `B699-ProA-B22-H117-20260921-evidence.zip` | 123007 | 43 | 1436727 | 42 verified; 0 missing; 0 mismatch | superseded as frontier, retained as evidence |
| 02_TRACE_B28_H127 | `B699-ProA-TRACE-B28-H127-20260921-evidence.zip` | 233575 | 79 | 4402637 | 78 verified; 0 missing; 0 mismatch | superseded as frontier, retained as evidence |
| 03_KAPPA_GENUS_COVER9 | `B699-ProA-KAPPA-GENUS-COVER9-20260921-evidence.zip` | 1801953 | 314 | 61686417 | 313 verified; 0 missing; 0 mismatch | COVER9 remains current; later rounds strengthen equality branch |
| 04_KSAT29_NINELEDGER | `B699-ProA-KSAT29-NINELEDGER-20260921-evidence.zip` | 59573 | 30 | 986194 | 29 verified; 0 missing; 0 mismatch | geometry retained; ledger counts 130+2 superseded by corrected DP in round 05 |
| 05_KSAT30_EDGE9 | `B699-ProA-KSAT30-EDGE9-20260921-evidence.zip` | 70749 | 27 | 1187153 | 26 verified; 0 missing; 0 mismatch | EDGE9 remains current; 98-state frontier later compressed to 6 |
| 06_KSAT2_EDGE9_H133 | `B699-ProA-KSAT2-EDGE9-H133-20260921-evidence.zip` | 128543 | 109 | 529555 | 108 verified; 0 missing; 0 mismatch | current final frontier for this session |

## Layout

- `original_deliveries/`: byte-preserved original evidence ZIPs and external clean-replay receipts.
- `rounds/01...06/full_payload/`: complete expanded payload of each original evidence ZIP.
- `rounds/01...06/`: convenient copies of top-level REPORT/PROOFS/FAILURES/HANDOFF/source/state/manifest files.
- `inputs/`: session continuation Overview and hash note.
- top-level timeline/frontier/supersession/evidence-level documents.

## Internal-manifest validation

- `01_B22_H117`: manifest_present=True, verified=42, missing=0, mismatch=0.
- `02_TRACE_B28_H127`: manifest_present=True, verified=78, missing=0, mismatch=0.
- `03_KAPPA_GENUS_COVER9`: manifest_present=True, verified=313, missing=0, mismatch=0.
- `04_KSAT29_NINELEDGER`: manifest_present=True, verified=29, missing=0, mismatch=0.
- `05_KSAT30_EDGE9`: manifest_present=True, verified=26, missing=0, mismatch=0.
- `06_KSAT2_EDGE9_H133`: manifest_present=True, verified=108, missing=0, mismatch=0.
