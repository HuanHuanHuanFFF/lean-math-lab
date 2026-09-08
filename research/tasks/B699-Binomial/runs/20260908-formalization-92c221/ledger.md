# B699 形式化核验账本

基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`；采用`20260908-binomial-cofactors-f0a6539/explorer/constraints.md`、完整handoff/独审与现行Math/B699/CofactorCriterion.lean。

| ID / 结论 | 精确范围 / 依赖 / 验收 | 状态 |
|---|---|---|
| F699-00 双余因子充分判据 | n,i,j,a,b,p,q,e,f,u,v∈ℕ；i<j≤n/2,a,b<i；p,q prime且>i；e,f≥1；n=u p^e+a=v q^f+b；Coprime u v，uv(a+b)<n ⇒ ∃r prime,r≥i,r∣gcd(choose n i,choose n j)。不要求p≠q或精确估值；1≤i由a<i推出。 | 源码已闭合Kummer→余数→整数核心→gcd；不得重复实现。本批新目录编译Math依赖、Tests与完整j范围Example已通过；verification/baseline/20260908T095843Z/evidence.json |
| F699-01 补集 | 全部合法n,i是否必有符合充分判据的结构未证明，原报告明确未接受这一强迫结论 | 数学开放范围（2），不是遗漏Lean胶合；不捏造为假设或承诺已闭合 |

终端因子和约分分母约束在已采用扫描中的位置会再对照完整报告；探索用低剩余条件不自动变成独立待办。无原题完成/新颖性主张。所有本批文件由主线程维护。

本批新验证：verification/baseline/20260908T095843Z/evidence.json成功，覆盖Math/B699/CofactorCriterion、5条传递公理guard、Examples n=86/i=8对所有8<j≤43的真实消费者；9个pins匹配且clean。采用范围复核见shared/20260908-formalization-external-audit/adoption-followup.md：没有遗漏第二个已采用但缺Lean的完整消费者。未覆盖的双余因子结构补集仍是数学缺口，不重复实现已验判据。
