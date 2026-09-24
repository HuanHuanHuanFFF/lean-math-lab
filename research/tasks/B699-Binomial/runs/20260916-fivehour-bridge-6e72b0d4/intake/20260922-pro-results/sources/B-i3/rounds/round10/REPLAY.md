# REPLAY

依赖 Python 3 + SymPy。

```bash
python3 src/replay.py
python3 src/checker_independent.py
sha256sum -c SHA256SUMS
```

`replay.py` 是较重的精确分类重放；`checker_independent.py` 是较轻的终端/证书核验。
