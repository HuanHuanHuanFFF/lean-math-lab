# B699 Pro A — KSAT² / EDGE9-H133 evidence

Read REPORT, PROOFS, FAILURE_BOUNDARIES, HANDOFF.

Quick replay regenerates all 12 root gates and the complete 98-state ledger filter:
`python3 -B code/reproduce.py /absolute/new-output --quick`

Full replay also reruns all 5854 jet systems over both primes:
`python3 -B code/reproduce.py /absolute/new-output --workers 3`

Requires Python 3.10+ and C++17; no network/CAS/Lean needed.
