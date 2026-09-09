# 实际来源、读取范围与依赖状态

读取日期：2026-09-09。
固定仓库：HuanHuanHuanFFF/lean-math-lab。
固定提交：`7fd3928656489afe2c80698f0a09d1d933444186`。
所有仓库动作均为只读，没有切换到一个未经记录的 main 版本。

## 1. 已实际读取的仓库材料

以下路径相对于仓库根。具体 Git blob SHA-1 与用途另记于 `sources/repository-reading-log.json`。

- `research/tasks/B677-Lcm/README.md`：完整入口、原题、批次导航。
- `research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/README.md`：完整批次说明。
- 同批 `frontier.md`：完整历史前沿。
- 同批 `history/problem-entry.md`：完整过程与最后接受记录。
- 同批 `explorer/complete-proof.md`：分 1–150、151–330、331–文件末尾三次读取，完整数学正文已读。
- 同批 `review/mathematical-review.md`：初次返回末部截断；补读第 100 行至文件末尾。实际可见内容合并覆盖全部数学审查、有限覆盖、Lean 边界和最终快照。
- 同批 `primary/route-notes.md`：完整周期修正与小余因子斜率提议。
- `research/tasks/B677-Lcm/runs/20260908-formalization-92c221/frontier.md`：完整最新本批前沿。
- 同批 `report.md`：完整报告，含最终有限证书和 Dusart 条件消费者接受检查点。
- `research/tasks/B677-Lcm/runs/20260908-external-reductions-b3c1b7/frontier.md`：完整约数候选前沿。
- 同批 `acceptance.md`：完整量词、验证结果、失败修正与最终验收。

固定入口：
https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/7fd3928656489afe2c80698f0a09d1d933444186/research/tasks/B677-Lcm/README.md

## 2. 接续时采用的状态，不按旧文档重复验收

历史 interval-lcm 批次曾把 m<89693 的扫描记为尚未 Lean 化；后续 formalization 报告已经关闭 F677-02。
本轮采用后者的最终状态，没有重跑该扫描、重编旧证明或重新下载 209 MB 有限证书源码。

同样，后续报告给出的 m+1<4(n+k) 等初等界、有限消费者和显式 Dusart 前提下的区域消费者，均采用其报告中的接受状态。
精确 Dusart 命题仍是条件消费者的外部前提，不能将条件消费者编译成功说成该外部定理已形式化。
约数候选归约是固定 n,k 的完整有限化，不是全局 n,k 的高度界。

## 3. 本轮数学的实质依赖与归属

已知且本轮重写证明：最大素数赋值、差值 LCM 整除、乘积/阶乘界、二项式 LCM 上界、A_t≤4^t、m+1<4(n+k)。
旧 route-notes 已提出两匹配行列式，不声称本轮首次提出行列式本身。

本轮新增交付：以 F=5(k−1)(n+k) 消去 m 的匹配刚性；共同斜率分母整除 gcd 后产生的跨度排除；锚点与端点证书；平方标记多数推论；n≈k^10 的明确数量覆盖。
这些均由 `derivation.md` 自包含推导，不依赖外部短区间素数定理或未证全称结构假设。
数量覆盖使用的素数调和和估计在正文重证，没有调用 Mertens、PNT 或 Dusart 作为黑盒。
常用实分析与唯一分解按通常纸面数学使用，不是 Lean 完整形式化。

新颖性未确认；仅限定为相对于实际已读接续材料的本轮新增推导，不声称文献优先权。

## 4. 实际外部网页读取

### Farhi–Kane：周期修正的背景来源

Bakir Farhi, Daniel Kane, *New results on the least common multiple of consecutive integers*, arXiv:0808.1507。

https://arxiv.org/abs/0808.1507

实际读取了搜索输出和 arXiv 摘要/元数据页。摘要说明周期修正函数及最小周期研究。
本轮**没有读取其完整 PDF 证明**，也没有把精确最小周期定理列为本轮定理的依赖。
正文所需的周期公式和一个足够的周期均独立证明。

### 原题站点

https://www.erdosproblems.com/677

实际尝试打开，工具返回 Internal Error。没有声称读取到了其最新讨论或解题状态。
原题以用户完整陈述及固定仓库入口/验收一致性为准。

### 搜索但未采纳的输出

实际查询包括：
- `Erdos 677 lcm disjoint intervals least common multiple`
- `Farhi Kane least common multiple consecutive integers periodic function g k`
- `"lcm" "677" "prime powers"`
- `"interval" "lcm" "endpoints" "Erdős"`

命中 Cambie 的 arXiv:2410.09138（关于 #678 的不等式，不是 #677 的等式），以及非主要来源的 #677 日志页面；只读取了搜索输出，没有据此采纳任何数学结论。
也没有用“搜索未发现相同结果”作为新颖性证明。没有在证据包重分发第三方论文 PDF。

## 5. 工具限制与实际处理

容器向 raw.githubusercontent.com 直接请求时 DNS 失败。随后 GitHub 只读连接器成功返回上述固定版本文件。
因此记录的是“容器直接下载失败，连接器读取成功”，不是“仓库无法读取”。
没有假定能访问其他会话的缓存、本地路径或工具链。
本轮实际执行的实验和独立算术复核均在本包中；没有 Lean 运行、仓库修改、推送、CI 改动或外部联系。
