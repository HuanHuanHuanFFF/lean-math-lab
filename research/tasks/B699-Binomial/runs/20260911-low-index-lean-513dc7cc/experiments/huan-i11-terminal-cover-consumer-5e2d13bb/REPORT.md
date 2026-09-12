# 固定 i11 终端见证覆盖消费者候选

已写出单项见证、检查列表/区间覆盖、候选区间并集消费者及两个闭合例子。所有 Bool 只检查有限数据；`Common` 和对所有合法 j 的结论由已验 soundness 引理推出。**新增源码没有运行 Lean**，因此只交付完整候选，不增加原题验收。

独占本目录，起点2026-09-11 20:46:12 UTC，检查点21:06:12 UTC（非截止）。没有修改旧源、集成模块、队列或索引，没有 Git、新素性检查或 choose 计算。

## 精确对象和量词

命名空间 `B699LowIndex.I11TerminalCover`。固定 `i=11,r=3,s=7`。见证类型只有：

- `Witness.good (segment : GoodSegment)`：直接复用实际 `goodSegmentBounds` 与 `goodSegmentCheck 11 3 7`。允许旧数据类型中的 topPrime 与 largeDivisor 两支。
- `Witness.special330`：无参数、无证明字段。bounds 永远是 `(330,330)`，有限 check 是 true；其 soundness 内部调用已验 `B699LowIndex.I11Terminal330.common_330`。

特殊见证不是“任意 n 的特殊行”接口，也不能自行扩成一个较大区间。`witnessCheck_sound` 的假设是 check=true、`intervalMem n (witnessBounds w)`、`11<j`、`j<=n/2`，结论为实际 `Common n 11 j`。special 分支先由两个闭区间界推出 n=330，再交给全154个合法j的实际 theorem。

`Common n 11 j` 的原始定义是

`∃ p:Nat, p.Prime ∧ 11<=p ∧ p∣gcd(n.choose 11,n.choose j)`。

门槛包含 p=11，未改成严格 p>11。所有 n,j 都是自然数；j 的下界严格11<j，上界包含 j=n/2。普通 topPrime 输入实际要求 p≤lower、upper<p+11；largeDivisor 实际检查 singleton、D>0、与10!互素、11!D整除降阶乘及原三窗口大小式。没有把“某 choose 有大素因子”替代对所有合法 j 的共同素因子结论。

## 三层消费者

Witness.lean 提供数据类型、bounds/check 和单项 soundness。它直接采用已验旧 LargeDivisorWitness 与 Special330，不重新推导或修改这些结论。

Cover.lean 定义：

- `witnessesCheck witnesses = witnesses.all witnessCheck`；
- `witnessIntervals witnesses = witnesses.map witnessBounds`；
- `witnessCoverCheck lo hi witnesses` 为列表检查与旧 `coverCheck lo hi` 的合取；
- `candidateIntervalsCheck candidate_intervals witnesses` 为列表检查与逐个候选闭区间的 coverCheck 合取。

这些 Bool 中没有 `Common`、对 j 的全称，或某个目标 theorem 的证明值。数据的排序错误、缺口等只能由真实 coverCheck 返回false或未得到true证明，不能由一个假定的 n 上界替代。

`checked_witnesses_cover` 从 map 成员返回实际 Witness，取出其 finite check，再调用单项 soundness。`common_of_cover_checks` 使用旧 `coverCheck_sound` 从任意 lo≤n≤hi 找到某个见证区间，推出对任意11<j≤n/2的 Common。`witnessCoverCheck_sound` 是这个组合的单 Bool 接口。

并集层的精确主接口是：

```lean
theorem candidateIntervalsCheck_sound
    {candidate_intervals : List NatInterval} {witnesses : List Witness} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hmember : candidateMem n candidate_intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j
```

其中 `candidateMem n candidate_intervals` 明确定义为 `∃ I∈candidate_intervals, intervalMem n I`。另有 `candidateIntervalsCheck_prime` 显式返回上述素数存在量词，供最终原题入口审计。所有区间均含上下端点；空候选区间即使其 coverCheck 为true也无成员，不会生成对额外 n 的结论。

**hmember 是还需要真实 CRT 完整性证明的连接点。** 本包没有从CRT极值、枚举计数、上界或执行过的结果列表推断它。

## 最小闭合例子

Examples.lean 的普通例子使用原 `TerminalWitnessPilot.top_24_33_23` 与 `top_24_33_23_check`，不重新运行 p=23 的素性判断。只有区间边界24、33的 coverCheck 作小型 decide，得到所有24≤n≤33、11<j≤n/2的 Common。

特殊例子只有 `[Witness.special330]` 与闭区间[330,330]。小型 coverCheck 加上固定特殊 check 经过同一消费者得到全部合法 j 的结论。没有以逐 j 的 Bool 全称判断充当检查器。

另有两段并集 `[24,33] ∪ {330}` 的闭合示例。它只验证这个并集，未把34..329的空档一同声明覆盖。

## 实际结构检查与已验来源

独立 check.py 没有计算任何素数或二项式。约0.029秒完成：

- 两个最小区间和两段并集的 cover 形状检查；普通目标扩至34、特殊目标扩至329/331、并集误当[24,330]凸包均被拒绝。
- 392个微小区间/顺序/空区间组合，核对 true 的 coverCheck 形状确实给目标闭区间每个 n 的成员。这是旧算法的小型交叉检查，不替代其 Lean soundness。
- 量词范围计数：普通区间包含30个合法(n,j)对；330包含154个合法j（12..165）。这些数字仅说明声明覆盖范围，不是本次逐个计算 Common 的证据。
- 核查新 Bool 定义没有 Common 或 forall-j；special330 无参数且bounds固定。新源码无 sorry/admit/自造axiom/native_decide/ofReduceBool。
- 43个读取文件的实际字节在结束时重新核对一致。

采用本机真实证据：

- 旧 LargeDivisorWitness 和 IntervalCover：`verification/20260911T004440769454Z/evidence.json`，success/exit0，当前完整26源闭包匹配。IntervalCover SHA=`eb5b7d8b26101991cf31310739b0319bdc3d2d20f46656f63c48185ef97934b3`。
- Special330：`i11-terminal-330`，evidence `20260911T185904272011Z`，3个公开根及当前完整闭包匹配。
- WitnessPilot：`i11-terminal-witness-pilot`，evidence `20260911T191116561794Z`，12个公开根及当前完整闭包匹配。

Special330/WitnessPilot 收据的公开 axioms 均限于 std3。本任务读取这些历史执行证据，没有重跑 Lean。新三层仍需独立验收。

## 交付与剩余缺口

| 源 | typed/axiom审计根 | 实际字节 SHA256 |
|---|---:|---|
| Witness.lean | 4 | `c178b354cacabd99db9c0c046048289e43fea7246ac3b1b71142c17521d6c638` |
| Cover.lean | 11 | `68d2c83ce7939b82e9024d446f11a63c8d3acc6c9eb0336f9f1a3d57e9d9a500` |
| Examples.lean | 16 | `26115f9ff89fde73ed0381569c78da5324d2d832df8c71cb9a223a3c6da86d81` |

共有31个公开根，每层同名Audit.lean及总Audit.lean都含 `#check` 和 `#print axioms`。DECLARATIONS.json 给出准确行号。需要真正编译并审计传递依赖，不能由完整文本或静态检查升级为已验。

还缺完整 CRT 参数/全部t与窗口位置到 candidate_intervals 并集的会员覆盖、保留小 n 分支的连接、整份真实候选区间/见证数据和对应全部 finite check 证明。详见 MINIMAL_REMAINING.md。本包没有供给完整终端数据，也不证明初始高度或原题全覆盖，B仍0/19。
