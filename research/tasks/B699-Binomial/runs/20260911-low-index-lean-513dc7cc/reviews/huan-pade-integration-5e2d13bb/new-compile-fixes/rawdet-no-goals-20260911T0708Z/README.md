# RawDet single-line compiler repair

The primary assigned exclusive write ownership of only lean/Pade/RawDet.lean for this repair. Other integrated files and all frozen experiment files remain unchanged.

The actual failure was RawDet.lean:165:45, `No goals to be solved`. In the proof of `hs`, `u` is defined as `t+2`; `dsimp [u]` already closes `u-1=t+1`. The only change removes the following `; omega`. It does not alter a statement, assumption, index, constant, or mathematical argument.

The failed verification was 20260911T070639043913Z. Its final source determinant formula and nonzero-row theorem had `sorryAx` in their dependency prints, so that attempt remains rejected. The parent has preserved the failed source under its candidate wrapper snapshot. This repair does not retroactively accept that evidence.

fix-record.json binds the before/after source hashes and the actual failure log. change.patch shows the complete one-line edit. No Lean command was run by this worker. The next step is the primary's fresh RawDet compile and axiom audit, especially the two previously contaminated public roots.
