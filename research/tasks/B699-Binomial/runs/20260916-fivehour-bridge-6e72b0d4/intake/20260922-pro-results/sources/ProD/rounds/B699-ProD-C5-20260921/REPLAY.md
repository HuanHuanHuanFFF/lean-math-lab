# REPLAY

在证据包根目录运行：

```bash
python3 -B code/replay.py
python3 -B code/verify_hashes.py
```

`code/replay.py` 只检查：

- `chi_10` 的模40特征类；
- `q3≡29 mod40`；
- 本轮三个精确常数与最低指数门；
- 基础 CRT 类；
- 六次严格整数 CRT 放大。

它不扫描 `(n,j)`，不证明 NC6 充分性，也不是原题有限末端。无限结论以 `PROOFS.md` 的符号推导为准。
