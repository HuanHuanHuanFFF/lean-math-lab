# 矩泛函到实际 Padé 系数与恒等式

- 负责人：/root/i18_downstream_review；开始于 2026-09-11 06:33:28 UTC；无另设总时限。
- 唯一写入：本目录。既有 Moment/BernsteinCone 冻结源、PadeInteger、短路径整合源和旧 review 全部只读。
- 目标：从实际有理系数矩 M 和全部自然数 β 矩出发，连接 BFT 的实际 P/Q/E 整数系数与三种多项式核；独立推出正确的 Padé 恒等式。
- 正确指数：P−(1−z)^(B+C+1)Q=z^(A+C+1)E。示意中的其他指数不作为前置。
- 路线：先用归一化 Bernstein 基底的矩值 1/(n+1) 证明任意多项式的代数分段公式，再代入 P 核。无需积分或导数；M 仍只具线性，不具乘法性。
- 预期解锁：B 阶段 Padé 整数系数与核估计、两种相邻参数非退化之间的实际恒等式前置；若后续增长证书接好，可避开本机缺失的 IntervalIntegral/Derivative 缓存。
- 范围：争取全部 A,B,C∈ℕ 和全部有理 z，含 z=0,1 与负值；这覆盖实际 A=C 和 D0/(a0P) 取样。实际原题指标接受不增加。
- 仍缺：G/θ、实际严格余量增长常数、相关有限证书及最终原题 Lean 消费者。
- 限制：不运行 Lean、大型计算、下载、Git 或 CI。所有新 Lean 源均为未编译候选；现有候选也不因导入而被本任务视作已验库。

首个检查点：证明归一化 β 质量与分段公式，做小型精确 Fraction 反例检查，再交付通用证明和对应候选。状态及冻结源映射见 REPORT.md 和 FREEZE_V1.json。

完成：全部自然数 A,B,C 和全部有理 z 的纸面连接已给出；六个完整 Lean 候选已写出但未编译。小型 Fraction 检查于 06:50 UTC 退出 0，错误指数示例残差 23/64。见 [REPORT.md](REPORT.md)、[EXACT_CHECKS.json](EXACT_CHECKS.json) 和 [FREEZE_V1.json](FREEZE_V1.json)。冻结后不再修改该版源码。
