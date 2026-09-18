# B699 Pro A · NF35 / COVER19

入口：[REPORT.md](REPORT.md) → [PROOFS.md](PROOFS.md) → [HANDOFF.md](HANDOFF.md)。

本轮：无高度限制的D12/e6/普通μ35末三行类别，完整分类72个首一可约式；在原题合法点全部非零。同一个原K152的覆盖20→19，并有EDGE19。SAT60几何未执行；已新增其成功后19→18的普通源缺重预算证明。

## 重放

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

输出目录必须不存在。最终接收只需Python标准库，不导入发现程序，不运行旧证明。实际原接收在`verification/acceptance_final/`，最终压缩包另有干净解压重放回执。

`code/discover_nf35.py`为发现程序；`probe_factors.py`是可选SymPy建议，不参与接收。`source_budget.py`为本轮准确源/X账本；其他`probe_*.py`、`next_gate_probe.py`只作额外必要模型/条件路线诊断，不能提升未证几何。

来源旧包不重复嵌入，只保留`SOURCE_ADOPTION.md`与`evidence/source_manifest.json`中的路径、SHA256和采用接口。所有新源码、证书、实际执行日志、失败边界和会话状态均在本包内。没有Lean、外部独立数学审稿、G恢复或仓库写入。
