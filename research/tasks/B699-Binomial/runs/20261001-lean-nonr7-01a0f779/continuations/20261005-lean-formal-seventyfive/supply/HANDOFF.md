# A：75分钟条件接线形式化

执行者 `/root/tail2h_implementation`，复杂既定目标，gpt-6.1-sol / xhigh；只写本轮 supply。开始UTC2026-10-04 16:35:50，原hard17:50:50；17:35后不启动新proof单元，17:43前交接供Root发布，默认不延。A本机Lean0、CI0、Git0，旧数学源保持原字节。C执行真实compiler/拒绝式Std3 AX/normalchecker，S独立声明与whole source/object/raw绑定，Root发布。

## 初始前沿与本轮预期

初始正式完整集 `{1,2,11,29}∪[35,15000]`；真实finite Gap已有[19995885,61439401)及旧pilot。Upper父包与tiny4的完整恢复及S签件仍由C/S处理；没有签件前，fullfinite theta initial及30000保持pending，旧90块不重编。

A第一目标是实际编译旧 `../20261004-tail-twohour-finish/supply/ThetaOriginalLegacy.lean` 的两条件桥。第二小目标局部化其上θ输入到证明真正使用的实域。预期仅消除条件数学的实现/接线缺口，以及不必要的低实域上θ要求；两个真正无界θ供应仍未证明，不增加任何无条件完整i计数。低23、R7、更大i及n/j/y的全局无界边界不因条件桥接受消失。

## READY与冻结源码

UTC16:42:31，`bridge-source-ready.json`（7111B，SHA848ccd08bfd2cf1c7fae97c0b61f9e5ea96c7284bb50477487a00d8e4f5e7ffe）固定两个候选module，共5fresh目标根、准确source大小/哈希/imports和old原包依赖。A检查旧桥哈希一致、两源无sorry/admit/axiom/native_decide；这不是compiler/AX/checker接受。

- 直接复用旧ThetaOriginalLegacy原路径，1842B，SHA9682b9d5432d518702701349c7bcd172a978a13c6d850ec2b5ae6b6e8cbf836d；namespace `B699TailFinish20261004.ThetaBridge`，根 `gap_from_two_uniform_theta`、`original_tail_from_two_uniform_theta`。数学源没有复制或改写。
- 新 `ThetaLocalizedLegacy.lean`，SHAc4cbc577333009a5d873ac0ee8e6ec1d8f52be3d5471d1efcc6118bd48f0776f；namespace `B699ThetaLocalized20261005`，根 `gap_above_theta_threshold`、`gap_from_two_local_uniform_theta`、`original_tail_from_two_local_uniform_theta`。仅复用旧ThetaTail实际theta取Prime、标量及Real→Nat步骤，把U调用域改为真实使用的x>122568683。

READY后两个数学源保持冻结，等S源审、C/source spec和Root发布确认；任何真实API修正须明确解冻及新固定源，不覆盖旧接受证据。

## 准确数学参数与消费者

旧桥保留两个输入：

```lean
∀ x : ℝ, 0 < x → Chebyshev.theta x - x ≤ x / 36260
∀ x : ℝ, 122568683 < x →
  x - Chebyshev.theta x ≤ x / (20 * (Real.log x) ^ 2)
```

新局部桥只把第一个输入改为：

```lean
∀ x : ℝ, 122568683 < x → Chebyshev.theta x - x ≤ x / 36260
```

第二个不变。两者都是全部实数尾部，无界x；本轮没有证明任何U/L估计，也没有代做用户已云端启动的纸面优化。

局部化根先提供条件 `Gap 4095 122568684`；再用真实finite theta initial把全部Nat y从10M拼起来，得到条件 `Gap 4095 10000000`；最后接已验 `B699FiniteFull20261002.original_tail_of_gap`。最终目标仍全部Nat n/i/j、4883≤i、i<j≤n/2，同一个实际Prime p≥i同时整除两个完整choose。保留p=i、完整二项式系数/内部素数幂，不把原题指标改成固定n或固定j。

## 最短固定旧依赖闭包

额外原包实际存在 `D:/ResearchArtifacts/b699-gap-halfhour/b699-gap-37046323083.zip`，598854B，A实哈希54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258一致。fixed6191c5f1c6348aee803e7e446d7750bf14cce2bb / run37046323083 / S签 `../20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json`。只需旧ThetaInterval和ThetaTail，不采用PsiTheta；全115-member原包依旧由C/S完整绑定，不以较小采用清单丢掉原件。

- ThetaInterval源22af1bd91d6252dcdf093726c408ae4d1449e372e1dbe2936aa2661692f783a7，对象344e7c9c3c7968e141daf7cef0d323f3961fbe03524d98e8ef953c90389c7e0e。
- ThetaTail源a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d，对象77a14fb6920e2cb4016292ab27bc9de5ea23419bd24ab37930678c70a17dca02。
- GapDefinitions属于已验terminal331基础闭包；C确认实际map，而非推测已在335内。
- FullInitialGapLegacy必须绑定本轮恢复的Upper父包+tiny4及S的新实际接受，不由source-ready推定。
- FiniteConsumerLegacy原源4638d82f1abf9c2ceedfbf3134d2e752bdca21f140fba22829f36848fb81fa1e，已验be6b2df9b/29a3原题Gap消费者；不重做高比例、高度或旧finite链。

Mathlib焦点为Chebyshev、ExponentialBounds、Linarith、NormNum、Ring、FieldSimp及Lean.Elab.Tactic.NormCast，Lean4.33.1/mathlib0df444a与原9pins保持。额外两Theta object的ABI/cache/raw绑定由C/S执行，A未运行Lean或自行补数学PASS。

资源行政观察仅本机D余18.798GiB，3个python进程由原负责人继续，未见lean/lake；未猜测可用RAM。真实CI负载/限额由C记录。初次文件工具不能自动建立supply父目录，随后仅建立own目录并正常写源，这是文件工具问题，不是数学/Lean失败。

## 后续接受与停止条件

新两module须C实际compiler、5目标根Std3传递审计、normalchecker，S5独立准确literal及whole来源/对象/parts/raw绑定；根级source ready与旧后果接受均不替新接受。17:10最新CI准入、17:35停新单元、17:50:50原hard覆盖恢复和发布；没有临时添加小hard。任何失败记录准确module/命题/phase/log和原因层。

如果全finite初段先接受而桥尚未接受，下一可执行项是当前5fresh根+literal的条件接线验证；若桥也接受，下一数学供应就是上面两个无界Real估计的无参数证明，或能直接提供真正Gap4095/10M的等价已知路线。没有这些供应前不能称无条件all i≥4883；低23/R7另有缺口，不能称完整B699。

## 可选第二完整单元：通用误差常数/截止点接口

Root随后授权准备独立generic候选，明确不追加第一已READY spec。UTC16:55:19，`UniformThetaGapLegacy.lean`（3596B、SHA5fc9d92a53b92095db2c82e49139e0242c9a4c99ce7407bd1db204d44b839b48）与 `generic-source-candidate.json`（SHA4709ad4af5d6b9c297a50b39304ca7301652345b66d9ad6e576aa806b59d9b22）已齐。只由已验ThetaInterval和同一Nat/Real转换包装，不证明新的无界估计；first5根闭合优先，另需S源审/literal、root预算和新freeze后才可执行。

namespace `B699UniformTheta20261005`，3根：

- `gap_of_uniform_relative_theta`：D、Y为正Nat，u/l为Real，精确scalar guard `(D:ℝ)*u+((D:ℝ)+1)*l<1`；实际theta两relative bounds在所有Real x≥Y成立，才提供 `Gap D Y`。guard采用旧源的实际API，不用先前口头的等价乘积表达式。
- `gap_4095_of_uniform_relative_theta`：另要求D≥4095、Y≤122568684，使用当前真实finiteInitial补y<Y，再把D-gap单调弱化到4095-gap，提供 `Gap 4095 10000000`。
- `original_tail_of_uniform_relative_theta`：接已验原题Gap消费者，全部Nat n/i/j与same actualPrime p≥i双完整choose。

scalar guards和两个实际无界theta providers仍是外部输入。参数/输入数量变化不代表全局未知减少；若云端实际截止Y>122568684，第一泛型仍给条件 `Gap D Y`，但后两个原题消费者的Y上界条件不能满足，需另补finite区间，不能靠该wrapper越过缺口。当前candidate未compiler/AX/checker接受，第一source/spec完全不变。
