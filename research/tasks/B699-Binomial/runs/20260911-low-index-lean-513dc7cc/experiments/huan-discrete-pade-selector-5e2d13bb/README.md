# 纯 Nat 的最小 Padé 指数选择器

owner：`/root/i18_downstream_review`；唯一写入本目录。首个工具检查时间 2026-09-11 11:54:45 UTC；每 20 分钟或明显障碍记录 checkpoint。主线程负责实际 Lean 编译，本 worker 不运行 Lean/Git，不修改旧源。

固定 `Z>1,Y0>0,Y≥Y0`，实际定义 `leastExponent Z Y hZ := Nat.find (exists m,4Y<Z^m)`。存在性使用原生 `Nat.lt_pow_self` 给出的 4Y 见证，但不把该见证用作选择器。证明 threshold、全部更小指数不满足阈值、前项界、下界 M、单端与同一个 m 的双端容量。

容量输入仅为 `J≤Z^alpha`、`J^M≤Y0^alpha`、`4^alpha*J^(M+1)≤Z^(alpha*M)`。允许 J=0、alpha=0；不通过附加正性躲过这些边界。最后只取消始终正的 `4^alpha`。

候选 `LeastExponent.lean` 使用已缓存的 Nat.Find 和原生 Omega，按主线程实际环境提醒使用显式 Nat.le_trans / Nat.pow_*，避免 order field notation。独立短幂基桥若提供则写在 `ShortPowerBounds.lean`；它只证明一般整数不等式转译，不制作五行巨大数据的验收声明。

来源：同 run 已冻结 `huan-i11-approximation-bridge-plan-5e2d13bb` 的 REPORT、NEXT_LEMMA、short-power-bases 与 OBLIGATIONS。只读取固定旧计划，未采用其他 m0 或权重。

预期作用：解锁同一 Padé m 的误差阈值和两端指数提取容量，避免 Real.log。实际五行数值证书、真实 Q/E/G、行余项和最终原题消费者仍另待接受；本目录不增加 B 原题指标。

检查点 2026-09-11 12:14:18 UTC：两份候选17个audit roots完成；小检查15,003容量/515同m双端及短基桥通过，耗时0.023992秒。已经停止代码修改，正在冻结；未运行Lean/Git或五行真实大幂。
