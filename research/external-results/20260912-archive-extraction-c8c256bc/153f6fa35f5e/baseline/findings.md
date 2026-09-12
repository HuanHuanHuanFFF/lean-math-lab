# lean-math-lab 基线证据审计

审计是只读的，目标仓库为 `/workspace/scratch/75a17f226d3b/lean-math-lab`。未在目标仓库运行 build/test，未编辑文件，未做 Git 写操作；只读取规则、任务入口、报告、验收记录和源码，并对选定源码做 SHA-256。`git rev-parse HEAD` 为 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`，与指定 baseline 一致。工作树没有发现 tracked 改动，但有大量 `??`；其中三个任务的 `runs/20260908-formalization-92c221/` 均是未跟踪活动快照，不能按已接受结果计入基线。

“Lean 已闭合”以下仅指某个精确声明的源码、其验收/guard 记录和（若有）消费者闭合；不表示对应 Erdős 原题已闭合。三份任务入口都明确写着“当前各批均没有完整解答”：`research/tasks/B677-Lcm/README.md`、`research/tasks/B699-Binomial/README.md`、`research/tasks/B686-Four/README.md`。

## 任务级结论

| 任务 | 基线中实际 Lean 已闭合的范围 | 纸面/计算范围 | 完整目标的明确缺口 |
|---|---|---|---|
| B677 | 区间 LCM 结构引理 | `d=m-n≤8k` 或 `n≤369k` 的排除（纸面 + Dusart 外部输入 + 精确 Python）；`m<89693` 的 6,368,203 个窗口无碰撞 | 尚无编译定理把纸面两分支、有限证书和 Dusart 接成完整消费者；剩余 `n>369k,d>8k,m≥89693` 无界 |
| B699 | 双素数幂余因子**充分条件**及 Kummer 桥 | 有限结构搜索无原题反例；非空示例 | 没有证明每个合法 `(n,i,j)` 都有该余因子结构；补集无界 |
| B686 | LCM 距离界；反射和的素数幂子族、固定余因子界、带条件两位置界、采样误差下界 | 两倍素数幂、MRSTT 高度、Runge 偶数界等分别是纸面/外部输入；短间隙也仍缺外部定理形式化 | 没有全 `k,n,m` 的无解证明，也没有合法见证；`k,d` 无界 |

## B677：已接受边界

题面是 `M(n,k)=lcm(n+1,…,n+k)`，`0<k`、`n+k≤m` 时要求两段 LCM 不相等。正式模块 [Math/B677/IntervalLcm.lean] 的 SHA-256 是 `1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44`；已闭合声明为：

- `B677.interval_lcm_ne_zero`；
- `B677.prime_pow_occurs_in_lcm`；
- `B677.equal_interval_lcm_dvd_gap`；
- `B677.equal_interval_lcm_dvd_prefix`；
- `B677.interval_lcm_eq_range`；
- `B677.interval_lcm_ne_of_later_prime`。

`Tests/B677IntervalLcm.lean` SHA-256 为 `cfad6066b5306b165f13c425623083e4b9859f1c3ac3470426f665fc29073b51`，其 guard 的传递公理是标准 `[propext, Classical.choice, Quot.sound]`；`Examples/IntervalLcm.lean` 是用法/具体值示例。这些都是支撑引理，不是 B677 全题定理。

最近完整记录 `runs/20260908-interval-lcm-f0a6539/history/problem-entry.md`、`review/mathematical-review.md`、`review/code-audit.md` 和 `explorer/delivery-audit.json` 一致地把结果标为“部分纸面/计算 + Lean 结构引理”。精确排除并集是 `d≤8k ∨ n≤369k`；独立有限扫描另给 `m<89693` 无碰撞（`bounded-start-result.json` 的 `total`/覆盖计数为 6,368,203 个 later-start/window 查询，`witness=null`）。这不是 Lean 穷尽证书；Dusart Proposition 5.4 也未形式化。

活动未跟踪批次 `runs/20260908-formalization-92c221/ledger.md` 把 F677-01 初等边界写成可复核成功，但仍把 F677-02（有限全覆盖的 Lean 证书）、F677-03（Dusart）和 F677-04（并集消费者）列为缺口。因此活动证据只能标为 in-progress/reproduction，不能提升基线。

## B699：已接受边界

正式模块 [Math/B699/CofactorCriterion.lean] SHA-256 `341180b428b6927e72bd7de10c0ca03b3f8d4eb4f778c1aa4a3aeea4f33b9d79`，测试 `Tests/B699CofactorCriterion.lean` SHA-256 `f282409e41d5b7ddadbb006f5aa7e717840fc50869014b7cdcd7ae61951f633b`，示例 `Examples/CofactorCriterion.lean` SHA-256 `de4dc0921be6c90756ebea76d38a55b1ff57f59cead06f703b1271dda3a7ec29`。`lean/accepted-result.json` 与 `lean/promotion.json` 记录历史源码 `CofactorCore.lean` 已提升到当前 Math 模块。

核心闭合声明包括 `B699.cofactor_core`、`B699.cofactor_remainder_obstruction`、`B699.prime_dvd_choose_of_mod_lt`、`B699.cofactor_prime_pair` 和 `B699.common_large_prime_of_coprime_cofactors`。最终结论只在下列条件下成立：`i<j≤n/2`；`a,b<i`；素数 `p,q` 满足 `i<p,i<q`；`1≤e,1≤f`；`n=u*p^e+a=v*q^f+b`；`Nat.Coprime u v`；`u*v*(a+b)<n`。结论是存在 `r` 为素数、`i≤r` 且 `r∣gcd(choose n i, choose n j)`。`a,b`、素数和指数不要求彼此不同，也不要求指数是精确赋值。

`runs/20260908-binomial-cofactors-f0a6539/history/problem-entry.md`、`review/mathematical-review.md`、`lean/HANDOFF.md` 均强调这是条件定理，不是“所有合法输入都有这种分解”。有限搜索（包括 `n=86,i=8` 的示例）只是非空性和查错证据。活动快照 `runs/20260908-formalization-92c221/verification/baseline/20260908T095843Z/evidence.json` 的 success 只是在未跟踪批次中重编当前三根/五个 guard；F699-01 补集仍开放，故不能当作新接受结果。

## B686：两个已接受批次及当前接受根

### LCM 距离批次 `20260908-lcm-distance-7cab35e`

`uniform/verification.json` 报告 `success:true`，且 `full_uniform_distance_bound_lean_verified:true`、`stronger_constant_64_lean_verified:true`；`support/acceptance/acceptance.json` 的结果是 `pass_with_scoped_gaps`。已接受的完整链包括：

- `uniform/InitialLcm.lean`、`uniform/FactorialTail.lean`、`main/MatchingLcm.lean`、`uniform/LcmDistance.lean`、`uniform/UniformDistance.lean`、`uniform/Consumer.lean`；并复用旧 `BigPrimeSupport.lean`、`SmallPrime.lean`、`TargetBridge.lean`、`SizeBounds.lean`、`Boundary.lean`。
- 精确消费者 `B686UniformRound9.uniform_distance_bound_sixty_four`：原题方程及 `k≥2,n+k≤m` 推出 `k^2<64*(m-n)`。
- `B686UniformRound9.uniform_distance_bound` / `uniform_distance_bound_products` 及 `Consumer.original_statement`：推出原要求的较弱 `k^2<250000*(m-n)`。

验收记录明确 `original_B686_nonexistence_proved:false`、`external_constant_18_locally_verified:false`、未用独立 kernel checker，且只独立重编消费者而不重新闭合全部依赖。故这条链是强必要距离界，不是无解证明。

### 反射和批次 `20260908-reflected-sum-9bad0b9`

最新完整记录 `report.md`、`frontier.md`、`environment/final-integration/delivery.json` 的最终四根是：

- `a/ReflectedPrimePower.lean`：高位置/赋值/反射接触接口；
- `main/SumPrimePowerExclusion.lean`：`B686Reflected.not_four_prime_power_reflected_sum`，排除所有 `S=m+n+k+1=p^a`（包括 `a=0`）；
- `main/SumCofactorBounds.lean`：`B686Reflected.original_sum_quotient_bounds`，对任意素数 `p` 定义 `B=S/p^{v_p(S)}`，给出 `k≤10B`、`S<200B^3`、`m<200B^3`；固定 B 只界住原题变量，不界住当 `p∤S` 时自由选择的辅助 p；
- `b/SumTwoPositionGap.lean`：`B686Round9.SumTwoPositionGap.reflected_factor_contact_bounds`，在显式 `A*Di*Dj=S`、`Di^2∣reflectedError_i`、`Dj^2∣reflectedError_j` 等接触/分组条件下给 `k≤60A^2`，偶数 A 时给 `k≤15A^2`。

另有 `main/OriginalDiscrepancy.lean` 的 `original_sampling_discrepancy_lower`：`k≥802` 的原题解强迫固定测试函数的采样误差下界；相反的 MRSTT 分析上界和渐近组装仍是外部/纸面。反射批次明确写着：两倍素数幂是纸面结论，完整原题仍开放。

## B686 近期外部路线：不能算“已接受”

用户特别关心的 generic even-tail coefficient supply 与 canonical owner system 均不在当前接受根内：

1. `runs/20260908-lcm-distance-7cab35e/independent/external/Erdos686EvenTailSupply.lean`（SHA-256 `7784331341c8c8eff14a2c27d7a344e8a130ce6c4f569178bd42a74c1aa54da5`）确实定义了 `universalEvenTailCertificateSupply` 和 `no_even_tail_solution_universal`，但文件头固定为上游 Lean/mathlib v4.29.1，并导入仓库没有纳入正式验收根的 `ErdosProblems.Erdos686EvenTailCoefficientCertificate`。同目录 `external/README.md` 明确称其为“待审计材料，不能替代本仓源码与命题验收”；`external-decision-review.md` 明确“本分支未编译外部 Lean 依赖”。所以它是外部候选/未接受模块。
2. `ErdosProblems-Erdos686CanonicalOwnerMatrix.lean`（SHA-256 `e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e`）来自外部 commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`，头注同样是 v4.29.1。活动快照中的 `lean/canonical/vendor/...` 仍为 `??`；`notes/canonical/matrix-declaration-closure.md` 只记录小的 `CanonicalOwnerDensity.SystemInput` 接口编译成功，provider 和 adapter 未通过固定 v4.33.1/mathlib pin 的完整闭包。`adoption-followup.md` 也明确 paper acceptance 没有接受 matrix、完整 jet、proper-support 或正整数解点非公共零条件。
3. 纸面 `centered-runge-bound.md`、`quarter-runge-bound.md` 的偶数高度界可以作为 paper evidence；它们与外部 matrix 合并后的 `limsup 1/4,1/8` 只是条件后处理，不是已接受的有限 k 精确定理或 B686 全题结论。

## 活动 `20260908-formalization-92c221` 快照判定

必须把该目录当作“进行中 snapshot”，即便其中 JSON 记录 success。它的 README/ledger 自己也声明基线仍是本 HEAD、全题仍未解决；整个目录目前是未跟踪写集。

- B677 活动账本：F677-00/F677-01 可视为复用/初等边界尝试；F677-02 有限 Lean 证书、F677-03 Dusart 桥和 F677-04 并集消费者仍缺。
- B699 活动账本只有复现条件判据；F699-01 补集仍是开放数学范围。
- B686 活动账本把 F686-02 至 F686-08 的若干尝试写成“complete”，但不能升级接受。可见最新失败证据包括：
  - `verification/centered/20260908T101546570584Z/verification.json` 为 `success:false`，`lean/quarter/IntegerPairs.lean` exit 1；对应 log 有未解 PowerSeries 系数目标、`sq_nonneg` 类型不匹配和 `linarith/omega` 失败。
  - `verification/quarter/20260908T104800496406Z/verification.json` 为 `success:false`，`lean/quarter/SlitBranch.lean` exit 1，含 `DifferentiableAt.comp` 类型错误。
  - 更晚的 `verification/quarter/20260908T104924429587Z/verification.json` 仍为 `success:false`；`HalfPlaneRoots.lean` exit 1，含未解的有限乘积符号恒等式、未知标识符 `differentiableAt_const.mul` 和多余 tactic。
  - 期间某些 centered/quarter 子集曾出现 success，但随后加入的依赖失败，不能视作整批验收。

## 基线不一致/读法提醒

- B677 `explorer/route-record.md` 第 33 行写成“`L(14,6)=L(16,6)=1627920` 而 `L(15,6)=232560`”。这与当前 `Math/B677/IntervalLcm.lean`、`Tests/B677IntervalLcm.lean` 和示例冲突；源码/测试的正确值是 `L(13,6)=L(15,6)=1627920`、`L(14,6)=232560`。该行应视为路线记录中的下标笔误，不能当反例或数学证据。
- B686 两个迁移批的历史验收 JSON/报告仍使用旧 `research/tasks/B686-Four/round9/...` 路径；当前树对应 `runs/20260908-lcm-distance-7cab35e/...` 和 `runs/20260908-reflected-sum-9bad0b9/...`。各 `migration/README.md`/`manifest.json` 说明旧字节和哈希是历史来源、迁移文件可能只改 import/navigation。引用证据时需同时给迁移映射，不能把旧路径误报成当前源码路径。
- `reflected-sum` 的 `environment/runtime-recovery.md` 保留了较早状态（例如高次素数幂仍未由当时两根形式化）；应以最终 `environment/final-integration/delivery.json` 四根和 `report.md` 为最新接受状态，历史恢复文档不能覆盖它。

## 基线裁决

截至指定 HEAD，可安全交给后续工作的结论是：三题均未全解；B677 只有结构 Lean + 纸面/计算有限化，B699 只有双余因子条件判据，B686 只有强距离界和反射/余因子等局部或条件 Lean 根。任何 generic even-tail、canonical owner matrix、完整两倍素数幂/短间隙外部定理、MRSTT 高度链，均应标为 paper/external/in-progress，不能写成“已接受 Lean 完成”。
