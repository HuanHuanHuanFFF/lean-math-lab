# S：云端纸面优化包的接口与证据范围核对

负责人 `/root/tail2h_verification`，复杂既定source/scope审读，gpt-6.1-sol/xhigh。固定仓库来源 `6c42ea72b9886afd587e144662bf09bc51557e39`。本次仅准备/审读提示词与附件，不开始研究轮，不给新数学证明，不运行Lean/CI/数学检查，不恢复传输、不commit/push；仅写本文件。复用Lean research的声明/证据分层流程，并按prompt-entropy检查远端访问、目标与约束保留。

## 精确目标与替代路径

最终最小供应接口是 `B699TailGap.Gap 4095 10000000`：

```lean
∀ y : Nat, 10000000 ≤ y →
  ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y
```

y没有上界，p是实际自然数素数，左端严格、右端非严格，减法为Nat截断减法；见证的严格p>y排除截断伪见证。不能用固定K、有限y扫描、Bertrand二倍区间、未给有效常数/阈值的渐近式或RH条件替代此目标。替代方法可以更易形式化，但必须说明如何返回这一完整无界类型并列出每个仍未消去的输入。

现有θ路线的两个输入准确为：

```lean
∀ x : Real, 0 < x → Chebyshev.theta x - x ≤ x / 36260
∀ x : Real, 122568683 < x →
  x - Chebyshev.theta x ≤ x / (20 * (Real.log x)^2)
```

这里θ为固定mathlib的真实Chebyshev函数，log为实数自然对数，x均无界。它们**加上**完整有限初段
`∀ Nat y∈[10000000,122568684), ∃实际Prime p>y, 4095*(p-y)≤y`
是已形式化消费者的充分输入，不能称两个θ误差与Gap本身逻辑等价。可以直接证明Gap，或换成更弱的充分θ增量/相对误差条件；已有 `ThetaInterval.prime_of_theta_relative_bounds` 的准确系数门是 `D*u+(D+1)*l<1`，更换常数时必须重新覆盖整个无界尾部及剩余低阈值域，不能在叙述里忽略区间接合。

`RealGap.lean` 已有同D/Y的 `nat_gap_iff_real_gap`，所以这里NatGap与RealGap等价。`DusartStrictInput` 则是更强的另一充分接口：全Real x>396738，实际Prime p满足严格x<p及p≤x*(1+1/(25*(log x)^2))。只给10M以上NatGap不能声称已填满整个DusartStrictInput；给较弱、精确的本题NatGap可以避免不需要的低阈值工作。

## 最小支持源码与读取目的

以下路径以固定run根 `research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/` 为前缀。ZIP内可按原相对路径保留或映射到更短附件路径；须提供成员映射，原源码/记录字节不改。

| 原路径后缀 | 对云端的作用 | 证据限制 |
|---|---|---|
| `continuations/20261004-tail-twohour-finish/supply/NEXT-TWO-THETA.md` | 当前两个无界接口与下一消费者导航 | 源码/下一步骤说明；新桥未编译 |
| `continuations/20261004-tail-ninetymin/supply/DUSART-DEPENDENCIES.md` | 出版依赖、阈值、表和未取得原件的缺口 | 历史审读当时未保PDF；本包另附固定v1仍不补完整上游闭包 |
| `continuations/20261004-tail-ninetymin/supply/UNIFORM-ROUTE-GAP.md` | 三条既有供应路线与输入语义 | 文中10000/初段状态是历史快照，当前状态由TASK覆盖 |
| `continuations/20261002-tail-twohour/gap/GapDefinitions.lean` | 真无界Nat Gap定义 | 定义不提供见证 |
| `continuations/20261002-tail-twohour/gap/RealGap.lean` | 相同D/Y的Nat/Real双向转换 | 不提供任何无界素数供应 |
| `continuations/20261002-tail-twohour/gap/DusartAdapter.lean` | Dusart供应后的分母和域转换 | DusartStrictInput仍参数化、未供应 |
| `continuations/20261002-terminal-gap-twohour/gap/ThetaInterval.lean` | θ增量提取实际prime及系数门 | 实际θ界仍是输入 |
| `continuations/20261002-terminal-gap-twohour/gap/ThetaTail.lean` | 两无界θ输入+有限hinitial→Gap | 三个输入均必须在最终路线中处理/准确标注 |
| `continuations/20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean` | Gap→原题全部i≥4883的消费者 | 其imports的完整有限链/高度闭包未由这份最小附件提供 |
| `continuations/20261004-tail-twohour-finish/supply/ThetaOriginalLegacy.lean` | 两θ输入消去hinitial后的未来小桥 | source-only、未编译/AX/checker，不能当已验新consumer |
| pinned mathlib `Mathlib/NumberTheory/Chebyshev.lean` | θ/ψ准确定义 | ZIP固定Git原件38,375B（本机CRLF工作树39,259B）；不是mathlib依赖闭包 |

若走ψ替代才补 `PsiTheta.lean`；其无条件ψ−θ界不是ψ相对x的无界有效误差。若需要了解未来有限初段消费者，可以附 `FullInitialGapLegacy.lean`、`ThetaInitialExactLegacy.lean`，但须标依赖的Lower/Upper/prime-block/object/原件未完整绑定，附件不是该数据的完整证明闭包。不能为“完整”盲塞90块候选或把它们叫已接受证书。

## 既有接受、producer与缺失来源

当前正式原题完整集是 `{1,2,11,29}∪[35,15000]`，实际有限Gap正式接受 `[19995885,61439401)`，旧pilot `[10000000,10146761)`另保留。完整有限θ初段和30000虽由d265/b1de实际producer报告compile/AX/normalchecker成功，父923,266,078B和tiny完整原件仍欠全字节绑定，故**独立接受pending**；不能作为无条件已验前置。云端若条件采用它们，输出必须保留“以该有限前置最终独立接受为条件”，不能把最终任务偷偷降成仅y≥122568684。

旧ThetaInterval/ThetaTail/PsiTheta的接受记录固定6191c5f1、CI37046323083、原ZIP54826001…；该接受只覆盖实际prime提取/明确条件后果，不证明两个θ输入。旧原题consumer接受沿be6b2df9、CI37037647747、原ZIP29a3…；它没有消去hgap。小包里若只附小签件/摘要，标签应为“引用既有验收记录”，不声称云端已独立重核旧objects与原日志。

Dusart v1的精确Prop6.8等是已知出版命题，不是当前源码中的无参数Lean供应。`DUSART-DEPENDENCIES.md`明确未取得其submitted `[7]`固定全文、`[23]`p.355原计算/证书完整原件；原printed decimals和引用表号不能自动成为已验有理数/全区间证书。若ZIP没有固定PDF/上游原件，须列missing，而不是把URL或本地历史路径说成附件可读的全文。

## 云端访问与TASK审查状态

云端不在本地仓库。唯一保证可读的是ZIP成员相对路径，须有附件manifest与原仓路径/固定commit/size/SHA对应。Lean imports、文档相对链接或本机D盘路径指向未附文件时，只能标外部/缺失依赖；本最小源码集可用于纸面理解与优化，**不构成可独立编译、完整proof/object/source闭包**。

已逐字审读Root的TASK/PROMPT/CONTEXT/SOURCE-INDEX。数学/权限scope通过：U/L准确域及阈值、最小G全无界y、strict实际p>y和4095差均保留；两θ路线是充分而非等价，Nat/RealGap同参数等价与Dusart更强接口分开；允许替代须有效常数/全部区间接合；pending有限前置不能升格或把目标降为y≥122568684；不触及R7/低指标/K/CI；云端只读附件/其可访问公开原件，无默认时长；交付要求准确依赖/未证义务和可转写代表目标，不把骨架叫kernel通过。

初审发现TASK“没有要求运行”、PROMPT“不需要运行”只有可选语气。已向Root提出把本次只纸面权限写成明确“不安装、不运行Lean、不开CI”；Root已修订TASK/PROMPT为硬边界，未扩大任务。TASK允许公开原件核对及少量精确常数计算的是**将来用户启动的云端任务**，不授权本地本次启动研究或执行任何math check。

CONTEXT准确覆盖旧文档的10000历史时点：正式15000+smallGap，wholefiniteInitial/30000只producer成功但独立绑定pending，新ThetaOriginal桥source-only。现有θ提取条件后果不能填U/L；全10M Gap还需hinitial，TASK已写三输入分层。旧source/验收/出版命题/来源缺件保持不同等级，当前包装不改变任何数学接受。

数学/权限审读结论为PASS；固定Mathlib工作树HEAD已只读核对为0df444a360eaa60ab8c11dca51a86af692955474。没有运行Lean或检查新旧数学证明。未附的Lean imports/本机链接明确为缺失完整编译闭包，而非云端可读指针。

## 实际首包访问核查：PASS

已只读检查 `D:/ResearchArtifacts/B699-paper-dispatch/20261004-uniform-gap-paper-1c862c44/B699-20261004-uniform-gap-paper-1c862c44.zip` 的首建快照：254,474B，SHA256 `9c7ee0016aa1b73eab5c5d5d079d9a8f9d18c87592fe3027f3883ee6891f47a9`，26个唯一成员，CRC无错误。CONTENTS全部成员的实际size/SHA及自排除库存一致；TASK/CONTEXT/INDEX及所有必需接口、notes、status、PDF和本review的包内相对路径均真实存在。源表18项中14个仓库原件逐一等于6c42固定Git bytes，2个Mathlib原件逐一等于0df固定Git bytes；PDF与已标签的selected-fields导出分别区分，没有把后者叫原签原字节。

固定PDF实际233,779B、SHA256 `3f11eca84613ad00e6a447f99b318d5c3d76e360283efcc6d3eebdda25ff3923`，PDF reader可解析20页、未加密，首标题含arXiv:1002.0442v1与WITHOUT R.H.。这只确认附件原文可读/版本身份，没有重新证明纸面命题或补齐其上游来源。

首包scope与可读性通过。随后因本review补充访问记录而重新构建的ZIP会有新size/SHA，首包9c7…不得冒称最终包哈希；Root负责最终repack的全部member-byte/retained-source和archive哈希行政核查。本审读不提高15000/smallGap之外任何数学接受等级，也不启动云端研究或替云端完成优化。
