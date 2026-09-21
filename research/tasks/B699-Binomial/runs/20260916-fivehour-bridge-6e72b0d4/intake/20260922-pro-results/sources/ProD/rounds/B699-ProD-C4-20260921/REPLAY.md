# REPLAY

在包根目录运行：

```bash
python3 -B code/replay.py
python3 -B code/verify_hashes.py
```

`replay.py` 使用 Python 标准库：

- 检查两尾的 2/3/5 小部公式；
- 检查两个符号大小不等式化成的二次多项式在入口后严格为正；
- 检查中心位置的整数公式与模 `n-1` 矛盾；
- 对若干实际尾类 n 做 bounded sanity replay，确认不存在同时通过第1—4源标量接口的合法 j。

有限 sanity 不是无限证明；无限证明在 `PROOFS.md`。
