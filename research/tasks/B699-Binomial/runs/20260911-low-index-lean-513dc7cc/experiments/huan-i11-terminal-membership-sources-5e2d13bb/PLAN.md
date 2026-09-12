# Stage04 full membership source generation

Owner /root/i18_downstream_review. Start 2026-09-11 21:57:31 UTC; checkpoint22:17:31 UTC, not a deadline. Only this new experiment is writable. No Lean/Git or edits to existing Candidates, RowCell, generic layers or JSON.

Phase1: generate and independently freeze complete pair23 first (24x15=360 cells). Phase2: generate/freeze25,27,35,37,57 using the same exact generator. Inputs are parent membership-data pair JSON and Candidates.lean, H29294603,M500, original1055 intervals plus0..23 head. Preserve1142 cells,23982 signed rows,47136 complete nonnegative parameters.

Each actual cellCoverCheck uses its direct CellData constant, with the full21 shifts and full RowCell parameter range. Each a row is an independent numerical module; interval_cases and List.all compose only imported/small proofs. Composer appends all rows and supplies actual Stage04 cutoff2/3/5/7 and PairGridData. No whole-grid decide. Data files also carry explicit public axiom roots so wrappers can accept a successful definitions-only module.

Numeric runtime is untested here. The worst cell has3490 parameters; parent is testing it separately. Exact source generation does not imply it fits1536MiB or proves the original theorem. Record source/API hashes, complete file/root indexes and independent literal reload; do not repeat a large CRT search.
