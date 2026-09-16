# B699 Pro D · row3 saturation · 2026-09-16

入口：REPORT.md → PROOFS.md → SOURCE_ADOPTION.md → HANDOFF.md。

核心：目标5/H02⁺及原生目标6/D6的第3行四个具体余数槽全部非空；第3行至多三个不同粗素数底数的整行全部闭合。接旧第4行端点非空，整个两合格底数t区域闭合，余者t至少三底、t≥1001。

## 重放本轮新链

```sh
python3 code/replay.py --out /absolute/path/to/new-output-directory
```

接受路径只需Python标准库，不联网，不运行Lean，也不执行sources中旧ZIP的历史接受器。程序重新生成两份整数多项式，完整检查Taylor/正性/有限指数域/47行CRT/363个Lucas素性节点，并运行回归和损坏证书测试。

`code/common.py` 的 `missing_slot_consumer(n,j,i)` 是廉价的充分条件：只需小部除法和四次gcd，无需分解任意大数。True表示在本包准确行域内已有作者证明；False不作否定判断。

## 文件

- evidence/：新整数系数、构造用确切核、完整有限域、源分解与递归素性证书、真实运行输出。
- code/：独立接受程序；generate.py由冻结核重建系数。
- sources/：实际采用旧原文、相关旧证据ZIP与逐字节映射；不默认运行旧链。
- discovery/：可选发现记录与脚本，部分使用SymPy/NumPy/SciPy；不作为接受器必须信任的结果。
- notes/FAILURES.md：失败记录、限定与未试分支。

R7不变。未Lean、未外部独立数学审读，未发现原题反例，未修改或发布仓库。完整原题量词、端点p=i和完整素数幂均保留。
