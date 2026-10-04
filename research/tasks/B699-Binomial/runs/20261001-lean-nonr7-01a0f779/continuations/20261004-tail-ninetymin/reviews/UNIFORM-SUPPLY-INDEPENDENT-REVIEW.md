# 无界供应：独立源码核对

核验者 `/root/tail90_verification`，复杂语义/依赖核验，`gpt-6.1-sol/xhigh`。本轮固定开始源 `297dcd3943fc6468212cc6240bc65a3b9a17ccc2`；只写 `reviews/**`。共享 start `2026-10-04T10:22:50Z`、proofStop `11:32:50Z`、hardDeadline `11:52:50Z`；无延期。本文是源审读，不是本轮新 kernel 接受。

## 原题与当前闭包

全部 Nat `1 ≤ i < j ≤ n/2`，存在同一个实际 `Nat.Prime p`，`i ≤ p`，并且 `p ∣ n.choose i`、`p ∣ n.choose j`。不改 `p=i` 合法端点，不截断素数幂。采用旧具名接受 `[4883,5000]`，由 `20261004-nonprime-onehour/reviews/TAIL5000-INDEPENDENT-ACCEPTED.json` 固定 source `5b42228cc2b05d701f7f7ea935b315c36d36bbac`、run `37143741098`、原包 `217e1297ba044c005a13d8be5884a7167daf1c3600fb28148d9195d8155561bc` 绑定；其旧 provider 为 `be6b2df9b58b4f732564dc882945ec5415c81f1a` / `29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13`。只引用旧接受，不重 kernel。

## 从实际消费者反向检查

1. `20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean` 的 `B699FiniteFull20261002.original_tail_of_gap` 已实例化实际反例高度及 finite≤20M；仍有唯一数学输入 `hgap : B699TailGap.Gap 4095 10000000`。定义要求 **每个** Nat `y ≥ 10^7` 都有实际 prime `p>y` 且 `4095*(p-y)≤y`，没有有限 y 上界。
2. `20261002-tail-twohour/gap/DusartAdapter.lean` 的 `nat_gap_of_dusart` 保留 `DusartStrictInput`：每个 Real `x>396738` 都有实际 Nat prime，`x<p≤x*(1+1/(25*log(x)^2))`。适配器中的 logarithm/自然数转换没有证明这个分布输入。
3. `20261002-terminal-gap-twohour/gap/ThetaTail.lean` 的 `gap_4095_above_theta_threshold` 保留两个无界 Real 输入：`0<x → theta(x)-x≤x/36260`，以及 `122568683<x → x-theta(x)≤x/(20*log(x)^2)`。下游 `gap_4095_of_theta_estimates_and_initial_segment` 还需每个整数 `10^7≤y<122568684` 的严格右侧 prime 供应。有限原题 n≤20M 与有限 y 的 Gap 不是同一命题，不能相互代替。
4. `20261002-terminal-gap-twohour/gap/PsiTheta.lean` 的 `psi_sub_theta_le_twentyone_sqrt`、`psi_sub_theta_le_div_40000` 为无条件前置；但 `gap_4095_of_psi_error` 仍需每个 Real `x≥10^12` 的 `|psi(x)-x|≤x/10000`，且只输出 threshold `10^12`。还需 `[10^7,10^12)` 的正确 initial supply 才能接原终端。
5. `20261004-nonprime-onehour/supply/Tail5000ConsumerLegacy.lean` 使用有限 `PrimeChain 4883 20000093 20482069`，通过 `4096*K≤U` 接到所有 n/j 的固定 i 区间。它没有证明无界 Gap。旧接受完毕的 `[4883,5000]` 不因 chain 端点约20M而限制 n；大 n 由已接受比例消费者处理。

纸面源 `20260909-prime-optimization-a81baaab/delivery/REPORT.md` §6.1–6.3 明说没有独立证明 Gap，只保留 Dusart2010 Proposition 6.8 出版输入。§6.2 的整数拼接确实保留 strict height、`y<p`、允许 Gap 右端等号；不能把这段条件推理误记为输入供应。旧十三根解析接口接受记录 `20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json` 也明确仅接受其 fixed-module scope。

在当前 pinned Mathlib `Mathlib/NumberTheory/**/*.lean` 对 `Dusart|Schoenfeld|396738|122568683|36260|16597` 的限定搜索没有供应匹配；这只证明此次限定源码搜索未找到，不证明全库不可形式化。当前缺口是数学输入未形式化/完整源闭包未供，不是本轮出现 OOM、递归深度或 kernel 失败。没有通过本轮重 Lean 得到故障成本，不能要求作者用数学优化去修一个尚未执行的故障。

## 当前可验目标与收益

优先验证新有限端点 helper，把 `4096*K≤U` 改为 `4095*K≤U`：`n<U` 用 chain；`U≤n<4096*i` 用已接受末 prime `U`，由 `i≤K` 得 `n<U+i`。以 `U=20482069`，`4095*5001=20479095≤U`，可供固定 5001 且所有合法 n/j，无需新增 prime。它仍是待实际编译、AX、normalchecker 和 source/object/raw 独立绑定的候选。

若完整接受5001或后续6000/10000，只消去相应有限指标区间，所有 n/j 均由准确原题 literal 验证；真无界 Gap 的 y、剩余大指标 i/n/j、低23与 R7 不动。没有用候选源码、纸面出版定理、作者 PASS 或有限计算升级接受。

资源观察：本机 CIM 内存查询权限拒绝；D剩余 `26039484416` bytes，当前未观察到 lean/lake 进程。只进行轻量源码核对，不启动本机 Lean。重执行资源由 C 在实际 CI runner 测量。
