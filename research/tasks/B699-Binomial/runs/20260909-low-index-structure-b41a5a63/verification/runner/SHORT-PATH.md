# Short-path entry point

Use `verify_short.py` when compiling on Windows. It loads the strict
implementation in `verify.py` and changes only the ignored fresh-object root
to `.tools/b699-b41a5a63/<UTC>/`, reducing the chance of a Windows path-length
failure. Public evidence is still written under this run's
`verification/<UTC>/`.

From the repository root:

```text
C:\Python314\python.exe research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/verification/runner/verify_short.py --project-root . --lean D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe --package-root .lake\packages --root research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/ThreeWindowWeights.lean --memory-mb 1536 --timeout 120
```

Repeat `--root` for additional project consumers in the same fresh run.
