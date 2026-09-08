# adopted frontier 补充核验：B686 短间隙、canonical 密度与 B699 消费者

核验日期：2026-09-08 UTC。仓库基线为
`08a8ac6872e8abfd4a2c480496da350a97ecdc13`；固定 mathlib 源码为
`0df444a360eaa60ab8c11dca51a86af692955474`（Lean 4.33.1）。本记录只读既有
history、paper acceptance、Lean 源码和已记录的一手公开来源；没有改 pins、题目
账本、正式模块或其他 run。

本次的本地检索词按三条引用链分别为 `h=0|h=1|h≤7|Sylvester|Mukhopadhyay|κ(`、
`canonical|density|1/4|1/8|matrix|jet|noncommon|accepted`，以及
`criterion|conditional|Lean|unbounded|paper|diagnostic|finite|complete|consumer`。
固定 mathlib 源码中没有命中目标的 Sylvester--Schur 或 Mukhopadhyay--Shorey
命题；命中的 `Schur` 是群论等同名内容，不能替换这里的数论输入。以下“未找到”
均只表示这个固定源码和已有公开来源范围内的有界结论，不作全网不存在断言。

## B686：当前采用的短间隙结论到底闭合到哪里

令

```text
P_k(t) = ∏_{i=1}^k (t+i),  d=m−n=k+h,  K=2k+h,  N=n+1.
```

当前 third-round adopted frontier 仍引用的精确必要条件是

```text
P_k(m)=4P_k(n), k≥2, n≥0, m≥n+k  ⟹  h≥8,
```

也就是 `m≥n+k+8`。来源是
`research/tasks/B686-Four/experiments/round3-final-report.md` 第 15--30 行和
第 543--575 行；当前入口在
`research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/frontier.md` 的
“紧邻和固定短间隙”行。这个结论是纸面证明接 Lean 有限余段的研究结果，尚不是
可提交的全局 Lean 定理。

### h=0 和 h=1

两项的纸面步骤是完整的，但各自使用尚未形式化的经典连续整数乘积定理。

| 间隙 | 纸面步骤与精确外部输入 | 已有 Lean 桥 | 未关闭义务 |
|---|---|---|---|
| `h=0` | `P_k(m)P_k(n)=(2P_k(n))^2`；`B686PrimeSupport.solution_prime_bound` 给外块任一素因子 `p≤d+k−1=2k−1`。若 `n≥2k`，长度 `K=2k`、起点 `N=n+1>K` 的完整区间按 Sylvester--Schur 含有 `p>K`，矛盾。余下 `n≤2k−1` 时每个因子比 `(n+k+i)/(n+i)>4/3`；`k≥5` 给 `(4/3)^k>4`，`k≤4` 由证书覆盖。 | `research/tasks/B686-Four/independent/PrimeSupport.lean`：`solution_prime_bound`；`research/tasks/B686-Four/lean/Round3SmallGapCertificates.lean`：160 组相邻严格变号和 `no_small_gap_k_le21`。 | Sylvester--Schur 的原始定理未在固定 mathlib 或本仓库 Lean 中证明。历史记录核对的精确版本是“若 `N>K`，长度 `K` 的连续积有素因子 `>K`”，见 2004 论文第 80 页引用；不能把 `PrimeSupport` 的上界误写成该定理。 |
| `h=1` | 中心 `c=n+k+1` 满足 `c∣(1−4(−1)^k)k!`，故中心素因子 `≤max(k,5)≤2k+1=K`；外块素因子 `≤2k=K−1`。若 `n≥2k+1`，对长度 `K=2k+1` 的完整区间再用同一 Sylvester--Schur 版本；余下 `n≤2k` 仍由每因子比 `>4/3` 及小 `k` 证书排除。 | 同上；`no_small_gap_k_le21` 对 `k≤21`、任意 `n` 的结论是真正的 Lean 命题，不只是一份 Python 表。 | 同一 Sylvester--Schur 形式化缺口；中心整除推导和小尾部不等于跨所有 `k` 的连续乘积定理。 |

小 `k` 桥的精确 Lean 结论是
`B686Round3SmallGap.no_small_gap_k_le21 (k h n)`，假设
`2≤k`, `k≤21`, `h≤7`，推出
`product k (n+k+h) ≠ 4*product k n`，对所有自然 `n` 成立。它使用
`sign_certificates` 的 160 组内核规约整数不等式、`cross_antitone` 和
`not_four_of_adjacent_signs`；没有 `native_decide` 或外部计算公理。它并不包含
“发布的定理把任意 h≤7 的 k 压到有限范围”这一外部命题。

### h=2,…,7

这里纸面链使用一篇精确的第一手论文来源：

> Mukhopadhyay--Shorey, *Square free part of products of consecutive integers*,
> Publ. Math. Debrecen 64 (2004), 79--99, Theorem 3，印刷第 88 页/PDF 第 10 页，
> https://publi.math.unideb.hu/paper/924/download/ 。

应用它的参数是删去 `h` 个因子后的连续积：总长 `K=2k+h`，起点 `N=n+1`，
`t=h`。其假设在本题中由 `K≥h+2`、保留因子正且互异、平方根 `2P_k(n)>0`
满足。原历史报告记录了三分支的精确常数：

| MS 分支 | 论文给出的量化结果 | 对本题的收缩 |
|---|---|---|
| `K<N≤K²` | `K≤κ(h)`，`h=2,…,7` 时 `κ=(8,9,11,15,16,24)` | `K≤24`，实际 `k≤8`；安全旧版还记有 `n≤575` |
| `N≤K` | `K≤κ'(h)`，`κ'=(11,25,28,30,46,50)` | 旧版给 `k≤21,n≤49` |
| `N>K²` | 论文只留三个指定平方例外 | 旧版用本题至少四个因子推出 `N≤243,K≤15,k≤6` |

当前主线的两个 Lean 桥进一步把适用分支压成中间分支：

* `research/tasks/B686-Four/independent/GapBounds.lean` 的
  `B686GapBounds.start_below_span_square` 从原等式直接证明
  `N<(k+d)^2=K^2`；
* `Round3SmallGapCertificates.start_exceeds_span` 对 `k≥5,d≥k` 证明
  `K<N`。`k≤4` 已由上面的全 `n` 证书覆盖。

所以纸面上只需 MS Theorem 3 的 `K<N<K²` 分支，给出 `k≤8`，再接
`no_small_gap_k_le21`（或其 `k≤8` 子范围）结束 `h=2,…,7`。报告中保留的
`k≤21,n≤575`、69120 个三元组精确计算是交叉证据；它们不是这里的无界证明。

对任意 h 的 `B686Round3GapDivisibility.gap_factor_divides` 也不能填这个缺口：
它只证明在原等式下，对 `1≤j≤h` 有

```text
(n+k+j : ℤ) ∣ P_k(h−j) − 4(−1)^k P_k(j−1)，
```

是必要同余，不证明所有缺项同余同时不可解。

因此这一 adopted frontier 的最小外部义务是：在固定 pin 下证明或引入可审计的
Sylvester--Schur 接口，以及 Mukhopadhyay--Shorey Theorem 3 的精确删项接口；两者
都必须保留 `N,K,t` 的端点、正性、互异性和异常分支。论文引用本身不能写成未解释
`axiom`。

## B686：canonical 支持密度 1/4、1/8 实际接受了什么

### 已接受的纸面高度命题

`paper-acceptance/acceptance-summary.md`、`centered-review.md` 和
`quarter-review.md` 接受的是以下两个纸面高度界，前提只有原方程及列明的长度
条件：

* `k=2r≥2`、`n+k≤m`、`P_k(m)=4P_k(n)` 时，
  `n<16·2^(4k)·k^(r+1)` 且
  `n+k<20·2^(4k)·k^(r+1)`；
* `k=4s≥4`、`m>n`、`P_k(m)=4P_k(n)` 时，
  `n<2^s·k^(s+1)` 且
  `n+k<2^(s+1)·k^(s+1)`。

这些是纸面证明已接受、尚未 Lean 化的全称不等式。验收明确没有接受
canonical owner 矩阵、完整 jet 生成、或“在正点不全为零”的接口；高度证明本身
不依赖这些对象，也没有由它们推出任意有限 `k` 的精确密度界。

### 密度推导的额外前提

密度推导使用的外部源码快照是

```text
https://github.com/williamjblair/lean-proofs/tree/
  aff1d30b3b1c6bd705810fa4d588b03940fb31df/
  ErdosProblems/Erdos686CanonicalOwnerMatrix.lean
```

本地快照为
`research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/independent/external/ErdosProblems-Erdos686CanonicalOwnerMatrix.lean`，
SHA256 `e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e`；
来源项目保留的许可为 MIT，许可文件
`.../reuse/LICENSE-Will-Blair.txt` 的 SHA256 是
`f23dc7d0e5caa81c07ecea470298c36cbfbb23699e87fbd5c17beeca3342e674`。
快照头部声明 `leanprover/lean4:v4.29.1 mathlib v4.29.1`，不是当前固定
Lean 4.33.1/mathlib `0df444…`，且没有被当前仓库导入或编译；许可证允许适配，
但不能把版本不兼容的外部源码当作本仓库 theorem。

该源码的精确主入口是
`Erdos686.Erdos686Variant.exists_canonicalOwnerSystem {k n d}`，前提为
`4≤k`、`k≤d`、`blockProduct k (n+d)=4*blockProduct k n`。它返回 distinguished
`t`、`CanonicalOwnerData`，以及以下数据：

* 全局 residual 整除 `(k−1)!`，上下 residual 的乘积都等于它；
* 每一行/列精确分解为 residual 与 owner cells，`4` 只出现在 distinguished 列；
* 每个 cell 整除 `d+i−j`，不同格的 cells 两两互素；
* `residual * ∏_{j,i} cell(j,i)=P_k(n)`。

若有 `s` 个非单位格，这些前提才给出

```text
(s+1)! ≤ P_k(n) ≤ (n+k)^k.
```

把它与已接受的纸面高度界结合后，报告中得到的只是渐近读法：

* 中心化全偶界给 `limsup s/k² ≤ 1/4`（沿偶数 `k`）；
* 割线季度界给 `limsup s/k² ≤ 1/8`（沿 `k≡0 mod 4`）；`k≡2 mod 4` 仍使用中心化界的 `1/4`。

这两个数字的逻辑状态是“外部 canonical matrix 性质 + 已接受的纸面高度界”的
条件后处理。它们不是 paper acceptance 已接受的前提，不是任意有限 `k` 的
`s≤k²/4` 或 `s≤k²/8`，也不排除所有偶数长度。后续仍必须：

1. 将该 MIT 源码移植到固定 v4.33.1/mathlib pin 并重新做内核/公理审计；
2. 将 matrix 输出接到本仓库题面和高度命题，保留 `k≥4,d≥k` 等端点；
3. 证明足够低高度的 proper-support/jet 生成族，并证明在正整数解点不全为零；
4. 才能把密度预算用于原题消费者。单个短向量、一般 Siegel 存在性或
   `∑H_i²` 的形式变化都没有完成第 3 项。

相关纸面材料当前哈希为：

```text
paper-acceptance/acceptance-summary.md       5291489e6a65c2bd16d52705e85405d066f96eeea17128b6052d645fac5dd7e0
paper-acceptance/centered-review.md          4c61d92a14a86a267a986267888785318d77edb8ff46b7caabd138f864b5f26e
paper-acceptance/quarter-review.md           48692bb1926ed0a782f259c2c39cdb65985f65de5f520932a6bc09efa9825804
next-route-a/centered-runge-bound.md         3d15012faaed1435cc3320574c4ed46a51d5815244e5d78e572655ed8998f060
next-route-a/quarter-runge-bound.md          6ece40936e86d7a9407ffee19e8f0d118cf74ba96d64447ab4cc80b6b014076c
```

## B699：双余因子判据之外是否有已采用但未 Lean 化的完整消费者

答案是：在当前 adopted frontier 中没有。唯一已经被采用为完整条件消费者的是
`Math/B699/CofactorCriterion.lean`，其最终定理
`B699.common_large_prime_of_coprime_cofactors` 的精确前提为：

```text
1≤i<j, j≤n/2,
a<i, b<i,
p,q 为素数且 i<p、i<q,
1≤e、1≤f,
n=u*p^e+a=v*q^f+b,
Nat.Coprime u v,
u*v*(a+b)<n.
```

结论是存在素数 `r`，`i≤r`，且
`r∣gcd (Nat.choose n i) (Nat.choose n j)`；证明先给出 `p` 或 `q` 同时整除两个
二项式系数。该 theorem 不要求 `p,q` 或 `a,b` 彼此不同，也不要求 `p^e,q^f`
是精确赋值；这些正是已采用接口的边界。

稳定源码 SHA256 为
`341180b428b6927e72bd7de10c0ca03b3f8d4eb4f778c1aa4a3aeea4f33b9d79`，可执行公理
审计在 `Tests/B699CofactorCriterion.lean`；历史冻结证明源 SHA256 为
`3ac8e44b155d96c113ba712fa4d94d57b9947ebd9e64d9a13a0fb3f09c77a138`。验收记录给出：
前两个整数核心只用 `propext, Quot.sound`，Kummer 桥和最后两个结果用
`propext, Classical.choice, Quot.sound`，没有 `sorry`、`admit`、`native_decide`
或项目公理。`Examples/CofactorCriterion.lean` 的 `n=86,i=8` 示例覆盖所有
`8<j≤43`，因此这是实际 Lean consumer，不是只写在 paper 的使用说明。

下列材料不应被误标为第二个“已采用但缺 Lean 的完整消费者”：

* `primary/route-notes.md` 的 rational-slope/CRT 推导仍标为 paper-only；`s,d,i`
  无界，且 `p=i` 边界和所需的统一大素因子定理没有闭合；
* `primary/precedent-check.md` 对 Casacuberta 2019 Theorem 2.5/Corollary 2.6、
  Shareshian--Woodroofe 相关 row-cover 文献及 Schur 奇数积路线只完成来源线索和
  部分比对，没有声称精确覆盖当前双余因子命题，也没有新 theorem 被采用；
* `explorer/source-pointers.md` 的原题、论坛、有限 census 和代码链接明确标为
  discovered source claims / NOT accepted local coverage；有限搜索和诊断只验证了
  测试族，未给无界归约；
* `explorer/constraints.md` 中的 `n=101273250` 等 concrete diagnostic consumer
  是纸面/有限审计例，不能替代 `Examples/CofactorCriterion.lean` 的已编译消费。

所以 B699 当前真正未关闭的是判据假设的覆盖问题：没有证明每个合法
`(n,i,j)` 都拥有这两个终端素数幂和小互素余因子，也没有排除没有该结构的无界补集。
这不是“尚有一个已采用论文消费者等待 Lean 翻译”的缺口；若要扩展 adopted frontier，
下一项必须先给出新的完整数学消费者或一个覆盖补集的统一结构定理，然后再单独做
Lean 化和版本审计。

## 交接判定

| 项目 | 当前可交给条件消费者的接口 | 实际阻塞 |
|---|---|---|
| B686 `h=0,1` | `solution_prime_bound` + 小 `k` 的 `no_small_gap_k_le21` | Sylvester--Schur 连续积大素因子定理未形式化 |
| B686 `h=2,…,7` | `start_below_span_square`、`start_exceeds_span`、`no_small_gap_k_le21` | Mukhopadhyay--Shorey Theorem 3 未形式化；有限 69120 搜索不计全局证明 |
| B686 密度 `1/4,1/8` | 纸面 Runge 高度界 + 外部 matrix 输出（条件接口） | matrix 版本/ pin 适配、proper-support jet 非公共零和高度仍未闭合 |
| B699 | `common_large_prime_of_coprime_cofactors` 及 `Examples/CofactorCriterion.lean` | 双余因子假设未覆盖全合法输入；其余纸面路线未采用 |

这份补充不把任何论文、有限搜索或外部 Lean 快照直接升级成当前固定环境下的
接受定理。
