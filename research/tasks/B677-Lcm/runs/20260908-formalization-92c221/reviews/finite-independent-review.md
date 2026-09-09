# B677 有限证书通用证明与覆盖的独立审查

日期：2026-09-08。审查者：`/root/b686_centered`，未参与该证书实现。
本次仅作源码数学与结构审查，唯一写入为本报告；没有修改证明、
解码或重新枚举约六百万个 LCM 模值，也没有重编长证书。

结论：指定范围内未发现实质性数学错误、哈希概率假设、未证明的注入性、
起点抽样替代全覆盖或量词收窄。通用证明与两个最终消费者在源证逻辑上
覆盖指定目标。最终 fresh 闭包仍未完成，不能据本报告宣称最终编译通过。

## 锁定目标与源码范围

审查的完整目标是

```lean
∀ n m k : ℕ, 0 < k → n + k ≤ m → m < 89693 →
  B677.intervalLcm n k ≠ B677.intervalLcm m k
```

`B677.intervalLcm n k` 定义为 `Finset.Ioc n (n+k)` 上的 LCM，即
`lcm(n+1,…,n+k)`；`interval_lcm_eq_range` 与该正端点约定一致。
目标包括 n=0、k=1、n+k=m；上界约束起点 m，不要求后一区间终点
m+k 小于 89693。

完整阅读本批 `lean/finite/` 的 `ModularRows.lean`、
`HashCertificate.lean`、`TreeRows.lean`、`PrimeChain.lean`、
`Consumer.lean`，以及通用依赖 `ExactRows.lean`、
`SortedCertificate.lean`、`CertifiedGcd.lean` 和公共模块
`Math/B677/IntervalLcm.lean`。检查 `PrimeCertificateKernel.lean`
的检查命题和消费者，没有人工验证其全部素数常量。
阅读 `certificate/Consumer.lean` 的组装证明，对全部71个 Pred/Check
模块与568个分块模块的目标声明进行结构核对；不把此检查当成重新运行
其数值证明。

## 精确 LCM 模递推

`interval_gcd_next` 证明

```text
gcd(M(n,k), n+k+1) = gcd(M(0,k), n+k+1).
```

当 k=0 时直接处理空 LCM。当 k>0 时，两边均用素数幂整除判据比较。
设 x=n+k+1；如果某素数幂同时整除 x 和区间 LCM，就在该非空正整数
区间中找到被它整除的项 a。映射 a↦x−a 把 `(n,n+k]` 映到 `[1,k]`，
反向亦然。源码为两个方向分别证明差项的区间成员资格；自然数减法
没有截断遗漏，且调用素数幂出现引理所需的非空与非零条件均已给出。

因此新增一项的 LCM 等于旧 LCM 乘以精确整数
`(n+k+1)/gcd(M(0,k),n+k+1)`。分母整除被除数由 gcd 性质提供。
取模只作用于这个整数乘法，使用旧 LCM 的模值与真正的长度依赖
`M(0,k)`；没有对模值作错误的整数除法，也没有假设模数是素数或
分母模可逆。

`ModRep N k width modulus c` 同时要求 `c.initialLcm=M(0,k)` 与
对每个 n<N 的 `modValues width c n=M(n,k)%modulus`。
初始检查准确建立长度1的 `M(n,1)=n+1` 和 `M(0,1)=1`；后继检查
同时验证初始 LCM 的 lcm 递推和每个起点的模递推。因此行数据不是
未经验证的前提，完整后继链把每行与原始 LCM 相连。
即使 n+k 超过数据的起点范围 N，递推仍按该实际整数项计算，没有
额外的终点截断。

## 哈希查表的确定性正确性

实际消费者使用 `HashCertificate.hash_rows_noncollision`。定义

```text
r(n) = representative lookup (modValues width row n).
```

每个 n<N 的检查只要求 `r(n)≤n<r(n)+k`。若原始 LCM 在 n,m 相等，
已证明的 `ModRep` 使两个模值相等；对同一个确定性函数查表，得到
r(n)=r(m)=r。于是 `r≤n`、`m<r+k` 与分离条件 `n+k≤m` 矛盾。
此推理甚至不需要 representative 真是某个同值项的下标。

不同模值可以发生查表碰撞，原始不同 LCM 也可以模同余：这些只可能
使要求的跨度检查更难通过，不会把一个分离的相等对隐藏起来。
证明完全没有“哈希大概率无碰撞”、哈希注入性或模值能恢复 LCM 的前提。
宽度64和具体模数是当前数据参数；整除、乘法、除法与取模均在 ℕ 中，
没有机器整数溢出的数学假设。

旧排序式通用检查也已阅读：相邻代表值严格递增推出不同 rank 的值不同，
同值项必须有相同 rank，之后同样用代表跨度排除分离。但最终生成的
哈希消费者不依赖排序数据的注入性或正确性。

## 平衡树与全部起点覆盖

`allTree d offset p` 是左右半段布尔与。`allTree_sound` 通过深度归纳
得到每个 `i<2^d` 的 `p(offset+i)=true`；右半段减去 `2^d` 时明确
证明新下标范围和偏移恒等式。这是全称覆盖引理。

生成证书使用 `allTree 17 0`；`2^17=131072≥89693`，因此覆盖所有
自然起点 0,…,89692。`hashPointCheck` 与初始/后继检查只在 n≥89693
时返回平凡 true；所有 n<89693 都受实际检查。由 `n+k≤m<89693`
可直接得到 n<89693，所以最终两个起点都落在已证范围中。

`allTree_join` 的类型要求相邻两段分别从 offset 和 `offset+2^depth`
开始；拼接会提高一层深度。`allTree_outside` 仅在 bound≤offset 时
消去范围外的整段，不能消去仍含合法起点的段。
IndexTree 的解码是总函数；畸形编码或额外别名不获信任，仍必须满足
上述逐点模值和跨度命题。

在 2026-09-08T12:35:17Z 的只读结构检查中，确认：

- `certificate/Consumer.lean` 恰好导入 Check01…Check71，定义 rep1…rep71，
  每条后继明确使用上一长度的 rep 和本行 step；每个声明的 N、长度、
  宽度、模数、row 编号一致。
- 最终分支树恰好使用71个不同长度的叶子，1,…,71 无漏项；每个叶子的
  rep 与 hash_checked 编号一致，长度等式由所在分支的 `omega` 证明。
- 全部71个 Pred 中，第一行使用 initialPointCheck，其余行使用参数
  k−1 的 directNextPointCheck，连接 row(k−1) 与 row(k)。全部 Check
  的最终目标均为 N=89693、depth=17 的对应同一行命题。
- 每行八段起点恰为 0、16384、32768、49152、65536、81920、98304、114688，
  每段目标为深度14；两类检查共核对1136个分块目标声明。它们按相邻
  拼接组装成深度17。这里检查的是证明目标和连接，不是重算证书值。

## 长度71与72的衔接

`certificate/Consumer.certified_finite_range` 明确给出全部 n,m 和
全部 `0<k≤71` 的非碰撞结果。它没有接收证书真值、ModRep 或哈希性质
作为外部参数：这些由前述具体的 checked 声明及 rep 链提供。

对于 k≥72，`primeChainCheck` 在每一步检查 q 为素数、previous<q、
q≤previous+72，终点检查 previous≥89693。通用归纳对任意
previous≤m<89693 找到第一个 q>m，给出 `m<q≤m+72`；起始 previous=0
覆盖全部自然数 m。该证明不要求 m 本身出现在列表中，列表也无需包含
区间内的所有素数。

`PrimeCertificateKernel` 的具体 checked 命题用 `decide +kernel` 证明
整个有限素数链检查，消费者 `prime_within_72` 无分析分布假设。
本审查核对的是此命题的形式与通用证明，不另做素数枚举。

最终 `finite/Consumer.interval_lcm_ne_below_89693` 分成 k≤71 与 k≥72：
后者有 `m<p≤m+72≤m+k`，所以素数 p 在后一区间而大于前一区间全部项。
公共 `interval_lcm_ne_of_later_prime` 用素数幂必须出现在某个区间项中
的性质排除相等。k=72 包含在第二支，71与72之间没有空隙，也未增加
上界条件 m+k<89693。

## 源码锚点与验收状态边界

以下11份实际阅读的通用/最终源码，其当前 SHA256 全部与正在运行的
`verification/finite/20260908T105847632428Z/evidence.json` 中
`attempts[0].source_sha256_before` 一致。下表中未写完整路径的文件
均位于本批 `lean/finite/`。

| 源码 | SHA256 |
|---|---|
| `Math/B677/IntervalLcm.lean` | `1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44` |
| `ModularRows.lean` | `23d17a8d35ce9d0dee45c7625842af18978db516eb936ef17df366a9809cd49b` |
| `HashCertificate.lean` | `63412cda37bd0d95c5172035a27c81686ffa9a27c156a52869e6d0addd173837` |
| `TreeRows.lean` | `823c3a73599593204b7bedd8e95047a5d3dca2cfaeeb8b2091569f51259cbf82` |
| `PrimeChain.lean` | `ed0f5dd06c08674c1915a8fa053565e141eda6683c33ed1ec41253354befc6b5` |
| `Consumer.lean` | `17a27dc5422bfa1e8b5f5d838cc7b960d3ec168db990fae53747e02626bfff9f` |
| `ExactRows.lean` | `3a8f49eec14e0fcb8c8367a6b91410e2c7cadf3e8c989abd9f29095bee7dc6c9` |
| `SortedCertificate.lean` | `5d4d8a724b0aa46688358ada85e99c6ed08872ccfdcc8c1699ded7fb58be7716` |
| `CertifiedGcd.lean` | `d21320b130f89ac725142b98496d6244d682f7cc7db0daf8795f5ba438791bf0` |
| `PrimeCertificateKernel.lean` | `57f68b083961a41e3bbfc01493969da50d277ea8bbae619e4c46722bbc8a042d` |
| `certificate/Consumer.lean` | `b375ce2bb1b694a3b875bc32afbfe75ddc30308026294154c5e684b4eaf155ca` |

12:35:17Z 的证据快照仍为 `success=false`，尚无 finished_utc，包含
641条编译记录，完整计划为792个项目源码。该计数不是最终验收结果。
当时源闭包 policy 记录 exit 0、792文件、无违规；本审查没有重跑它。
最终消费者源码包含标准三公理的 `#guard_msgs in #print axioms`，
但本报告不把尚未结束的最终编译和该最终 guard 视作已执行通过。

待实际完整 fresh 闭包、最终消费者、公理 guard 和最终源码哈希核验
完成后，负责人可另行记录形式验收。本报告只接受已审查的通用正确性、
目标量词和证书覆盖设计；不据此声称完整无界 B677 已解决。
