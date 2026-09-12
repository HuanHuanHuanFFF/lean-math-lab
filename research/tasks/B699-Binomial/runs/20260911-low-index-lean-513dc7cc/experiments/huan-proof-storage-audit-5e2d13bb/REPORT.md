# Proof storage audit

This is a read-only plan. No object, source, log, evidence, receipt, or other file was deleted.

Audit snapshot: 2026-09-11T23:02:22.132046+00:00. Scope is only the current run verification tree and its dedicated .tools tree.

## Counts

- Evidence files: 523 (398 success=true, 125 success=false).
- Compile records: {'True': 5560, 'False': 243}; reuse records: {'True': 13696, 'False': 5560}.
- OLEAN links: 23386; file identity groups: 4525.
- Logical bytes across all links: 7,479,512,320; unique physical bytes by st_dev/st_ino: 1,537,189,808.
- Protected paths from success evidence: 19256; receipt-like JSON paths found: 0.
- Failed, unprotected candidate groups: 128; paths: 128; logical and unique physical bytes: 95,023,000 each.

The zero receipt-like count means no JSON whose filename contains receipt was found in the scoped run. Every success=true evidence object was protected independently, including success objects without a wrapper receipt.

## Candidate groups

| failed timestamp | identity groups | links | unique bytes |
|---|---:|---:|---:|
| 20260911T011043713336Z | 23 | 23 | 8,976,976 |
| 20260911T032834651797Z | 1 | 1 | 410,696 |
| 20260911T032958830602Z | 1 | 1 | 410,696 |
| 20260911T062003891611Z | 1 | 1 | 2,018,448 |
| 20260911T063021191992Z | 5 | 5 | 1,525,336 |
| 20260911T063209770152Z | 5 | 5 | 3,625,216 |
| 20260911T063721492273Z | 7 | 7 | 3,697,632 |
| 20260911T064311417078Z | 3 | 3 | 1,500,832 |
| 20260911T064447019893Z | 3 | 3 | 1,500,832 |
| 20260911T065323254137Z | 3 | 3 | 1,500,832 |
| 20260911T065430837534Z | 8 | 8 | 1,614,288 |
| 20260911T085126672987Z | 3 | 3 | 1,722,512 |
| 20260911T085618766796Z | 7 | 7 | 1,878,976 |
| 20260911T090115630897Z | 7 | 7 | 1,878,976 |
| 20260911T115950538892Z | 1 | 1 | 22,784 |
| 20260911T143859929099Z | 1 | 1 | 89,912 |
| 20260911T144835342712Z | 9 | 9 | 1,633,928 |
| 20260911T145835332144Z | 1 | 1 | 72,800 |
| 20260911T160525685176Z | 1 | 1 | 213,360 |
| 20260911T183257170493Z | 16 | 16 | 9,948,256 |
| 20260911T210323542306Z | 1 | 1 | 31,440 |
| 20260911T215837145648Z | 3 | 3 | 474,232 |
| 20260911T221825379407Z | 3 | 3 | 474,232 |
| 20260911T222815117060Z | 7 | 7 | 28,850,552 |
| 20260911T223030122634Z | 7 | 7 | 7,942,736 |
| 20260911T223233366242Z | 1 | 1 | 13,006,520 |

The exact absolute candidate paths, file IDs, source references, and bytes are in storage-audit.json under candidate_groups. Every candidate group currently has one link, so its unique physical bytes equal its path bytes. The report does not authorize deletion; a later cleanup must recheck evidence hashes, file IDs, and success/receipt references immediately before removing only these exact paths.

## Protected material

All source files, compile logs, diagnostic logs, evidence/state JSON, and every OLEAN path under a success=true timestamp are retained. A hardlink group is protected if any link is success-referenced; no protected group is included in the candidate table.

## Verified object size probes

- CRT Stage00 (2,3) Chunk000 success compile records: 15; unique objects: 15; measured unique bytes: 9,021,160 (evidence/source matching CrtStage0Pair23/Chunk000).
- ThreeTwo verified leaf match: 1 success compile record, 1 object, 13,789,088 bytes. The matched source is recorded in storage-audit.json; failed/unaccepted higher leaf attempts are not counted as verified.

## Reproducibility inputs

- Evidence index: 523 files, SHA-256 71f01980c555d35c9258a06dced1da54fcc7b2948b4760786c18a60812d174bb.
- OLEAN metadata index: 23386 files, SHA-256 8c3e7ce5a8a9796e40cd3190c4678d7647f03472cffe2066f0de9968a40e3f2d.
- D free bytes at the read-only snapshot: 773,210,112.
- Audit script: audit_proof_storage.py; generated report JSON: storage-audit.json.

The next safe action, if needed, is a separately authorized dry-run review of the 128 candidate groups followed by an immediate identity/hash/reference recheck. This audit itself performed no cleanup.
