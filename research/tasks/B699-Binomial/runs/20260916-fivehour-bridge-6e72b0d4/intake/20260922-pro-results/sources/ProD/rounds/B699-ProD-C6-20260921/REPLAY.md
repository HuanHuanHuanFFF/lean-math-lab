# REPLAY

在证据包根目录运行：

```bash
python3 -B code/replay.py
python3 -B code/verify_hashes.py
```

`replay.py` 只重放：

- 当前模3、5、8下四个粗块的平方障碍；
- 第2源指数奇偶不等式的有限符号实现回归；
- D25-SF、LR-SF、GAP-SF 的精确常数；
- `800(1-1/n)^2(1-4/n)>799` 的阈值；
- 基础指数门、CRT 类与六次严格整数放大。

它不搜索 NC6，不扫描原 `(n,j)`，也不是原题有限末端。无限结论以 `PROOFS.md` 的符号证明为准。
