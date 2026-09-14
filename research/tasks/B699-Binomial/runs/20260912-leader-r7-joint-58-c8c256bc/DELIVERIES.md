# 已接收成果索引

本入口统一登记本次 VPS 接管收到的十份原交付：四份启动材料、随后返回的 A/B/新D 三份成果，以及本轮A-nonic、B与误收B任务的新D三份成果。它负责找文件与追来源；唯一可变研究前沿仍为 [CURRENT_STATUS](CURRENT_STATUS.md)，接受责任见 [acceptance](acceptance.md)。旧 D、新 D 保持独立署名。

## 最新A-nonic

Pro A新增一般与COL3中心带、可变分母带，可覆盖无界参数；58族、外层绝对界与完整双高幂族仍未闭合。各带的初等/冻结依赖分列，未独立接受。

[报告](deliveries/A-nonic/REPORT.md) · [交接](deliveries/A-nonic/HANDOFF.md) · [来源](deliveries/A-nonic/SOURCE-LOCATION.md) · [评估](notes/20260914-a-nonic-assessment.md)。

## 本轮两份i3成果

|交付与真实会话|新增与边界|入口|
|---|---|---|
|新D误收B任务 / dyadic-defect-height|固定缺陷全参数有效高度（BEG Thm2.3）；二进gcd增益带及另有出版依赖的对数带；一般缺陷无界|[报告](deliveries/D-as-B-dyadic-height/REPORT.md) · [来源](deliveries/D-as-B-dyadic-height/SOURCE-LOCATION.md)|
|Pro B / bounded-defect-gap|固定缺陷全参数有效高度（BEG Thm2.1）；同一j整数恢复、移位高2幂无限消费者；i3未闭合|[报告](deliveries/B-bounded-defect-gap/REPORT.md) · [来源](deliveries/B-bounded-defect-gap/SOURCE-LOCATION.md)|

重叠消参只计一类推进，初等消费者与出版高度分列，见 [两稿比较](notes/20260914-dyadic-pair-assessment.md)。两份均待独立数学接受。

## 上一轮三份成果

以下是原作者的交付主张，准确前提与证明须查原稿，尚未由本 Leader 指定的独立数学核验者接受。

| 交付 | 主要产出与边界 | 阅读与来源 |
|---|---|---|
| A-window-carry | 完整幂联立、45条移位界与上层进位结构；原主攻位置未闭合，外层无有效绝对界；可选非有效有限性另有出版依赖 | [报告](deliveries/A-window-carry/REPORT.md) · [交接](deliveries/A-window-carry/HANDOFF.md) · [失败边界](deliveries/A-window-carry/FAILURE_BOUNDARIES.md) · [来源](deliveries/A-window-carry/SOURCE-LOCATION.md) |
| B-integer-form-bands | 扩大 i3 中心及内部区域覆盖，建立整数形式并排除零缺陷分支；一般残余未有效有限化 | [报告](deliveries/B-integer-form-bands/REPORT.md) · [交接](deliveries/B-integer-form-bands/HANDOFF.md) · [失败边界](deliveries/B-integer-form-bands/notes/FAILURES.md) · [来源](deliveries/B-integer-form-bands/SOURCE-LOCATION.md) |
| 新 D-quartic-gap | 通用条件判据；全部 n=2^a3^b+h、a,b≥0、h∈{0,1,2,3} 的合法 i4/i5 已由作者纸面有限化及证书排空；完整指标仍未闭合 | [报告](deliveries/D-quartic-gap/REPORT.md) · [交接](deliveries/D-quartic-gap/HANDOFF.md) · [失败边界](deliveries/D-quartic-gap/notes/FAILURES.md) · [来源](deliveries/D-quartic-gap/SOURCE-LOCATION.md) |

三路的比较与剩余问题见 [本轮合评](notes/20260914-integer-form-round-assessment.md)。先前 [A/D评价](notes/20260914-window-quartic-assessment.md) 是 B 返回前的快照。

## 四份启动材料

| 原作者与交付 | 保留内容 | 阅读与来源 |
|---|---|---|
| Pro A / A-outer | 外层指数、本原性、联合高度与未闭合边界 | [报告](deliveries/A-outer/REPORT.md) · [交接](deliveries/A-outer/HANDOFF.md) · [来源](deliveries/A-outer/SOURCE-LOCATION.md) |
| Pro B / B-cubic | 立方禁形、条件整行覆盖与一般残量缺口 | [报告](deliveries/B-cubic/REPORT.md) · [交接](deliveries/B-cubic/HANDOFF.md) · [来源](deliveries/B-cubic/SOURCE-LOCATION.md) |
| 旧 Pro D / D-transfer | 见证阈值转移、条件整行结论及作者有限域接收 | [报告](deliveries/D-transfer/REPORT.md) · [交接](deliveries/D-transfer/HANDOFF.md) · [来源](deliveries/D-transfer/SOURCE-LOCATION.md) |
| 新 Pro D / D-three-window | 三窗口条件、失效行计数及方法边界 | [报告](deliveries/D-three-window/REPORT.md) · [交接](deliveries/D-three-window/HANDOFF.md) · [来源](deliveries/D-three-window/SOURCE-LOCATION.md) |

这些记录保留原作者的当时采用范围；后续提供材料，不倒记为早前已经读过。最新三路在上次研究中没有互相采用彼此尚在生成的新成果。

## 原件和恢复

机器可读总表为 [DELIVERIES.json](DELIVERIES.json)：逐件记录十份原文件名、大小、完整 SHA-256、保存身份、作者、成员清单与阅读入口，不重复复制全部成员清单。

| 清单 | 实际范围 |
|---|---|
| [四份启动原件](intake/20260914-outer-cubic-transfer/SOURCES.json) | 492条外层文件成员记录，含本地副本、既有主树/交付复用和原容器定位 |
| [最新 A／D](intake/20260914-window-quartic/SOURCES.json) | 126条外层文件成员记录，14份原字节阅读副本 |
| [最新 B](intake/20260914-integer-form-bands/SOURCES.json) | 65条外层文件成员记录，8份原字节阅读副本 |
| [A-nonic来源](intake/20260914-a-nonic/SOURCES.json) | 95条外层文件记录，94条作者manifest核对，12份原字节阅读副本 |
| [两份i3来源](intake/20260914-dyadic-pair/SOURCES.json) | 130条外层文件记录，作者manifest实际覆盖分别登记 |
| [最新v3附件收据](intake/20260914-open-next-round-v3/PACKET_RECEIPT.json) | 新三份提示词、四份完整原件、固定阅读入口与保存回执 |
| [前一轮附件收据](intake/20260914-open-next-round/PACKET_RECEIPT.json) | v2完整包的大小、哈希和保存回执 |
| [旧原件嵌套位置](intake/20260914-open-next-round/HISTORY.json) | 四份启动 ZIP 在最新原件中的精确成员路径及原字节哈希 |

最新已准备的完整共用包是 `B699-ABD-open-next-round-20260914-v3.zip`，54,799,382 bytes，四份固定原件与三份自主选法任务，待用户投递；保存回执见上表。最近一次已有回传的冻结共用包是 `B699-ABD-open-next-round-20260914-v2.zip`，53,394,476 bytes。它携带三份最新原件，并在原件内保留四份启动 ZIP；不必额外再附 v1。v1仍保留为前次派单快照，v2也不因本次整理而改写。

下述为前七份接收的历史计数；十份最新总计见DELIVERIES.json。前七个 deliveries 目录共206个阅读/源码/元数据文件，合计1,803,289 bytes；其余证据依原包或既有映射恢复。683条是七份原 ZIP 外层成员记录数，包含重复来源，不是683项新结果或全部历史依赖已验。没有递归展开历史大包或把原 ZIP 重复写入 Git。

复现作者程序时，从完整原 ZIP 在隔离目录恢复其布局，并按原件要求读取实际依赖；不能直接把稀疏阅读目录当作完整运行环境。原稿、源码和证据输出保持原字节。

## 证据与接续

- 出版依赖、纸面证明、有限实验、完备证书、作者复核、独立数学审读、Lean、公理审计及 Git 发布分列于 [接受记录](acceptance.md)。本次整理不升级任何数学结论的接受状态。
- 历史容器与出版原文的具体缺口继续见 [当前证据边界](CURRENT_STATUS.md) 和各 SOURCE_ADOPTION；新包原件齐备不代表更早依赖闭包已齐备。
- 下一轮 [投递记录](intake/20260914-open-next-round-v3/DISPATCH.md) 与 [任务正文](intake/20260914-open-next-round-v3/packet/PROMPTS.md) 分开维护：正文冻结，实际投递与运行只按回执登记。
- 本次行政整理、字节核对与 Git 断点见 [整理交接](notes/20260914-output-consolidation.md)。
