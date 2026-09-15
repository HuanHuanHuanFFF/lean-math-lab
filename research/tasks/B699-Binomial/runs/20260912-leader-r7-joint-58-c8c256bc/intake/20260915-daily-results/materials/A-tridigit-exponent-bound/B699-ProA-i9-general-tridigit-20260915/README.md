# B699 Pro A — resumable exponent-bound delivery

Start with REPORT.md, HANDOFF.md, SOURCE_ADOPTION.md and FAILURE_BOUNDARIES.md. Full new proofs: notes/PROOFS.md. SESSION_STATE.json records the final, not intermediate, frontier.

## Receiving only this round

    python3 code/reproduce.py

This runs the new exact receiver, the main-only receiver, finite diagnostics, semantic mutation tests, and exact comparison checks. It never runs old content, CRT, A14, C31, or A9 finite receivers and never invokes discovery. Expected terminal status:

    PASS_COMPLETE_NEW_TRIDIGIT_EXPONENT_BOUND_REPLAY

For a clean extracted archive, keep generated log files outside it:

    python3 code/reproduce.py --output-dir /tmp/b699-a-replay

Main obligations without the71-case appendix:

    python3 code/receive.py --core-only --output /tmp/b699-a-core.json

Only Python's standard library is required. Discovery utilities are make_certificate.py, discover_resonance.py, and discover_witnesses.py. probe_p11_unused.py is explicitly unused exploration. None of these are called by receiving. No whole-n or whole-j scan is performed.

Input ZIP bytes are preserved once in inputs/. Nine relevant original texts have byte-identical copies in sources/. SHA256SUMS.json excludes itself; hashes and sizes are independently checked during release. The external release receipt records the final ZIP and clean-directory replay.

No automatic GitHub publication, external sessions, or Lean task is part of this package.
