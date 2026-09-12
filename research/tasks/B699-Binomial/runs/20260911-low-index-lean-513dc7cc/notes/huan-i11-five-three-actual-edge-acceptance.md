# 实际 (5,3) 分量边已通过 Lean

对每个 n>=2^15360，令 Xp=p^((choose(n,11)).factorization p)、Y=(n+1)/2，现已证明：

`X5^1000 * Y^354 <= n^1000 OR X3^1000 * Y^228 <= n^1000`。

实际G、两δ、同一最小指数、Q/E增长树和8项数值证书均已内部供给。最终根 lean/I11Component/ActualInstance.lean 未修改冻结源码，证据 verification/20260911T193320083825Z/evidence.json：1新67成功复用，9.350秒，7个审计入口，传递公理均在propext/Classical.choice/Quot.sound内。

这排除大n下此对分量同时超出容量的配置。尚不能仅凭一条边排除原题反例；其余4条图边、加权乘积与初始高度、完整CRT数值下降及末端覆盖仍待完成。B完整原题保持0/19。
