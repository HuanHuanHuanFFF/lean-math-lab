# 本轮独立核验计划

核验者 `/root/local_power_verification`，复杂既定语义/依赖/证据任务，`gpt-6.1-sol / xhigh`。独占本目录；不写 supply/runtime，不提交或推送，不启动本机 Lean。开始审读 UTC 2026-10-05 08:08:40；共享窗口 08:04:27–09:34:27，不自行延时。08:26 后若仍无首批 evidence，继续检查固定源和接口而不预签；09:26 优先最后证据，09:30 交接。

固定开轮基线 `a0f9ff06a4a5f3b8dc0d79dd6a45dbe2317aad6d`。采用上轮 `supply/LocalPowerDecomposition.lean`、`LocalPowerRootWidth.lean`、`LocalPowerThetaInterval.lean` 的原路径与原字节。上轮未编候选的 source-ready 状态不等于接受。Producer 数学根分别4、3、3；本轮 fresh literal 分别4、3、3，均需真实编译、传递 AX、正常内核重放、固定源码/对象/日志/全普通成员映射。

ψ 原定义为 `sum n in Ioc 0 floor(x), vonMangoldt(n)`；θ 原定义为 `sum p in Ioc 0 floor(x) with Prime(p), log(p)`。来自固定 Mathlib `0df444a360eaa60ab8c11dca51a86af692955474` 的 `Mathlib/NumberTheory/Chebyshev.lean:74,81`。`primesLE(n)` 是过滤 `range(n+1)` 的实际素数有限集。新 literal 独立展开这些原定义；RootWidth 的局部根宽度 literal 明示纸面 r=`4096/4095`，通过有理恒等式对应 producer 的 `x+x/4095`。

预期作用：真实 ψ−θ 增量的有限幂和、每个 k≥2 的根宽度与 θ 区间计数权和可连接到真实 LP 上界。若这些前置通过，完整指标未知区域保持不变；局部 ψ 供应、无限参数 y/i/n/j 和新有限中段仍缺，不提供真无界 Gap。每阶段检验的可证伪条件是：literal 不能从固定 producer 编译，出现未允许传递公理，source/object/log/原生成员绑定任一不闭合。

同源旧证据仅复用已签的范围：`../20261005-lean-halfhour/reviews/FINITE-HEIGHT-INDEPENDENT-ACCEPTED.json`，源 `7f57671f5a42e7b6f5a143769231e7817c5491b3`，实际 run `37225133204`，4 fresh AX，2 normal replay exit0。无条件原题区域 `i≥4883, i<j≤n/2, n-i<122568684`，同一个实际 Prime p≥i 整除两个完整 choose；完整指标新增0。当前完整集 `{1,2,11,29}∪[35,30000]`、有限 Gap `[10000000,122568684)`保留。对这些不重复全面重算，也不重复计收益。

08:14 左右本机资源观测：D 可用17,336,963,072 B（超过10 GiB保留线）；环境报告16逻辑CPU；`Get-CimInstance`内存查询被拒绝，未把主机总内存当可用额度。未见 lean/lake/python 进程输出。本机只读写小源/元数据；实际 CI 内存/CPU quota、磁盘与负载由执行者记录，不从此观测推断。

本目录原始核验标签初始为 pending。静态源审可说明语义对应，不替代 Lean 编译或内核重放。正常 Lean 重放不是第二套独立内核。研究新颖性、人审、发布状态分别保留。
