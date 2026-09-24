# REPLAY

在本目录运行：

```bash
python3 src/replay.py
```

预期：

```text
PASS replay; 4 bad certificates rejected by both checkers
```

检查器仅用 Python 标准库。无限证明不依赖采样；检查器只核对固定多项式身份、指数同余与证书完整性。
