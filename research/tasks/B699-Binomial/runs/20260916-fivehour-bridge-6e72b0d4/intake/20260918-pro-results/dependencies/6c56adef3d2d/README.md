# B699 Pro A — Source14 closure evidence

本轮结果：全部12源（含奇点）与13源载点分量排除；残留至少14源。R7/57模板/152行目标/50分量不变。仅负责i9。

阅读：REPORT.md → PROOFS.md → SOURCE_ADOPTION.md → HANDOFF.md。

接收（只跑本轮新增内容）：

```bash
python -B code/reproduce.py --out /absolute/new-empty-directory
```

需要Python 3.10+标准库及支持C++17的g++。输出目录须新建或为空；程序不覆盖本包证据。重放会在输出目录编译临时可执行程序，使用整数/有理数与两个辅助有限域，不使用Lean、网络或旧证据ZIP。

## 文件导航

- `PROOFS.md`：准确消费者、完整新证明和冻结入口。
- `evidence/exception_candidates.json`：9个整数核、源/奇点掩码、明确因子乘积。
- `code/profile_probe.cpp`、`code/profile_verify.cpp`：两套完整有限配置接收。
- `code/reproduce.py`：整数核/乘积/高度/Taylor/损坏证书/两个枚举的统一重放。
- `evidence/frontier14_probe.json`：十四源小核满列秩障碍；不是B699反例。
- `logs/final-replay/`：实际完整新重放输出，省略可重建的二进制程序。
- `notes/CHECKPOINT.md`、`FAILURE_BOUNDARIES.md`：短检查点、方法边界与已修复错误。
- `SESSION_STATE.json`、`HANDOFF.md`：下一会话入口与仍未界量。
- `OVERVIEW_DELTA.md`：供唯一主总览采纳的增量，未写回远端。

发现脚本`inspect_exceptions.py`需要SymPy，但不是接收依赖。`rank8_probe.cpp`是纯行秩引理的额外有限诊断；`frontier14_probe.py`只做明确受限的辅助空间探测。

不含旧大ZIP、不含实际G、不含Lean或外部审稿证明。SHA256SUMS记录本包普通文件的字节哈希，排除该清单自身。ZIP外另给SHA256。
