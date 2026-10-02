# B699：固定小块验证与有限供应接续

状态：执行中，用户新授权一小时并沿用阶段push/低电脑负载要求；不是恢复上轮已结束预算。主要继续既有纸面证明的Lean验证，优先i≥4883，不碰R7。

- 开始2026-10-02 10:59:22 UTC / 上海18:59:22，原硬截止11:59:22 UTC / 上海19:59:22，不延期；11:53停止新路线，11:55数学源冻结，余时最终核验/停止。全部子线程共用一小时，截止后仅行政封存/普通push。
- 分支huan/b699-lean-next-20261002-01a0f779，固定输入88f17f5c8f600923b740d79ed387d98d9feedccb；main数学b17ee9f来自已合并PR27。旧run/续轮的数学、源审、成功/失败、rawhash清单原字节冻结。

## 已采用与预计依赖变化

原题：全部Nat n/i/j，1≤i<j≤n/2，有samePrime p≥i同除n.choose i与n.choose j。p=i与完整素数幂保留。此前i≥1000,n≥4096i统一终端已独立kernel/type/Std3/checker接受；完整集{1,2,11,29}∪[35,4882]。

上轮[报告](../20261002-finite-onehour/REPORT.md)新接受0。本轮首先实际跑原固定32prime/原题pilot闭环（10源/50公开根/两个独立literaltyped，旧bytes不重命名），scope候选[19662301,19811023)、i≥4883、全合法j。成本/结果真正通过后继续primorial/GCD小基底与相同32，再据实分批扩全有限供应/消费者；不在初始probe或前置自动结束。已有源审/18旧body映射复用，不冒kernel通过。

预期：固定候选未编→实际可消费小块/真实成本→真实全finite≤20M供应→完整i≥4883消费者仅保∞Gap输入。部分pilot与历史finite重叠，真实前沿收益单独记，不能用lemma数/CI绿灯算全题进度。旧common_le_twenty_million(i≥185,gcd输出)直接特化4883并拆两∣足以消finite，不要求更强FiniteTopSupply。全局仍需全y≥10M Gap，未覆盖低比例i/n/j绝对值和y仍无界。

## 当前前置与策略

上轮614定向cache实际成功，9pins相同，随后Windows物化CRLF哈希误当Linux基准守卫拒绝。新旧准确映射：8926B/d49b…CRLF，固定Git原blob8719B/3d326…LF；仅换行物化差异，未假称旧远端leaf的actualhash已观测。静态修正已独立审，只nextcheck-ready-not-run。

本轮先用修正守卫实际验：从固定commit读取原blob验证SHA/大小，再要求actualworkingrawbytes=该blob；旧hash/失败记录不改。优先当前安全local受控入口，否则立即窄LinuxCI，不等待低RAM一整轮。仍pinnedLean4.33.1/9依赖/专用source-object-argv-exit-rawlog绑定；拒绝全部额外axiom/sorryAx，Std3只允许子集不强制用齐。新原题根正常leanchecker是同kernel重放、导入可信，不称第二独立内核。

## 归属、模型及资源

| 执行者 | 模型/分类 | 独占新轮目录 |
|---|---|---|
| finite_supply_sol | 6.1 Sol/xhigh，复杂既定proof/依赖 | finite/及对应ignored tools/finite |
| semantic_verify_sol | 6.1 Sol/xhigh，复杂独立语义审查 | semantic/、reviews/及对应tools/semantic |
| runtime_recovery_sol | 6.1 Sol/xhigh，跨平台入口调试与执行 | runtime/及对应tools/runtime；协调指定.github/workflows/b699-finite-onehour.yml |

Leader独占本README/frontier/REPORT/problem OVERVIEW；只行政来源/字节/分支/Git发布，不运行proof checks。Worker不操作Git，不改他人/旧冻结源，不另派子线程；model/复杂度变化保持任务与预算并记录原因。

本机重检查单锁Idle≤2logicalCPU、-j1/M3132/asyncfalse、运行物理余900MiB/D≥20GiB；重起跑3072/tree1792，轻载荷只按已有source峰值校准。缓存/临时文件全在D，定向复用，勿整库下载/构建或关闭他人程序。

远端先记录self-cgroup父链/有效内存/CPU/实际disk；同串行/2CPU/nice19/900余。已测cache专用startup5120/tree3072/threads1；proof不因cache校准降标准。CI job12min、起跑最晚11:46:22（hard减13min），checkout前拒晚，每child原absolute11:59:22。workflow只current精确branch及源/runner/manifest明确paths触发、contentsread，无auth/权限/PR/merge变更。完成阶段普通commit/push本分支，核SHA继续，最终停用push触发后封存。
