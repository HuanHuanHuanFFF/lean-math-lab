# REPLAY

默认重放需要 Python 3 与 SymPy：

```bash
python3 src/replay.py
python3 src/checker_independent.py
sha256sum -c SHA256SUMS
```

`src/replay.py` 重新计算单槽和双线性分类并写出 `cert/classification.json`；第二检查器以不同单项式次序双向核对余式理想，并独立检查规范终端、有限域无根和坏证书拒绝。
