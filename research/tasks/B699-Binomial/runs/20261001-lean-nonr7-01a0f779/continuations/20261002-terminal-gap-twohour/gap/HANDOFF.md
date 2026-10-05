# 无界 Gap 支线交接

2026-10-02 15:34 UTC；owner `/root/gap_supply_astra`，原共享截止15:45:10，不延期。三份数学源码自14:06后未改；15:33:53重新核对SHA与独立源审一致。预算末段只登记实际回执和必要修复，不新增路线、条件包装或大表。

## 当前可接受到哪一步

- **真正无条件 `Gap(4095,10000000)` 未证明。** y仍无界，本Gap支线新增原题完整指标0。
- **三源13根只完成独立数学接口审查，尚无本支线kernel接受。** 见 [S的具名源审](../reviews/gap-source-semantic-review.md)；它确认实际θ有限和到Nat.Prime、严格左端、误差方向、自然数减法和准确未供输入。
- 首主CI受旧审计模块ABI问题阻断；第二主CI run37024878022/source0db529在第87个 ElementaryCount 子任务因内存峰3079.51MiB超过3072MiB而被守卫停止（exit−9，Leader/C报告）。两个主作业均未到本Gap三源，不将此登记为三源数学或API失败。
- C已备窄 `gap-only` 入口，4个source、7个Mathlib cache roots；最终Root经S确认，该入口没有发布、没有启动，15:34窗口已过。因此三源13根均是未编译candidate，本轮没有本支线compiler/AX/checker或kernel接受。

## 固定交付

| 文件 | SHA256 | 范围 |
|---|---|---|
| [ThetaInterval.lean](ThetaInterval.lean) | `22af1bd91d6252dcdf093726c408ae4d1449e372e1dbe2936aa2661692f783a7` | 5根：实际θ增长提取实际Prime、不对称误差判据与两个标量检查 |
| [ThetaTail.lean](ThetaTail.lean) | `a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d` | 4根：log/下误差处理；两条显式θ输入后才得Gap122568684，另须prime-gap初段才得Gap10M |
| [PsiTheta.lean](PsiTheta.lean) | `1dcca6cb1871f0886cedf8cc87d81e9630cc9c60d2e2c0664092fc9df8ee64cd` | 4根：前2根无外置分布输入的ψ−θ界；后2根显式保留ψ误差 |

完整根名、pinned Lean4.33.1/Mathlib0df444a、外部固定源在 [source-map.json](source-map.json)。论文量词与实际依赖在 [DEPENDENCIES.md](DEPENDENCIES.md)；传递占位定位在 [CORE-AUDIT.md](CORE-AUDIT.md)；完整进程记录在 [REPORT.md](REPORT.md)。

## 仍缺的真正数学供应

较小起点路线需要全正实域 `θx−x≤x/36260`，以及全部 `x>122568683` 的 `x−θx≤x/(20log²x)`。两者均未Lean供应；还须实际素数的初段 `10M≤y<122568684`。已有finite n≤20M二项式结论不能代替这一初段。

ψ路线先用本轮待编前置消除高次素数幂贡献，再需要全部实 `x≥10^12` 的 `|ψx−x|≤x/10000`。对应PNT+/IEANTN核心目前仍见明确sorry或literature stub，未采用为公理。若以后真得Gap1e12，可先服务i≥1e12的原题无限族，不必先扫完整低端；回到准确Gap10M才需低端衔接。本轮这个族也未新增接受。

文献中的2.686e12或1e19是有效范围，不等于已知要逐整数循环那么多次。现无完整可验certificate和重验成本测量。唯一新数值脚本 [chain-size-probe.ps1](chain-size-probe.ps1) 只做整数步长规模探针，不检测素性，不能作为时间估计或Gap证据。

## 下一项最短可执行检查

由唯一runtime执行者使用 [gap-probe-stage.py](../runtime/gap-probe-stage.py) 的 `manifest` / `preflight` / `run` 模式，配 [gap-probe-stage-spec.json](../runtime/gap-probe-stage-spec.json) 和 [4源闭包](../runtime/gap-probe-source-closure.json)。只需旧GapDefinitions加三源，依赖Mathlib的Chebyshev、ExponentialBounds、Prime.Defs及四个现成tactic模块；不恢复4k有限链或95终端源。

保留已声明的串行CI、本机不Lean、资源门槛与逐模块接受规则。每个模块必须绑定原source/object/raw，全部目标根Std3拒绝式审计和normalchecker正常0，再交S确认准确型。工具API失败时保留原byte/source/hash/log，另存修订；不能用过期守卫、未知初始时点或旧成功记录补签。

本轮时间窗到期后，新的实际编译须在新授权预算的执行记录中设置新deadline；保持本次源和失败记录可追溯。文献已知结果的形式化，无原创数论或新颖性主张。
