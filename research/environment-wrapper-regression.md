# Repeated-wrapper environment regression

Observed during final B677/B699 verification on2026-09-08. The first two full11-file runs both reached Examples/CofactorCriterion.lean and failed with `unknown module prefix 'Math'`; the child search path showed only Lean's standard library. The same source compiled separately and was independently accepted by the mathematical reviewer.

A short real reproduction now lives in scripts/test-lake-environment.ps1: call the actual wrapper ten times, then compile the actual project example. Before the fix GIT_CONFIG_COUNT grew16,32,...,160 and the final compilation failed (exit1). The process environment grew on every call; exact downstream OS/runtime truncation limits were not separately established and are not asserted here.

The controlled change only deduplicates the wrapper's safe.directory additions, comparing case-insensitively with normalized slash direction. It preserves caller entries, appends no directories outside the existing project/package list, and makes no global Git configuration changes. PATH handling was deliberately unchanged for this causal check.

The same saved reproduction after the change kept GIT_CONFIG_COUNT=16 for all ten calls and compiled the real example with exit0. The source code of the example did not change. Evidence: environment-regression-red.json, environment-regression-green.json, environment-growth-before.json, and final-verification-20260908-attempt1.log / attempt2.log. The final whole-repository rerun is logged in final-verification-20260908.log.

A check that would have prevented this issue is repeated use of the wrapper in the same PowerShell process at the real project-import seam; a single successful compiler invocation did not expose the accumulating environment. The new regression entry point keeps that seam executable. No unrelated installation or original-worktree configuration was changed.
