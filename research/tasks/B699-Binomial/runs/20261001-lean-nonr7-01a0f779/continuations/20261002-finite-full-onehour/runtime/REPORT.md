# 本轮执行与封存回执

本轮原预算为 2026-10-02 12:04:45–13:04:45 UTC，13:00 数学源码冻结。预算结束后只有行政提取、字节定位和记录，没有新证明、Leanchecker、源码生成或 CI 作业。

运行任务为既定目标的复杂跨脚本执行与诊断，执行者 runtime_recovery_sol，gpt-6.1-sol/xhigh；数学源码由 finite_supply_sol 提供，独立语义与技术验收由 semantic_verify_sol 负责。基线为 `29e4bf59b527515af8b1d761df03a6f61121d3ff`，旧轮证据与源码保持原字节。

## 实际执行

| 固定 commit / run | 实际结果 | 边界 |
| --- | --- | --- |
| `57fb64bcb29f7998a0d9a1aa3b032587b9238b5b` / 37005473924 | 起跑门禁、环境与定向 cache 成功；CoreSplice 失败 | Python 函数默认 out_root 在 import 时绑定旧目录，与 LEAN_PATH 不一致；128 未运行 |
| `3821935b3bc3ccfad0a9b27e76dde8fe6278a793` / 37006254308 | 七个 support 源实际编译与审计成功；提前编译 FiniteSupplyOnly 失败 | Windows 路径未先归一化，final 重复进入 support，CompleteChain 尚未生成；128 未运行 |
| `fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83` / 37007287888 | v3 编译、声明根公理审计、同 kernel normal leanchecker 均实际退出 0，CI success | 独立完整 source/objectparts 绑定在截止前未闭合，因此最终数学验收仍为 pending |

v2 对所有 compile_source 显式使用同一个 out_root；v3 固定 support 与 final 不相交，并静态核对 support 拓扑及尚未生成模块依赖。修订另存版本，未覆盖实际运行的旧签件。受控执行始终单锁串行、最多两 CPU、nice19、proof tree 1792 MiB、M3132、j1、async=false、运行物理余量 900 MiB；cache 采用已校准的 startup5120/tree3072 MiB/threads1。工具链、依赖 pins 与 NormNum.Prime canonical Git blob 字节绑定保存在各 run 原始回执中。

128 个固定高端节点的实际 checkpoint：compiler 0、声明根公理审计 true、normal checker 0；compiler 时间 15.990091 秒，checker 时间 9.884807 秒。随后实际成本门控记录 4171 节点，估算 633.157328 秒，余量 1458.700900 秒。全量实际生成 33 个 NormNum block 与 CompleteChain；普通归档另含该 128 probe 源，共 35 个生成 Lean 文件。

v3 原始证据给出 4418 个声明根的 Std3 子集审计与三个 normal checker 退出 0。全链 checker 峰值约 1551.83 MiB，有限原题 checker 约 1558.11 MiB，最后 proof/checker 于 12:41:25.869 UTC 完成。这是固定 Lean kernel 的再次检查，不是独立 kernel 实现。GREEN 不能替代独立最终验收。

实际 typed 候选覆盖：PrimeChain4883 从 2 到 20000093；2≤n≤20000000 的实际素数供应；n≤20000000、i≥4883、i<j≤n/2 时同一 Nat.Prime p≥i 整除两个完整 choose。semantic_verify_sol 最终明确为 pending：上述 actual 型、节点、块、公理与 checker 已读取，但完整 source/objectparts 绑定脚本没有在原截止前闭合。因此本轮不登记新的已接受原题范围；上一轮已接受 closed32 不重记为新结果。

## 原件与普通交付

三个 ZIP 均保存在 Git 外 `D:\ResearchArtifacts\b699-finite-full-onehour\`：

| run | ZIP 字节数 | SHA256 |
| --- | ---: | --- |
| 37005473924 | 80632 | `27a1402d5a17ccca95324806bb3f0e290a9e5f4d6d34e5093d751180287e8e7a` |
| 37006254308 | 296148 | `902b4aab40ad1f479f00ef75d0d84bb7659322ddb9296683930706241c44cda2` |
| 37007287888 | 323173525 | `65a3c64ff7d8ae45c7177ba8bd336a6f0e2993895e526e3663944df64b59eb6e` |

v3 568 个成员已按原 byte-manifest 精确提取：343 普通成员位于 [ci/37007287888](ci/37007287888)，225 objectparts 位于 ignored `.tools/b699-lean-20261001-01a0f779/20261002-finite-full-onehour/runtime/artifacts/37007287888/objects`。来源、每个成员的 size/SHA256、实际 storedPath 见 [intake](ci/37007287888-intake.json) 和 [对象定位映射](ci/37007287888-object-location-map.json)。行政提取完成于截止后，不提升数学证据等级。旧原始 receipt、source、stdout、stderr 和原 byte-manifest 未重写。

v3 包于约 12:58 本地运输完成并交独立审查入口；最终普通提取较晚。这一交付时间不足是独立绑定未完成的实际边界，未把后续行政字节校验伪装成截止前技术验收。动态 Lean 交付源在 `ci/37007287888/generated-sources/`，未自动覆写 finite 作者的目录。

## 未执行的终端与停机

94 个已知项目源、五个额外定向 cache 根的高度终端路线保留为候选。terminal-stage/spec 准备完成，但没有发布或运行；OnlyGap 与完整 indices4883/4884 仍 pending。终端临时只读 URI 已清除，仅保留原 artifact、commit、ZIP SHA 与旧有效期；当前状态为 nextcheck candidate / not transport ready。

workflow 已恢复 manual-only，保留本轮过期门禁 12:57:45，权限仍 contents:read。最后发布普通文件不会自动启动本轮证明作业。

[stop-receipt.json](stop-receipt.json) 的真实观察时间为 **13:06:14.242 UTC**，不是截止瞬间：owned PID 0、liveOwned 0、terminated 0、全局锁空闲；三次 CI 均完成，active 0；D 余量 **30.497 GiB**，Native 物理可用 **0.388 GiB**。本地从未起跑数学批次，未停止其他任务的进程。首次停机脚本因本轮未建立本地 logs 目录在采样前退出；行政建立空 owned logs 后使用原脚本取得上述真实快照。

所有新 proof/checker、生成与作业已停止。最后普通文件 size/SHA 清单见 `final-ordinary-manifest.json`；它只证明归档字节定位，不构成数学验收。
