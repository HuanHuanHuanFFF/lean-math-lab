# 分段高度桥梁

负责人：本批子任务 `height_block_lemma`。仅拥有 `lean/HeightBlock.lean` 和本记录；共享入口、验证目录及编译由主任务协调。固定来源提交 `12c31b8b5729b0017cf8e1423cd98ed5230aaaae`。本批开始 `2026-09-09 17:59:27 UTC`；本子目标第一检查点为开始后 45 分钟，遵守本批原始截止与主任务的串行计算安排。

## 目标与实际作用

复用固定来源的 `B699Middle.HeightValid`、`B699LowIndex.heightExponent`、`windowDegree`、`windowConstant` 与完整小素数计数。已验高度消费者把一个有限整数比较接到全部 `n ≥ N`；这里把同一比较推广到闭区间 `L ≤ i ≤ U`，以减少本轮 1000..4882 的证书数量。

实际产出：通用分段引理和全部单调性已由 Lean 接受。单独完成本引理没有新增任何具体指标的验收；67 段具体端点数值义务、3883 个指标的拼接及最终原题消费者仍由主任务继续验证。全局未知区域没有仅因这一个通用引理就自动缩小。

最简接口：`B699HeightBlock.heightValid_of_block`。对任意自然数 `L U i r s N t`，前提恰为：

- `2 ≤ L`、`L ≤ i`、`i ≤ U`、`s < L`、`U ≤ N`；
- `smallPrimeCount U ≤ t`；
- `t * (2*s-r) + windowDegree U r s ≤ L * (2*s-r)`；
- `U!^(2*s-r) * N^(t*(2*s-r)+windowDegree U r s) < windowConstant L r s * (N.descFactorial L)^(2*s-r)`。

结论为固定定义 `B699Middle.HeightValid i r s N`。没有改变目标，没有 `U < N` 强化，也没有从 `U` 改成 `U+1`。`smallPrimeCount U` 精确计数所有严格小于 `U` 的素数；因此 `i=U` 且 `U` 为素数时也保留原约定。`2*s-r` 和窗口中的减法均为原定义的自然数截断减法；本引理没有新加 `r ≤ 2*s` 或其它结构前提。

## 证明依据

1. 计数：`range i` 的素数过滤集合包含于 `range U` 的素数过滤集合，基数单调；没有只检查给定素数列表的缺口。
2. 阶乘：复用固定 mathlib 的 `Nat.factorial_le`。
3. 窗口次数：自然数截断减法在 `i` 上单调；区间和对上端单调。
4. 窗口常数：同一截断减法，加上额外阶乘因子均至少为 1，因此区间乘积单调。
5. 下降阶乘长度：固定 mathlib 等式 `Nat.descFactorial_mul_descFactorial` 将较长乘积分解为原乘积乘以尾部。`i ≤ N` 给出尾部严格正，故至少为 1；无须假设 `U < N`。
6. 用上端控制左侧阶乘、计数和次数，用下端控制右侧窗口常数及下降阶乘，得 `左_i ≤ 左_U < 右_L ≤ 右_i`。次数比较再由 `L ≤ i` 传递。

源码仅导入固定 `HeightRows.lean`；不采用旧未验 `HeightApprox.lean`/`DyadicBounds.lean`。所有上述单调性都在本文件中有证明或复用固定已证 mathlib 引理，没有把结构义务附加为前提。

## 验收证据

主任务的首编证据：[evidence.json](../verification/20260909T181027Z/evidence.json)；[完整编译及公理日志](../verification/20260909T181027Z/logs/compile-0011-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_HeightBlock.lean.log)；[源码策略日志](../verification/20260909T181027Z/logs/source-policy.log)。本子任务已实际读取这些证据，并复核当前源文件 SHA256 与证据的编译前后哈希一致：`3018eee9c04a05c38e1d536f9928f06906905e43c699b791f3f38d50ce422fd2`。

- Lean `4.33.1`，编译器提交 `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。
- 验证 `2026-09-09 18:10:27..18:10:57 UTC`；实际新文件编译 `18:10:34..18:10:57 UTC`，`23.654` 秒，退出码 `0`，未超时。
- 命令使用 `-j1 -M1280 -DElab.async=false -DautoImplicit=false -DrelaxedAutoImplicit=false`，完整命令和输出路径见日志。
- 精确项目源码闭包 11 文件：本次新编 `HeightBlock.lean` 1 文件，复用逐源、依赖、对象绑定的已验旧模块 10 文件。没有把缓存复用说成全部重编；没有运行独立第二内核。
- 九条声明均打印传递公理。`factorial_mono` 只依赖 `propext`；其余八条，包括主结论，均为 `[propext, Classical.choice, Quot.sound]`。执行审计及源码策略通过，没有额外公理。
- 本次验收仅覆盖通用分段桥梁及其依赖，不包含具体 67 行整数证书、1000..4882 的最终原题定理或独立源题审查。

## 尝试与交接

- `18:10:33 UTC` 的源码候选检查时尚未有首编结果；该状态已被以上新鲜成功证据取代。首次 Lean 编译即通过，无数学反例、无证明回退，也未修改接口。
- 普通 `exec_command` 在创建进程前报 `helper_unknown_error: setup refresh had errors`；已通过获准的只读提升进程读取指定文件。这是执行环境故障，没有据此推断仓库状态。补记时 `apply_patch` 也遇到同一启动故障，转用获准路径内的单进程 PowerShell 写本记录。
- 起初在本工作树下查找 `.lake/packages` 未找到依赖；随后只读根仓共享的固定 mathlib 源码核对 API，不改依赖。实际编译环境由主任务准备与执行。
- 已向主任务报告接口无需加强。主任务报告有向整数探测可用 67 段覆盖本轮目标（首段 1000..1022，r=333、s=666、t=172，N=20,000,000）；该消息作为数值方案来源，未在本子任务独立验证，仍需 Lean 端点证书验收。

交接时本批已用约 13 分钟，早于 45 分钟检查点。最后已验结果是完整的 `heightValid_of_block` 通用接口及八个单调性/次数辅助引理。源码在首编后保持不动；本子任务未启动 Lean 或其它重计算，未改历史批次、入口、依赖、分支，也未 commit/push。

下一检查：主任务把数值分段检查器接入该接口，验证 67 段并穷尽覆盖 1000..4882，然后与固定有限 `n` 消费者拼接；通用引理没有留下新的未证结构义务。
