# Scoped proof-reuse check

The source baseline and pinned-package checks are the primary evidence. The adopted
mathlib source is `0df444a360eaa60ab8c11dca51a86af692955474`, Lean `v4.33.1`.
The accepted project inputs remain at baseline `37e42aca251c33c62cbc2c40f286daa0526d79ee`.

On 2026-09-08 UTC the GitHub connector returned no matches for these narrowly scoped
queries on the repositories' indexed default branches:

| Query | Repositories | Observed result |
|---|---|---|
| `Ecklund Eggleton` | `leanprover-community/mathlib4` | empty results |
| `EEES binomial prime factorization` | `williamjblair/lean-proofs`, `AllenGrahamHart/FormalConjectures-Bench` | empty results |

An empty index result is not proof of absence. No complete fixed-version EEES proof
was recovered by these checks. The useful fixed-version reuse is instead the actual
prime-power bound in mathlib, the accepted project wheel certificate, and the three
minimal power-inequality proof bodies described in `power-source-adoption.json`.

The earlier negative searches for unavailable Price / van Doorn–Rocca manuscripts
were adopted from the archived report and were not repeated. No current project
activity dashboard or ongoing maintenance promise is created.
