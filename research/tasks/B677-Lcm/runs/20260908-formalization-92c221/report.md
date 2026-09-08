# B677 既有路线形式化交付报告

本批采用基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13` 中 `20260908-interval-lcm-f0a6539/explorer/complete-proof.md`、完整审查和验收。工作分支为 `GPT-work/formalization-20260908-closure`，没有自动合并 main。用户没有给截止时间；本批不继承历史预算下的停止工程决定。

记 $M(n,k)=\operatorname{lcm}(n+1,\ldots,n+k)$，参数均为自然数，原题范围为 $k>0,n+k\le m$。全部条目、纸面来源和接受状态见 [ledger.md](ledger.md)。

## 完整结论及其依赖

| 最终结论 | 本批实际接口与状态 |
|---|---|
| 初等相等候选高度 | 对全部 $k\ge2$ 的原范围，$M(n,k)=M(m,k)$ 推出 $m+1<4(n+k)$。从 $m-n\le8k$ 推出 $m<1466k$，从 $n\le369k$ 推出 $m<1480k$。完整消费者已验收 |
| 较强初等中间界 | 同时证明 $(n+1)k<16(m-n)^2$；短距离区域实际给 $m<1032k$，再推出原报告的 1466 常数。原有更强一阶乘 LCM 压缩已足够，不需要重复旧半阶乘/指数路线 |
| 全有限范围非碰撞 | 目标保持全部 $k>0,n+k\le m,m<89693\Rightarrow M(n,k)\ne M(m,k)$。完整生成证书和最终消费者已通过全部新目录编译、传递公理与完整性核对；此项完整闭合 |
| Dusart 下游桥 | 精确证明 $(\log89693)^3>1480$；给定完整 Dusart 素数区间命题，将两个区域内任意相等候选归约到 $m<89693$。新目录验证通过；外部命题仍是显式前提 |
| 两个无限区域的完整消费者 | `adopted_regions_noncollision_of_dusart` 保持全部 $k>0,n+k\le m$ 及并集 $m-n\le8k\lor n\le369k$。有限证书与解析桥已全部接通并通过实际验证；只保留精确 Dusart 前提，无条件目标仍开放 |

已验初等入口为 [bounds/Consumer.lean](lean/bounds/Consumer.lean)，成功闭包 [bounds evidence](verification/bounds/20260908T093438980811Z/evidence.json)。原有差值 LCM 整除、后段素数见证排除继续使用 `Math/B677/IntervalLcm.lean`；没有改公共 API 或依赖 pins。

## 有限证书为什么覆盖全部范围

[finite/Consumer.lean](lean/finite/Consumer.lean) 将所有正长度分为两个严格互补分支：

1. $1\le k\le71$：每个长度的所有起点 $0\le n<89693$ 都有实际模 LCM 行。通用 Lean 证明先给真实 LCM 的递推和模表示，再内核核验每行全部更新值及代表元条件。任意两个相等 LCM 必有相等签名，因而选出同一代表元；代表元条件强迫两起点距离小于 $k$，与原题分离条件矛盾。
2. $k\ge72$：1372 个素数构成内核核验链，证明每个 $m<89693$ 都存在 $m<p\le m+72$ 的素数。它真实落在后段，直接调用项目已有素数见证排除。

模数为 `18446744073709551557`。证明只用“相等原数给相等模值”及对每个起点实际检查的代表元约束，没有假设散列注入、随机碰撞概率或模数为素数。二叉覆盖的深度 17 给 $2^{17}\ge89693$，只在超出声明范围的填充点返回真。全部 71 行的递推、所有起点、查表约束和长度分支均进入内核证明，不用有限 Python 日志代替覆盖证书。

Python 生成器位于 [experiments/finite](experiments/finite)，只是生成不可信数据。所有被接受的数值判断由 `decide +kernel` 完成；没有 `native_decide`、`sorry` 或外部数值公理。完整源码约 209 MB，分块只改变编译资源需求，不改变声明范围。开发阶段的直接大整数、排序、见证覆盖与模签名方案及其性能失败保留在 [cost-routes.md](notes/finite/cost-routes.md) 和同目录诊断中。

原始数学复核见 [proof-chain-audit.md](notes/finite/proof-chain-audit.md)，Astra 独立只读审查见 [finite-independent-review.md](reviews/finite-independent-review.md)。独审接受的是源证逻辑、完整量词和覆盖设计，不提前接受当时尚未结束的内核运行。最终证书源码、所有导入、原始编译日志和逐块源码/依赖/对象 SHA-256 由 [verify_finite.py](verification/finite/verify_finite.py) 记录；任何一个块失败都不能把最终条目标为通过。

## 解析桥的完整范围与剩余依赖

[DusartBridge.lean](lean/analytic/DusartBridge.lean) 定义的未证明命题是：

$$
\forall x\in\mathbb R,\quad x\ge89693\Longrightarrow
\exists p\in\mathbb N,\quad p\text{ prime},\quad x<p\le x\left(1+\frac1{(\log x)^3}\right).
$$

它名为 `DusartPrimeInterval : Prop`，没有被声明为公理。常数校验使用有理数界 $e<87/32$ 和内核整数比较，推出 $\log89693>57/5$，从而其立方严格大于 1480。原题桥把该素数放入后段，与相等 LCM 矛盾；$k=1$ 单独由真实非碰撞定理处理。已验记录为 [analytic bridge evidence](verification/20260908T101901Z/evidence.json)。

[RegionConsumer.lean](lean/analytic/RegionConsumer.lean) 只需这个精确 Dusart 前提，就能把上述完整有限证书与两个区域的无限尾部连接起来。它不把有限排除当附加前提。F677-03、F677-04 的**无条件目标仍开放**，不能用这个真实条件消费者关闭。

固定 mathlib 及已核查公开形式化没有提供所需的 Dusart Proposition 5.4。已有 Bertrand 区间过宽，粗 Chebyshev 估计不能给此阈值与误差；核查的 PrimeGaps 结果是另一方向/另一命题，且存在 pins 或未证明依赖不兼容，不能借名替换。具体来源、搜索范围、精确接口及不能复用的证据见 [外部审计](../../../../shared/20260908-formalization-external-audit/external-audit.md) 和 [最终状态补记](../../../../shared/20260908-formalization-external-audit/final-status-addendum.md)。恢复条件是引入或建立这个精确短区间定理的完整可审计 Lean 证明；不需要重写本批的初等、有限或条件区域消费者。

## 验证状态与复现

本批固定 Lean `v4.33.1`、mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，9 个包 pins 不改。初等消费者通过 11 源完整新目录闭包与 12 项新增 guard；解析桥通过 12 源与 2 项 guard。全部传递公理仅为 `propext`、`Classical.choice`、`Quot.sound`。实际详细命令及最终有限/区域接合状态见 [verification/README.md](verification/README.md)。

最终有限证书运行标识为 `verification/finite/20260908T105847632428Z`，从空项目对象目录开始，只使用固定依赖包缓存。分块恢复只能复用同一次新分配、源码和依赖哈希完全一致的已验证块；不读取旧项目构建。原始尝试与失败日志不覆盖。磁盘压力只清理本仓库可重建的已结束缓存，保留活动证书、源文件和证据。

本批主要提升原纸面结果的形式可靠性。较强 1032 常数是中间依赖改进，最终采用区域没有扩大；没有发现并接受原结论的数学反例，也没有声称 B677 全题无解。全题仍包含长度、起点和距离均无界的未排除区域。

## 最终接受检查点

全有限范围已在 `verification/finite/20260908T105847632428Z` 完整成功：792 个项目源、一次实际 attempt、无失败；最终消费者的传递公理仅标准三项。`acceptance-check.json` 又核对全部当前源码、依赖、对象和原始日志，并记录4个直接外部对象的哈希。完整证据 SHA-256 为 `4adef04687e5b3ca2835fb72ea8db3a5dae13163a6f2946f35f523fad036b2f8`。详细原题验收见 [notes/finite/acceptance.md](notes/finite/acceptance.md)。

最终区域消费者在 [analytic/20260908T130158Z/evidence.json](verification/analytic/20260908T130158Z/evidence.json) 于 13:03:31 UTC 成功。其完整项目闭包804源：其中792源是本批刚完成的全新有限构建，经逐项源码/依赖/对象哈希核验后链接到隔离的新解析目录；其余12源在该目录从源码新编，最后实际执行RegionConsumer标准三公理guard。原有限证据保持原字节。这里没有声称804源在解析扩展中全部重编，也没有使用会话前旧项目产物。主线程另外核对804当前源码哈希、12条新编译原始日志和原证据SHA，全部一致。

13:03 UTC的证明验收检查点：F677-00为核验复用，F677-01/02完整闭合；F677-03的下游有限化及F677-04的完整条件消费者闭合，精确Dusart定理及两个无条件无限区域仍开放。因此本批不是“全部清单关闭”。

现有公开库的PowerShell入口因本机缺少pwsh无法直接运行；实际用新目录编译全部11个Math/Tests/Examples根并执行15项既有guard，证据及实际命令在 [fallback记录](../../../../shared/20260909-formalization-environment/verify-ps1-fallback-20260908T100420Z.md)。不声称PowerShell命令或外部独立内核检查器已经运行。

已有main的Lean CI和API文档CI均为成功，分别见 [Lean运行](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/34207188275) 与 [文档运行](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/34207188205)。这是基线main的状态，不是新分支证明验收；当前工作流只自动响应main推送和面向main的PR。本批没有等待或轮询文档部署。观察记录为 [baseline-ci-observation.json](verification/baseline-ci-observation.json)。
