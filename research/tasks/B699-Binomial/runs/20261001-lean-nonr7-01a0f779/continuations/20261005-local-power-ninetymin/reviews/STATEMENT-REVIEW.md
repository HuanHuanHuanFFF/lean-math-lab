# 局部素数幂：独立语义与依赖审读

具名核验 `/root/local_power_verification`，Sol/xhigh。各阶段技术接受以本目录 `*-INDEPENDENT-ACCEPTED.json` 及其冻结绑定为准；本说明不将候选源码变成已编译成果，也不构成研究新颖性或人审。

## 真正的对象和边界

在固定 Mathlib `0df444a360eaa60ab8c11dca51a86af692955474` 中，ψ是 `Ioc 0 floor₊(x)` 上的 von Mangoldt 和，θ是同一区间中真实 Nat.Prime 的 log 权和。各独立 literal 直接展开该定义，θ区间 literal 还展开 `primesLE(n)=filter Prime(range(n+1))`。没有传入自由 ψ、θ、素数谓词或 LP 函数。

`r=4096/4095` 与 producer 的 `x+x/4095` 是实数有理恒等式。RootWidth、Master、Endpoint、Monotonic literal 明示 r*x。所有 prime-power 指数区间完整保留 `Icc 2 N`，最终 N=`floor₊(log(rx)/log2)`；没有删掉较高幂或仅保留平方。整数/素数窗口下端严格、上端包含，来自 `Ioc floor(a) floor(b)` 与真实 θ(b)−θ(a)；空区间使用 Nat 区间的原约定。

## 各链条承担什么

| 源模块 | 独立核对的准确范围 | 数学作用与限制 |
|---|---|---|
| Decomposition | 2≤x≤z、N≥floor₊(log(z)/log2)；局部实例 x≥10⁸ | 精确 E(z)−E(x) 幂和及整数区间 card≤b−a+1。没有上界供应。 |
| RootWidth | 全 Real x≥0、Nat k≥2 | `(rx)^(1/k)−x^(1/k)≤x^(1/k)/(4095k)`，通过 Bernoulli 和正实根单调性。 |
| ThetaInterval | 1≤a≤b | 真 θ 增量≤(b−a+1)log b，真实素数集是整数窗口子集。 |
| FiniteSums | 全 Nat K；精细平方倒数界额外 K≥1；x≥1,k≥2 | 完整 Σ1/k²≤1、Σ1/k≤K/2 与 x^(1/k)≤√x；包含 K=0、1 空和。 |
| Master | 全 Real x≥2；目标实例 x≥10⁸ | 真 E(rx)−E(x)≤√x log(rx)/4095+log²(rx)/(2log2)。只用上述前置，无分布、ψ供应或 LP 输入。 |
| Monotonic | 全 Real 16≤A≤x | log(rx)/√x 与 log²(rx)/x 由 A 处上界。是全域单调性证明，不是端点采样。 |
| Endpoint | 最后两根仅 x≥10⁸ 或 x≥14.4×10⁹ | 分别真 E 增量≤x/300000、≤x/10⁷。泛型 helper 的 sqrt/log 端点输入由最终两根消去。 |
| Round2 | 明示真正 ψ DifferenceBudget、Real[T0,C] FinitePsiSupply、I0 | 实际 θ严格增长、真实 Nat Prime 与 uniform Gap 的条件消费者；SmallLP/TailLP 已从接口删除，另外三个供应没有假装完成。 |

Master 的项级来源是 `(根宽度+1)×log(rx)/k`。根宽度与 `x^(1/k)≤√x` 给 `√x log(rx)/(4095 k²)+log(rx)/k`；完整有限和与 `K≤log(rx)/log2` 给指定常数。x≥2 的强范围是实现实际声明，目标 x≥10⁸ 是直接推论。

Endpoint 用固定端点 `A=10⁸,S=10000,L=19`、`B=14.4×10⁹,S=120000,L=24`，log 上界分别由 `rA≤2²⁷`、`rB≤2³⁴` 和固定 Mathlib 的严格 log2 界导出。`log2≥2/3` 后，归一上界是 `L/(4095S)+3L²/(4A)`；精确有理比较分别≤1/300000、≤1/10⁷。没有把估计的十进制 log、sqrt 或有限测试当证明。

## Round2 的三个剩余供应

T0=`122568684`，B=`14400000000`，C=`14403516484=ceil(rB)`。有限 ψ 输入量化全部 Real t∈[T0,C]，不是只给 Nat 网格、只截止 B 或原包作者标量输出。桥使用两个真实端点 x、rx；x<B 确保 rx≤C。尾用实际 ψ 增量预算及无参数 TailLP。最后 Nat Gap 原文仍是 `∀y≥10⁷, ∃p, Prime p ∧ y<p ∧ 4095*(p−y)≤y`，有严格 y<p 才把 Real 差转换为 Nat 截断减法。

I0 `[10⁷,T0)` 在旧同源资料中已接受，但当前 Round2 候选仍保留 I0 输入；这不表示本轮重做或新增该段。真正 ψ预算、有限 ψ桥/直接中段Gap、无限 Gap 均不能由这些条件消费者或 LP 单独推出。

## 可追溯修正与旧闭包

旧 Width 首次实际失败是 `one_div` 先归一使 `pow_rpow_inv_natCast` 无法匹配。修订先 rw 消 Nat 幂后归一，声明不变，旧原件不改。Master 的两处加法顺序、Monotonic 的 log域/rpow表达展开由实际诊断修正；失败输出中的 sorryAx 是编译错误占位，不被接受。Endpoint 同类加法顺序为预防修订，原版未运行，不登记成真实失败。

本轮同源依赖只复用已签 Decomposition、Theta/FiniteSums、修订 Width 的小原生包；无旧345源链或923MB父包恢复。Round2 旧依赖按 `OLD-THETA-DEFS-REUSE-BINDING.json` 仅选择 GapDefinitions 与 ThetaInterval 两源码、十对象部分，保留 `/root/semantic_verify_sol` 旧具名验收。旧 GapDefinitions 是纯 Prop 定义，只有 propext；原115成员没有该定义自己的 normal-checker receipt，不能补写一个。θ提取的旧 normal replay 退出0。新 Round2 literal 与正常重放负责核对当前消费。

## 前沿判断

LP 通界、Monotonic、Endpoint 与 Round2 已有本轮具名签件，实际消除了 LP 供应缺口，打开实际 ψ局部增量→θ→短间隔素数→Gap 的明确路线。它们本身不提供 ψ分布定理、有限RH/零点前缀、有限中段证书或任意原题新指标。当前完整原题集 `{1,2,11,29}∪[35,30000]`、已验 finite Gap 和有限高度保留；本轮无条件完整指标增量仍为0。i,n,j,y 的剩余无界区域、R7与低23未闭合。已实现的是既有方法的形式化链，不据此声称原创研究成果。

09:20:18 Root 明确最后 Thin FiniteBridge 不派发、不挪动原门；大 OriginalLegacy 也未获本轮执行。两对 raw literal 仅完成独立源码准备，均没有编译、AX、normal replay 或技术接受。Thin 源展示可换用 Nat finiteGap[T0,B) 的路线，不需要有限 Real ψ 或 C 跨窗；仍保留预算、中段和 I0 输入。大消费者候选才调用已验 F0、消去 I0 并给原题完整量词；其旧大闭包没有在本轮恢复。这些源审不能补成两条新路线已实际验收。
