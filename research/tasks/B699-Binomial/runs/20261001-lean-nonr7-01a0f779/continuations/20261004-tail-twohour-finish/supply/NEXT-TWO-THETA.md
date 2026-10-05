# 下一执行接口：两个真正无界 θ 供应

A，2026-10-04接续说明；已获Root授权只准备下一执行入口。本文与 `ThetaOriginalLegacy.lean` 独立于本轮第二CI的冻结95源/spec；没有加入本次CI。桥是未编译候选，不是无条件Gap/原题结果，也没有解决这两个无界估计。

## 最小准确供应

用固定mathlib的 `Chebyshev.theta : ℝ → ℝ`，不是新定义的已假设结论函数。分别无外部数学参数地证明：

```lean
∀ x : ℝ, 0 < x → Chebyshev.theta x - x ≤ x / 36260
```

和

```lean
∀ x : ℝ, 122568683 < x →
  x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)
```

第一个是所有正实x的上误差；第二个是严格超过122568683的全部实x的下误差。x均无界，数值抽样、有限表、渐近O项、只针对整数x或RH条件不能直接填这两个类型。来源与缺失的有效解析供应沿用冻结 `../20261004-tail-ninetymin/supply/DUSART-DEPENDENCIES.md`，本轮没有重做广搜、没有原创数论主张。

## 已有接合链

1. 本轮若实际接受 `FullInitialGapLegacy.lean` 中 `B699TailFinish20261004.FullInitial.theta_initial`，它无额外数学输入给全Nat y∈[10000000,122568684)的严格向上真实Prime，4095×(p−y)≤y。直到S的固定source/object/raw/literal签件出现，此环保持pending；不由90prime blocks部分成功推定。
2. 旧 `continuations.«20261002-terminal-gap-twohour».gap.ThetaTail` 的 `B699ThetaSupply.gap_4095_of_theta_estimates_and_initial_segment hupper hlower hinitial` 给 `B699TailGap.Gap 4095 10000000`。本轮真实finiteInitial可消去其第三个hinitial参数，两个无界Real输入仍在。
3. 旧 `continuations.«20261002-terminal-gap-twohour».terminal.FiniteConsumerLegacy` 的 `B699FiniteFull20261002.original_tail_of_gap hgap` 给所有Nat n/i/j、4883≤i、i<j≤n/2的同一个真实Prime p≥i同除两个完整choose。供应真实Gap后这个尾部无需改旧高度/比例或finite n链。

候选 `ThetaOriginalLegacy.lean` 的两根为 `B699TailFinish20261004.ThetaBridge.gap_from_two_uniform_theta` 与 `original_tail_from_two_uniform_theta`。这里只保留两个准确数学输入，没有添加axiom、sorry或弱化p≥i/完整prime powers。若只编译此conditional桥，它仍不会证明两个输入，也不能计无条件完整指标增加。

## 固定源码与已验边界

- ThetaTail SHA256 `a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d`。其2026-10-02旧HANDOFF中的“未编译”是历史checkpoint；后续S接受见 `../20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json`，fixed6191c5f1 / run37046323083 / 原包54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258。该接受只覆盖实际θ抽取/条件后果，未供应两个无界误差估计。
- FiniteConsumerLegacy SHA256 `4638d82f1abf9c2ceedfbf3134d2e752bdca21f140fba22829f36848fb81fa1e`。原题conditional消费的接受以 `../20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json` 固定对象/原包29a3为准，来源路径不搬改。
- 新95源和全文finiteInitial若通过，则使用本轮 `full-initial-candidates.json` 与C/S新签件确定commit/raw/objects；该metadata固定SHA `6f5132737f3b1a469767bd65738d1ade0ffde0b38f7c4f1752a454ba4802fbb6`，当前不写成功回执。
- 工具链沿用Lean4.33.1 / mathlib0df444a360eaa60ab8c11dca51a86af692955474以及原九pins；新供应和两个桥根仍须实际compiler、拒绝式Std3传递AX、normalchecker与独立准确literal/source/object/raw绑定。旧支持不等于新桥已编译。

## 下一项可执行检查与停止边界

finiteInitial真正接受后，具名执行者先绑定旧ThetaTail及依赖对象，编译这份两输入conditional桥的准确literal并AX/checker，独立审查两实数误差类型和最终Nat量词。原有已验objects/source/raw可复用，不重编4k有限大链。若仅整理供应任务，固定本文件中的两个类型、原文来源闭包和已验消费者即可；对真实两个无界估计的实现成本、内存、依赖完整性，目前没有本轮实测。

任何无限尾声称都需要把这两个输入实际消去。补成后能覆盖全i≥4883的原题尾部；低23与R7仍另有任务，不能因此称完整B699。若finiteInitial本轮未接受，下轮先从实际已完成的lower/upper/mid签件与未完成消费者接续，不能直接把theta_initial当作已验依赖。
