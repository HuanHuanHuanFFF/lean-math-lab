# 完整立方指数块：通用 Lean 候选

负责人 `/root/pade_construction`。唯一写入本目录，未运行 Lean/Git、未修改共享或已验文件。开始2026-09-11 14:15:02 UTC，20分钟检查点14:35:02 UTC（不是总截止）。通用Lean源已于14:31:51冻结，来源与说明随后补齐。

采用固定 commit `5c37f257401952ed85ddd104de8e56a4f2024031` 的旧 REPORT.md §5。本地全文SHA `d773ffdb19e80edbd9c662ea007516ab230ea30e1160ff5561d6ef5c746064d6`；primary已用GitHub connector核对固定commit全文相同。本工作是对已记录初等方法的形式化候选，没有新颖性声明。

## 精确结论

对 p,q,u,L,b0,w,v:Nat，p,q>=2、u>=1、b0>=1、P=p^u>w、Q=q^b0，假设

`Q^3 <= (P-w)^2`, `(P*v)%Q=1`，

并对全部整数d满足-w<=d<=w，有 `p^(u+3L)<positiveResidue(Q,v,d)^2`。其中positiveResidue先取v*d模正Q的非负余数，余数0改为Q。

则对任意 a,b,A,C:Nat，只要u<=a<=u+L、A,C>=1，就不能同时满足

`Nat.dist (p^a*A) (q^b*C)<=w`，以及 `A^3,C^3<=min(p^a*A,q^b*C)`。

b没有上界；没有A,C互素条件。p,q不必在通用代码中假设为素数，所需的模可逆性由证书直接给出。

## 完整性链

`Arithmetic.lean` 是可先独立核验的最小前缀，含7个公开定理：

1. A^3<=R*A且A>0，可消去A，得到A^2<=R。
2. 若C^3<=x<=R*C，则C^2<=R，进一步x^2<=R^3。
3. p^a*A>=P及距离<=w，推出min两数>=P-w；Nat.dist也推出完整带符号差落在[-w,w]。
4. 结合Q^3<=(P-w)^2和第2步，得到q^(3b0)<=q^(3b)，用Nat专用严格幂单调性推出b>=b0。这里没有搜索或截断b。
5. 有了a>=u与b>=b0，实际因式分解为P*X=p^a*A、Q*T=q^b*C，其中X=p^(a-u)A>0、T=q^(b-b0)C。
6. A^2<=p^a及a<=u+L给X^2<=p^(u+3L)。所有Nat减法都在a>=u或b>=b0后使用。

`Residues.lean` 从实际等式P*X-Q*T=d与给定逆证书推出X≡v*d(mod Q)。把Int余数转回Nat，得X%Q为目标余数。非零余数不超过X；零余数时Q|X且X>0，所以Q<=X。**d=0没有例外，也没有被过滤。**

`Block.lean` 把上述全参数结果合起来，与每个位移的rho平方严格下界矛盾。没有把b>=b0、X同余关系或rho<=X作为最终外部假设。

`Checker.lean` 给出 `blockCheck p q u L b0 w v : Bool`，包括全部参数/逆元/模数尺寸检查，以及 `List.range (2*w+1)` 的所有位移。索引k映射到 `(k:Int)-(w:Int)`。w=10时恰有21项，k=10为d=0。`residueChecks_sound` 通过k=(d+w).toNat证明不漏任意d∈[-w,w]；`residueChecks_zero` 显式审计中心位移；`blockCheck_sound` 得到完整无上界b排除。

## 验收与边界

最小编译单位：Arithmetic.lean，然后ArithmeticAudit.lean。完整顺序：Arithmetic、Residues、Block、Checker、Audit。所有源是完整proof text，无sorry/axiom/native_decide；实际是否通过仍须primary串行编译，不能把“完整文本”称为已通过。

Audit打印16个新公开定理和4个实际定义，ArithmeticAudit只打印7个前缀根。审计器拒绝缺根、编译错误、sorryAx及非std3公理。现有audit-selftest仅是合成日志测试，没有真实Lean日志或新定理接受。

primary的独立Ground样本已接受：p=2,q=3,u=45,L=1,b0=18,w=10,v=174456611，8个公开声明均零公理，evidence20260911T142927318216Z。本目录没有重复证明或修改Ground。其Fin21完整位移条件可由primary转接本候选forall-Int接口；这个实例连接尚未完成。

剩余缺口：真实编译与公理审计；Ground适配；旧各块的连续覆盖与完整低指数分支消费；从原题实际小余因子条件进入这些块。旧报告的2^109不是Lean已验，B原题仍0/19。若通用定理通过，它消除单个已核数值块内全部a及无界b,A,C，而不是独自完成整个i11。

静态检查曾发现本机没有Mathlib.Tactic.Omega模块，已在冻结前改为实际存在的Lean.Elab.Tactic.Omega。没有发生可归因的Lean编译失败，因为本worker没有运行Lean；其他elaboration风险保持待验。源与样本、实际接口、文件SHA见SOURCE_MAP和GENERIC_FREEZE；最终文档清单见FREEZE_V1。
