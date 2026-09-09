# B686/B677 接口审查

日期：2026-09-08（批次 `20260908-formalization-92c221`）。本文件是一次只读的例行接口审查：逐项对照当前 Lean 声明与已采用的来源声明，检查量词、假设、常数、产品或区间约定、实际导入者、fresh 编译证据和传递公理 guard。本次不做独立数学复核，也不重新证明来源中的数学论证。

审查范围只包含已成功完成的 B686 `TwicePrimePower`、`DistancePrimePower`、`TwoPositionSupport`、`distance/CentralConsumer`、`centered/Consumer`，以及 B677 `ElementaryBounds`、`bounds/Consumer`、`analytic/DusartBridge`。仍在施工的 Harmonic、quarter、canonical 和 finite 部分不在范围内，本文不对它们作完成性陈述。

所有 fresh 记录均使用 `leanprover/lean4:v4.33.1`、manifest SHA256 `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0` 和 clean 的 mathlib HEAD `0df444a360eaa60ab8c11dca51a86af692955474`。证据中的 `build.fresh=true`，Lean 对象在各自的新 `.lake/formalization-environment/<UTC>/olean` 下生成；没有把旧项目 `.lake/build` 对象当作验证结果。

## 共同约定

* B686 的 `B686Target.product k t` 是 `∏ i ∈ Finset.Icc 1 k, (t + i)`。基础原题域为 `k,n,m : ℕ`、`k ≥ 2`、`n+k ≤ m` 和 `product k m = 4 * product k n`。反射和距离记号分别是 `S = reflectedSum k n m = m+n+k+1` 与 `d = m-n`。
* B686 的 reflected smooth part 是 `reflectedSmoothPart k S`：只取 `S` 的 `k`-smooth prime factors，并使用完整的 `padicValNat` 指数。distance 模块把同一定义应用于 `d`，所以 `A` 的来源必须看声明是 `S` 还是 `d`。
* B677 的 `B677.intervalLcm n k` 是 `Finset.Ioc n (n+k)` 上的 `lcm id`，即精确区间 `(n,n+k]`。`interval_lcm_eq_range` 将它等价地写成 `range k` 上的 `n+i+1`；这与来源的端点约定一致。
* 当前 guard 都是传递的 `#print axioms` 检查，期望集合精确为 `[propext, Classical.choice, Quot.sound]`。fresh verifier 同时检查 guard 数量和输出文本；centered 另有一个空白 whitelist 的负向审计，实际以退出码 1 拒绝。

## B686

### `reflected/TwicePrimePower.lean`

来源是采用的 reflected-sum run 的 `main/sum-structure-theorems.md §4`，并由本批 `notes/reflected/progress.md` 与 ledger F686-02 记录。声明

```lean
theorem not_four_twice_prime_power_reflected_sum
    (k n m p a : ℕ)
    (hk : 2 ≤ k) (hsep : n+k ≤ m) (hp : p.Prime)
    (hS : reflectedSum k n m = 2*p^a) :
    product k m ≠ 4*product k n
```

量词包含所有自然指数 `a`（包括 `a=0`）和所有素数（包括 `p=2`）；没有把来源的 `H`、`S` 定义或产品端点改掉。当前 `lean/` 文本中没有发现另一个文件导入这个模块；它是本项的 source-facing endpoint，而不是被后续施工分支包装的隐藏假设。

fresh 证据为 `research/shared/20260909-formalization-environment/runs/20260908T093042Z/evidence.json`，SHA256 `5229aba7cacf302869e7b23f738090ea1b271bbf16bfd17575f99c193ed9f311`，`success=true`、`build.fresh=true`、编译闭包 6 个源文件。根源 SHA256 为 `623202cfafff54a2f03f08edefa266c14f1e19057ffdcc1ef86cfeea3d99364`。1 个 `#guard_msgs` 与 1 个 `#print axioms` 均通过，传递公理集合正是 `[propext, Classical.choice, Quot.sound]`。

### `reflected/DistancePrimePower.lean`

来源是 `main/all-prime-power-balance.md` 及其独立审计。文件先给出 `distanceContact n m i := 3*(n+i) - (m-n)`、高接触数据，然后给出两个 source-facing consumer：

```lean
theorem original_distance_prime_power_bound
    (k n m p : ℕ) (hp : p.Prime)
    (hk : 3 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n) :
    (p^padicValNat p (m-n))^2 < 12*k^2*(m-n)
```

```lean
theorem original_distance_quotient_bounds
    (k n m p : ℕ) (hp : p.Prime)
    (hk : 3 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n) :
    let B := (m-n)/p^padicValNat p (m-n)
    m-n < 12*B^2*k^2 ∧ m < 16*B^2*k^3
```

来源文字先以 `p ∣ d`、`a=v_p(d)≥1`、`B=d/p^a` 描述候选；Lean 的最终声明对任意素数 `p` 总化，并直接使用 `padicValNat p d`。若 `p ∤ d`，指数为零，因而这是对同一结论的总化接口，并没有缩小原题域。来源中的候选常数 `12`、`16` 和产品约定保持不变；模块注释明确包含 `p=2,3`。

实际导入者是当前 `distance/DistanceRoughSupport.lean`（它使用本模块的 `distance_high_contact_data`），其闭包继续进入 `distance/CentralPair.lean` 和 `distance/CentralConsumer.lean`；两个最终 bound theorem 之间的直接消费者是 quotient theorem 自身。fresh 证据为 `research/shared/20260909-formalization-environment/runs/20260908T093810Z/evidence.json`，SHA256 `4dcacd5d9b7a08e200ad7fbb73f67423809c34f6c98d9af9c9b1220b2ce91c05`，`success=true`、`build.fresh=true`、闭包 5 个源文件。根源 SHA256 为 `cbbabb6f3cc627245018148c42955617955b8dbeeb664c5bd94235d1f92bc86c`。3 个 guard（高接触数据、prime-power bound、quotient bound）都通过，且每一个的传递公理集合均为 `[propext, Classical.choice, Quot.sound]`。

### `reflected/TwoPositionSupport.lean`

来源是 `b/sum-two-position-norm-audit.md`。当前模块自己构造分组、接触和正性所需的中间对象；最终声明是

```lean
theorem original_two_position_support_bounds
    (k n m i j : ℕ)
    (hk : 5 ≤ k) (hsep : n+k ≤ m)
    (heq : product k m = 4*product k n)
    (hi : i ∈ Icc 1 k) (hj : j ∈ Icc 1 k)
    (hsupport : reflectedSupportAtMostTwo k n m i j) :
    let A := reflectedSmoothPart k (reflectedSum k n m)
    k ≤ 60*A^2 ∧ (Even A → k ≤ 15*A^2)
```

`reflectedSupportAtMostTwo` 的精确量词为：任意素数 `p`，若 `p ∣ S` 且 `k < p`，则 `p ∣ n+i ∨ p ∣ n+j`。`i,j` 可以相等，故支持大小为 0 或 1 也在接口内。这里的 `A` 是反射和 `S` 的 `k`-smooth part，不是距离 `d` 的 smooth part；这一点与来源审计的区分一致。目标常数 `60` 和偶数 `A` 时的 `15` 未改变，也没有把旧证书所需的 grouping/contact 前提泄漏到最终消费者。

实际导入关系是 `distance/DistanceRoughSupport.lean` 使用本模块的 `reflectedSmoothPart`、素因子分解和 prime-power product helper，`distance/CentralPair.lean` 也导入该模块；当前没有发现另一个 Lean 文件直接调用最终 theorem 名称，因此该 theorem 本身是 support-to-certificate endpoint，导入者消费的是其构造出来的接口闭包。

fresh 证据为 `research/shared/20260909-formalization-environment/runs/20260908T094325Z/evidence.json`，SHA256 `5b2b8cfd71d53bc7f696852ecbdb4297cc31b7406f6d63602f17f0f891f8784a`，`success=true`、`build.fresh=true`、闭包 6 个源文件。根源 SHA256 为 `88ccd2ef1ba636e5b919e52b3f00049fee6f43b9697cc71c7442966665a3a6a8`。最终 theorem 的 1 个 guard 通过，传递公理集合为 `[propext, Classical.choice, Quot.sound]`。

### `distance/CentralConsumer.lean`

来源是 `b/cofactor-structure-and-pell.md §6.1` 及本批 `notes/distance/central-derivation.md`。对于 `r,n,m : ℕ`，声明为

```lean
theorem original_central_distance_support_bounds
    (r n m : ℕ) (hr : 2 ≤ r)
    (hsep : n+2*r ≤ m)
    (heq : product (2*r) m = 4*product (2*r) n)
    (hsupport : distanceSupportAtMostTwo (2*r) n m r (r+1)) :
    let A := distanceSmoothPart (2*r) (m-n)
    m-n < 8*A^3*(2*r)^3 ∧ 3*m < 32*A^3*(2*r)^4
```

支持条件精确地只涉及所有 `p > 2*r` 且 `p ∣ d` 的素数：每个必须命中 `r` 或 `r+1`。`A` 是 `d` 的 `2*r`-smooth part。来源以 `m < (32/3) A^3 k^4` 写第二个目标；Lean 的 `3*m < 32*A^3*(2*r)^4` 是同一整数不等式的直接交叉相乘形式，没有改变常数或量词，也没有声称所有 `k` 的结论。

它是 `CentralPair` 构造后的当前 source-facing consumer，`CentralConsumer` 自身是该分支的终点。fresh 证据为 `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/20260908T100510Z/evidence.json`，SHA256 `bbc1bfaa4ac85edd4e931e9f17b884f851087667e34ead0d2e33f985ad249c8a`，`success=true`、`build.fresh=true`、闭包 10 个源文件。根源 SHA256 为 `0203d3fb25335b5a673a970ef59796c58d53ae9cb1cf6eec078a98450335b010`。最终 theorem 的 1 个 guard 通过，传递公理集合为 `[propext, Classical.choice, Quot.sound]`。

### `distance/PairBounds.lean` 与 `distance/SymmetricConsumer.lean`

这是主线程随后验收的 B686 一般/对称两位置高度消费者；本节只审查这两个已成功 fresh 的最终接口，不把仍在施工或排除范围内的 Harmonic、quarter、canonical、finite 分支宣称为完成。

来源是 `b/cofactor-structure-and-pell.md §§5–6`，本批 `notes/distance/harmonic-checkpoint.md` 和 ledger F686-08。`PairBounds` 的一般声明为

```lean
theorem original_general_two_position_bounds
    (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hij : i<j)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    let A := distanceSmoothPart k (m-n)
    let qi := (harmonicRatio k i).den
    let qj := (harmonicRatio k j).den
    m-n<324*qi*qj*A^5*k^4 ∧ m<432*qi*qj*A^5*k^5
```

这里 `A` 是距离 `d=m-n` 的 `k`-smooth part，`qi,qj` 是实际 `harmonicRatio` 的最简分母；没有把纸面分母或分组证书留作最终调用者输入。`SymmetricConsumer` 在相同原始方程和 `k≥40` 下增加 `i<j`、`i+j=k+1` 以及同一粗支持条件，并令 `q=(harmonicRatio k i).den`、`h=j-i`，给出完整的两组目标：

```lean
(m-n < 16*q*A^3*k^2 ∧ 3*m < 64*q*A^3*k^3) ∧
  (m-n < 16*A^3*k^(h+2) ∧ 3*m < 64*A^3*k^(h+3))
```

它还给出 `original_general_center_band_height`：在一般 `i<j`（不要求反射对称）时，两个分母分别满足 `q_i≤k^positionOffset k i`、`q_j≤k^positionOffset k j`，并返回
`m < 432*A^5*k^(positionOffset k i + positionOffset k j + 5)`。因此来源中的 `324/432` 一般界、对称的 `16/64` 界和固定间距指数均保持，产品仍为 B686 的 Icc 乘积，原始分离条件和倍率 4 也都保留。

实际消费者是 `SymmetricConsumer.lean`：它导入 `PairBounds` 和 `HarmonicDenominator`，直接调用 `original_pair_auxiliary_bounds` 及一般两位置高度输出；该文件的两个 theorem 是当前一般/对称路线的 source-facing endpoints。最新 fresh 证据为 `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/20260908T103810Z/evidence.json`，SHA256 `9dc7c5605537440d3f90e2197c5008a9a5a12445c0f8f0f80332acb7b6d53755`，`success=true`、`build.fresh=true`、闭包 16 个源文件。`SymmetricConsumer.lean` 根源 SHA256 为 `c0bfd12e1da3da91adb430d8b2c27848922e3376020701e9e9c0f8a673c34514`，其 `PairBounds.lean` 依赖源 SHA256 为 `87a6a1e992c422d012ba5b34c0182827e34f0f13bf20263ccd6a056072c09fc8`。2 个 guard 均通过，传递公理集合均为 `[propext, Classical.choice, Quot.sound]`。本文没有对 `HarmonicDenominator` 内部证明或来源数学论证另做独立复核。

### `centered/Consumer.lean`

来源是 `20260908-lcm-distance-7cab35e/next-route-a/centered-runge-bound.md` 与 `paper-acceptance/centered-review.md`。`n_lt_explicit_bound` 和 `n_add_k_lt_explicit_bound` 的接口为 `k,n,m : ℕ`、`2 ≤ k`、`Even k`、`n+k ≤ m` 和原始 B686 产品等式，目标分别是

```lean
n < 16 * 2^(4*k) * k^(k/2+1)
n+k < 20 * 2^(4*k) * k^(k/2+1)
```

`original_product_consumers` 直接重新写出
`(∏ i ∈ Icc 1 k, (m+i)) = 4 * ∏ i ∈ Icc 1 k, (n+i)`，
并返回上述两个目标的合取。因此来源的 `k=2r≥2` 与 Lean 的 `Even k ∧ 2≤k` 对齐，指数 `2^(4k)`、`k^(k/2+1)`、常数 16/20 和 Icc 产品约定均对齐；最终消费者没有把 polynomial construction 或误差估计变成额外假设。

实际消费者是 `centered/AxiomAudit.lean`，它导入 `Consumer` 并审计 10 个声明；`original_product_consumers` 是原题接口终点。证据位于 `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/centered/20260908T095933132002Z/verification.json`，SHA256 `8c46caa8b3a4347ca20e49f1b4cda17cf9d3fe266d85b4374958215ef350c34f`。该 custom fresh build 成功；`AxiomAudit.log` 中 10 个声明的传递公理均为 `[propext, Classical.choice, Quot.sound]`。`NegativeAudit.lean` 使用空 whitelist 时退出码为 1，且 `expected_rejection_observed=true`，说明 guard 检查会在不匹配时失败。Consumer 根源 SHA256 为 `b4098d166c44045e7d0883cab6facf826366a02dc4867a1a3b80e764fb1c79f0`。

## B677

### `bounds/ElementaryBounds.lean`

来源是 B677 旧 run 的 `explorer/complete-proof.md`。当前文件保留论文所需的精确端点结论，同时证明更强的 `1032` 路线。核心消费者为

```lean
theorem later_start_lt_1466_mul_length {n m k : ℕ} (hk : 2 ≤ k)
    (hsep : n+k ≤ m)
    (heq : intervalLcm n k = intervalLcm m k)
    (hgap : m-n ≤ 8*k) : m < 1466*k

theorem later_start_lt_1480_mul_length {n m k : ℕ} (hk : 2 ≤ k)
    (heq : intervalLcm n k = intervalLcm m k)
    (hstart : n ≤ 369*k) : m < 1480*k

theorem elementary_consumers (n m k : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m)
    (heq : intervalLcm n k = intervalLcm m k) :
    ((m-n ≤ 8*k → m < 1466*k) ∧
     (n ≤ 369*k → m < 1480*k))
```

全部使用 B677 的 `(n,n+k]` LCM；`intervalProduct` 与 B686 的 Icc product 通过已证明的端点桥连接。来源的 1466/1480 常数和两条区域假设保持不变，`1032` 只是同一假设下更强的辅助结果。文件注释明确不把 Dusart 或 finite collision certificate 当作本模块前提。

实际消费者是 `bounds/Consumer.lean` 的四个 source-facing theorem；`analytic/DusartBridge.lean` 进一步调用 1466/1480 路线。fresh shared 证据为 `research/shared/20260909-formalization-environment/runs/20260908T093432Z/evidence.json`，SHA256 `4b6e77cadef9a7e29fff99ca90b6b5974f2009915907744d742b4ea1846b6e59`，`success=true`、`build.fresh=true`、闭包 11 个源文件。根源 SHA256 为 `6c0c4d903b0d3eb18a6ba7b7cd4f6cc4005650f8f716bbd15b49bff5329f5e32`。8 个 guard 全部通过，均为 `[propext, Classical.choice, Quot.sound]`。

### `bounds/Consumer.lean`

`requested_elementary_bounds` 以 `∀ n m k : ℕ`、`2≤k`、`n+k≤m` 和相等 LCM 为前提，返回精确的 `8*k ⇒ 1466*k` 与 `369*k ⇒ 1480*k` 两分支。`requested_general_start_relation` 返回 `m+1 < 4*(n+k)`；`stronger_displacement_bound` 返回同一 `8*k` 区域中的 `m < 1032*k`。由于 `k=1` 不属于 `k≥2` 的 elementary chain，文件另以 `length_one_noncollision (hsep : n+1≤m)` 单独处理它；这与来源把长度一边界分开处理的约定一致，不是遗漏。

该模块直接导入并调用 `B677Bounds.elementary_consumers`，`DusartBridge` 也导入它。它与 ElementaryBounds 一起在 fresh shared 证据 `research/shared/20260909-formalization-environment/runs/20260908T093432Z/evidence.json` 中通过，证据 SHA256 同上；Consumer 根源 SHA256 为 `0586ae3eeb791ae4d09a3953138915edb1827aeed9c2459890899458896cc0e7`。4 个 guard 全部通过，传递公理集合均为 `[propext, Classical.choice, Quot.sound]`。

### `analytic/DusartBridge.lean`

来源是 `explorer/complete-proof.md §6` 中引用的 Dusart Proposition 5.4。Lean 精确声明为

```lean
def DusartPrimeInterval : Prop :=
  ∀ x : ℝ, 89693 ≤ x →
    ∃ p : ℕ, p.Prime ∧ x < p ∧
      (p : ℝ) ≤ x * (1 + 1/(Real.log x)^3)
```

严格左端点、非严格右端点、阈值 `89693` 和 `log^3` 分母都按来源保留。`log_cube_89693_gt` 是项目内的精确算术证明。`later_prime_of_dusart` 明确接收 `hD : DusartPrimeInterval`，在 `89693≤m` 与 `m<1480*k` 下给出 `m<p≤m+k` 的素数；`candidate_below_89693_of_dusart` 接收同一个 `hD`、`k>0`、分离条件、两个区域之一和相等 LCM，目标为 `m<89693`。

这里的状态必须明确：`DusartPrimeInterval` 是显式的外部命题，既不是 Lean axiom，也没有在本项目中证明。来源论文把该命题作为无条件的外部 Proposition 5.4 使用，但当前 Lean 只形式化了条件桥接和阈值算术；没有假装包含 finite certificate。因此 `candidate_below_89693_of_dusart` 是条件结论，完整 B677 非碰撞链仍需外部 Dusart 形式化（以及排除 finite 区域的独立工作），不能把本模块标为无条件闭合。

实际消费者是 `bounds/Consumer.lean` 的 elementary bounds，`DusartBridge` 自身把 `hD` 传给 `later_prime_of_dusart`，再传到 candidate bridge。最新 full fresh 证据为 `research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/20260908T101901Z/evidence.json`，SHA256 `36399396572316a8f4ba806ca05f6690acc2b15f02351430a69100758d1d2764`，`success=true`、`build.fresh=true`、闭包 12 个源文件。DusartBridge 根源 SHA256 为 `b26038053621fa7ca4d21eec525235ffe3d67103a7088ff388aa020a59cb3ac4`。2 个 guard（`log_cube_89693_gt` 与 `candidate_below_89693_of_dusart`）全部通过，传递公理集合均为 `[propext, Classical.choice, Quot.sound]`。

## Guard 与接口结论

* 每个列出的 fresh 根都在新对象目录中编译成功，根源 SHA 与证据 JSON 中记录一致；B686 reflected 根的 guard 计数分别为 1、3、1，CentralConsumer 为 1，SymmetricConsumer 为 2；B677 Elementary、Consumer、DusartBridge 分别为 8、4、2。
* 所有 guard 的传递输出都只包含约定的 `[propext, Classical.choice, Quot.sound]`，没有把未声明的公理向下游隐藏。centered 的 `AxiomAudit` 还逐个审计了 10 个声明，空 whitelist 的 `NegativeAudit` 实际失败，验证了 guard 路径会拒绝不匹配输出。
* 对照来源声明，没有发现产品端点、主要量词、分离条件或目标常数的意外缩域。已明确记录的接口差异只有两项：DistancePrimePower 将来源的 `p∣d,a≥1` 候选总化到所有素数并以零 valuation 覆盖不整除分支；CentralConsumer 将来源的 `m < (32/3)A^3k^4` 写成等价的整数式 `3*m < 32*A^3k^4`。这两项均在声明本身可见，没有额外假设。
* Dusart 的条件状态是实质性的接口边界，已在上一节明确标为 `hD` 外部前提；不应把它或尚未完成的 Harmonic、quarter、canonical、finite 工作报告为本批次的无条件总定理。

本文件没有修改任何数学源、manifest pin、历史 run 或共享入口。
