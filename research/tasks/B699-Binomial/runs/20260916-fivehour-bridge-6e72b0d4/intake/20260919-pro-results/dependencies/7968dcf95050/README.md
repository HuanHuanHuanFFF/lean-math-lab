# B699 Pro A · i9 · Cover22 evidence

主结果：固定代数覆盖的可载点分量上界 **33→22**。新结构还给剥离六条源竖直线后的总加权-X次数余量≤3，以及两个低普通重数原题消费者。

阅读顺序：`REPORT.md` → `PROOFS.md` → `FAILURE_BOUNDARIES.md` → `HANDOFF.md`。来源契约在 `SOURCE_ADOPTION.md` 与 `evidence/source_manifest.json`。当前真实状态在 `SESSION_STATE.json`。`OVERVIEW_DELTA.md`只是供leader合入唯一入口的增量，不是另一个总览。

## 接收

在本目录运行，输出目录必须尚不存在：

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

最终接收只需要Python标准库，不需要SymPy、Lean、网络或旧证据ZIP。它不导入发现脚本。`discover_irreducible_example.py`的可选发现重放使用SymPy；正式不可约证书已由标准库接收器独立实现。

成功结束状态为 `PASS_NEW_SOURCE_BUDGET22_AND_CONSUMERS`。主实际记录在 `verification/acceptance-04/` 与 `logs/acceptance-04.log`。中断和中间诊断日志保留，不作为最终通过状态。

`code/discover_*.py` 是发现/诊断程序；`code/reproduce.py` 是接收入口。附带若干中间预算，最终22结论以 `evidence/septic_budget.json` 及完整新接收为准。SAT48条件探针不是八次分类或21证明。

## 证据边界

作者纸面证明＋同会话精确交叉核验；冻结作者输入保持原等级。没有外部独立审稿、Lean、G恢复、全题反例或一般绝对高度。R7、57模板、152行目标、最低次数和14源下界不变。

完整性校验见 `SHA256SUMS.txt`；旧大包未重复纳入，只有冻结路径、Git对象哈希与采用接口。
