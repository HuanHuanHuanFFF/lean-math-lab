# 源材料阅读索引

先读TASK.md和CONTEXT.md，再按下列顺序读。所有路径都是本ZIP内路径；不依赖D盘或仓库在线权限。

1. `evidence/notes/NEXT-TWO-THETA.md`：两θ准确类型、现有接合链、finiteInitial与候选桥状态。
2. `evidence/notes/DUSART-DEPENDENCIES.md`：已知原文依赖、数字表、原件缺口；文中旧完整10000是历史，CONTEXT覆盖当前状态。
3. `evidence/papers/Dusart-1002.0442v1.pdf`：官方 https://arxiv.org/pdf/1002.0442v1 的20页完整原文，233779B，SHA256 3f11eca84613ad00e6a447f99b318d5c3d76e360283efcc6d3eebdda25ff3923。优先看印刷p.4–5的Prop5.1/Thm5.2、p.8的Prop6.8，遇表号以原件为准。上游引用的来源仍须自行取得核对，不因附此PDF而全闭合。
4. `evidence/lean/ThetaInterval.lean`：θ增量抽实际Prime、系数条件；`ThetaTail.lean`：两θ输入及有限初段的真实条件消费者。
5. `evidence/lean/GapDefinitions.lean`、`RealGap.lean`：最小G及同D/Y Nat/Real等价；`DusartAdapter.lean`：更强Dusart供应后的转换，未供其本体。
6. `evidence/lean/PsiTheta.lean`：选择ψ替代时参考已支持范围，不能把ψ−θ误差当ψ−x误差。
7. `evidence/lean/FiniteConsumerLegacy.lean`：G如何接所有i≥4883；`ThetaOriginalLegacy.lean`：未来两输入桥候选，source-only。
8. `evidence/mathlib/Chebyshev.lean`：固定mathlib的实际θ/ψ定义和已有关系；仅单文件，不是依赖闭包。`LICENSE`保原许可。
9. `evidence/status/ACCEPTED-CONDITIONAL-GAP.json`、`ORIGINAL-CONSUMER-ACCEPTANCE-SUMMARY.json`、`CURRENT-SCOPE.json`、`FINAL-PENDING.json`：范围与接受依据，按需解析选字段，勿把metadata当输入定理证明。
10. `evidence/notes/UNIFORM-ROUTE-GAP.md`：旧Gap路线诊断，细节是历史快照，以CONTEXT更新frontier。
11. `reviews/SCOPE-SOURCE-REVIEW.md`：本次具名source/scope审读，不是新数学证明或独立Lean运行。

SOURCES.json记录每个外部/仓库原件的固定来源、bytes和SHA。CONTENTS.json逐成员记录本次附件实际bytes/SHA（自身排除）；只校验包装完整性，不表示数学成立。未附材料的本地链接不可作为云端已读取的依据。

