# 第二轮接收限定审查

审查对象为 `inputs/i13` 与 `inputs/pade-three` 的已解包文件；未修改输入、未联网、未运行生成器或重放。

## 结论

两包可兼容整合；闭合等级只能记为“外部出版输入上的纸面证明＋完整精确有限证书”。两包均明确 `Lean=0`、无人审／无新颖性调查，不能升级为内核或人审通过。

范围核对一致：`i13/REPORT.md` §1、`HANDOFF.md` §1 只新增全域指标 13，并保留 `R={3,…,12,14,15,16,18,20,21}`（16项）；`pade-three/REPORT.md` §0、`HANDOFF.md` §2 只新增 11、16、21，并保留含 13 的14项集合。`results/frontier_increment.json` 的新增 `[11,16,21]` 与剩余集合，去掉 13 后恰为
`{3,4,5,6,7,8,9,10,12,14,15,18,20}`；与用户给出的 17→13 变更完全相符。两包 `CURRENT_STATE.md`、`SOURCE_MAP.md` 字节哈希相同（`84d2…c5` 外层上下文），未见版本冲突。

## 条件与证据

`i13/notes/PROOFS.md` §§3–4 及 `REPORT.md` §§3–4 明确依赖 BFT Lemma 4.1、Proposition 5.1，并把共同阈值 `Y≥2^8191` 作为源约束；在此基础上纸面推出 `noCommon⇒n<2^8192`。§5–§8 再给 7/10 立方余因子桥、全指数块、CRT 候选完备性和 n=126 的全部 50 个 j 覆盖。`outputs/i13_cuts_*`、`i13_graph_check.json`、`i13_block_check.json`、`i13_terminal_check.json` 均与该链的范围/计数相符。

`pade-three/SOURCE_MAP.md` 与 `REPORT.md` §§2–8 把 11、16、21 的旧 Padé 高度作为外部上游，并复用四项包指数块、七项包三窗口/CRT结构；本轮报告重述下游量词。`results/upstream_replay.json` 只证明冻结旧数值证书的有限算术重放，不能代替 BFT 或旧 Padé 推导；下游 PASS 也不等于第二模型、内核或人审。

## 是否有显见越界

未发现把仅有条件接口冒充全域闭合的显见错误。两报告都写出高度后的有限消费者，并明确把 18/20 的 `next_condition` 标为条件图、无高度、无闭合（`i13/outputs/next_condition.json`；`pade-three/REPORT.md` §10）。总前沿应保留限定：11/16/21 和 13 的“全域闭合”依赖 BFT/冻结 Padé纸面输入，不是自足形式化定理。

代码有一项非阻断的维护提示：`i13/code/check_primitives_i13.py` 与 `pade-three/vendor/check_certificate.py` 顶部仍留有旧 `TARGETS=(27,30,33)` 常量；本轮入口在外层分别强制 i=13 或 `{11,16,21}`，且检查路径未使用该常量，因此不改变本轮结果，但后续复用文件时应清理或显式标为历史遗留。
