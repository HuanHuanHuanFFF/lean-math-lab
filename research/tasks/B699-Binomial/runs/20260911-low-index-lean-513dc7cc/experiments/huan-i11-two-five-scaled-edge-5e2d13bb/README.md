# 实际 (2,5) 边的缩放与 FixedEdge 候选

完整七层证明文本已冻结，尚未运行 Lean。它沿用原 i11 参数，最终是实际余因子的边结论

```
Y^248 ≤ A^1000 OR Y^252 ≤ C^1000,
```

其中 N2=2^e A、N5=5^f C。源码直接调用真实 Rows、Hom、实际 qContent 下界，最终没有额外的 Hom/G/行列式/原始增长或边结论假设。特殊剩余前提是四个实际 GrowthTree 和八条明确数字证书；普通窗口前提完整列在下文。

已验依赖与新候选严格分开：主任务已真验 D=3 前缀、四轨道 G、Capacity、RatBounds，以及通用 Growth/Normalization、Factorial5D4。本轮重新核对11份对应 receipt 及源闭包 SHA，全部匹配。七个新实现模块的编译和公理验收仍待主任务。

## 固定参数与真实缩放

P=2⁷=128，Q=5³=125，a=b=1，D=3，z=3/128；c=5,d=4。两个 δ 的实际参数是 uδ=4m−δ、vδ=m+δ−1，且 uδ+vδ+1=5m。Bool row=true 对应 δ=0，false 对应 δ=1。

`ActualRows.lean` 使用每行自己的 Gδ=qContent(uδ,vδ,uδ)，直接调用已验接口得到

```
Gδ Q̂δ =128^uδ Qδ(z)
Gδ (128^(5m)P̂δ−125^(5m)Q̂δ)
 =128^vδ 3^(2uδ+1) Eδ(z).
```

Gδ 的全 m≥141 下界来自实际 `qContent_two_five_lower`，没有被重新假设。记 g=(602791/500000)⁴，则 g^m≤Gδ。两行的 E 尺度分别是

```
(128·3⁸)^m · (3/128)      δ=0
(128·3⁸)^m · (1/3)        δ=1.
```

因此源码严格保留统一底数 **128·3⁸=839808**，得到

```
g^m |Q̂δ| ≤ (128⁴ BQ)^m
g^m |errorδ| ≤ (839808 BE)^m.
```

BQ=β(5,4)λQ，BE=β(5,4)λE；对应固定率为

```
qRate(BQ)=128⁵g/(128⁴BQ)=128g/BQ
wRate(BE)=(128·125)⁵g/(128·3⁸BE).
```

精确检查确认 qRate=原 Ω3^d，wRate=128⁵·原 Ω4^d，Z=floor(wRate)=115572769905797。这里 max(P,Q)=128，不能照搬旧 (5,3) 中 max(P,Q)=Q 的关系。

实际整数桥以 r=128^(5m)、s=125^(5m)、a=b=1，使用真实两行非零行列式选出 row，并给出

```
128^(5m) ≤24|Q̂row|+|errorrow|·|V|,
V=5^(f−15m)C.
```

原窗口差可以正、负或0；代码只使用绝对值≤24。没有要求窗口位置互异、A/C互素或余因子 p-free。C≥1 保证 V≠0，满足真实整数桥的输入。

## 同一最小指数及严格性

`Parameters.lean` 定义 Y0=2¹⁵³⁵⁹、M=329，以及唯一的

```
m(Y)=least m with 4Y<Z^m.
```

前一指数证书给 m≥329≥141。两端容量使用 Jp=2³⁵⁰⁰⁰、Jq=5¹⁵⁰⁰⁰，余量分别752、748；两个失败分支给出 A¹⁰⁰⁰<Y²⁴⁸、C¹⁰⁰⁰<Y²⁵²，于是同一 m 满足 **35m<e、15m<f**。不为两个 δ 或两个素数分别选 m。

为了保留可编译的数值规模，先部分应用已验 `least_capacity_forces_exponent`，仅重写35·1000=35000、15·1000=15000、1000−248=752、1000−252=748，再传入巨大幂的证书。没有使用一次性直接特化让定义相等检查展开这些巨大自然数。

qRate^m>48 把 Q 项的两倍严格压到128^(5m)以下；由125^(5m)V=N5、N5≤2Y，以及4Y<Z^m≤wRate^m，把 E 项的两倍也严格压到同一下界以下。两个严格界相加，与实际整数桥下界矛盾。

正乘因子的消去明确使用 `Rat.mul_lt_mul_right`；不使用要求 ℚ 全局乘法严格单调的错误通用接口。其余有理代数直接复用已验 RatBounds。

## 最终剩余前提：完整列表

最终声明是 `Math.B699.I11TwoFiveScaled.two_five_edge_of_fixed_certificates`。

四个增长对象通过两个 Bool 函数传入：

```
qt : ∀ row, GrowthTree qLambda
  (qWeight 5 4 (Math.B699.I11TwoFivePrefix.rowDelta row) (3/128))
  (qCore 5 4 (3/128))
et : ∀ row, GrowthTree eLambda
  (eWeight 5 4 (Math.B699.I11TwoFivePrefix.rowDelta row) (3/128))
  (eCore 5 4 (3/128)).
```

它们分别提供 Q0、Q1、E0、E1；λQ、λE 与冻结 row-00.json 完全相同。Luna 的四树应按上述真实参数和 δ 对应接合。原 c3d2,z5/512 的旧 row00 树不能作为本行实例。

八条明确数字证书是：

1. 48<qRate(qBase)^329。
2. Z^(M−1)≤4Y0。
3. 2^35000≤Z^752。
4. (2^35000)^M≤Y0^752。
5. 4^752(2^35000)^(M+1)≤Z^(752M)。
6. 5^15000≤Z^748。
7. (5^15000)^M≤Y0^748。
8. 4^748(5^15000)^(M+1)≤Z^(748M)。

代码已经给出两个 δ 的实际 m=1 Q/E cap、λ/BQ/BE 正性、qRate≥1 和 Z≤wRate 的证明文本，故它们没有留作 FixedEdge 外部假设。Factorial5D4 的实际 Kδ 仍逐δ使用，不假设 K1≤K0。

普通输入为 Y,e,f,A,C∈Nat，且：Y0≤Y；1≤C；Y≤2^e A；Y≤5^f C；5^f C≤2Y；`|(2:Int)^e*A−(5:Int)^f*C|≤24`。这些没有被隐藏在树或数字证书中。

这里的 A、C 是窗口余因子。原图顶点是实际 primeComponent n2、primeComponent n5；待数据验收后，仍须使用实际 PrimeWindow、Y=ceil(n/2) 的窗口包装，以及已验 `primeWindow_graph_capacity`，才能得到两个组件的1000次幂图边。当前定理不是无条件原 i11 结论。

## 模块和逐层最小验收入口

| 实现模块 | 本层新增数学 | 对应最小审计入口/根数 |
|---|---|---|
| Parameters | 共用选择器、上下域及严格抽取 | ParametersAudit，4 |
| ActualRows | 实际 G/Hom、D=3大小界、实际整数桥 | ActualRowsAudit，7 |
| GrowthInputs | 实际 F5D4与四树→原始 Q/E 全 m 界 | GrowthInputsAudit，5 |
| ScaledGap | 两个严格误差项与整数矛盾上界 | ScaledGapAudit，4 |
| SmallCertificates | 两δ初值 cap 和短有理数比较 | SmallCertificatesAudit，4 |
| SelectedEdge | 同一 m 下从双失败导出矛盾 | SelectedEdgeAudit，1 |
| FixedEdge | 仅四树+八数字的最终连接 | FixedEdgeAudit，1 |

每层先复用已有通过的前驱。完整 `Audit.lean` 打印全部26个新公开定理及8个关键定义，共34个根；`AUDIT_PLAN.json` 给出确切全名。完整日志审计器检查34根，不能把只有前缀的日志误送给这个全链配置。

`SOURCE_FREEZE.json` 绑定15个 Lean 文件，包含7个实现、7个逐层审计和完整入口。只在主任务的集成副本重映射 imports；本冻结源保持不动。代码全文无占位证明，但尚未执行 Lean，不能由静态完整性或继承依赖的成功来推断新链已通过。

## 有界检查与交接边界

`check_fixed.py` 重新核对实际 m=1 两δ多项式、K/CQ/CE、实际Rate与旧计划的一致性、M/Z端点及既有短幂基础和指数余量，全部精确通过，没有重新展开巨大最终容量幂。最大短幂基础整数为11960 bit。它还验证 qRate^32≥2，可由192≤329和2⁶=64>48构造更小的 qRate^329 证明；该32次整数比较和实际Rate等式仍须真实 Lean 验收。

`audit_axioms.py --self-test` 对34根的合成日志通过，能拒绝 sorry、缺失根、自定义公理和编译错误；这不是实际公理输出。一次静态扫描曾把新λ分母中的“354”数字子串误报为旧权重，现已改为完整数值token匹配，候选源码未因此修改。

本轮起点2026-09-11 18:43:38 UTC，20分钟检查点已报告；20分钟不是总截止。冻结源码后只补非Lean检查与交接记录。D3前缀与G的真实接受状态已依据主任务新receipt更新到SOURCE_MAP；新链仍未编译。

预期通过后，本行只需接入四树与八个数字证书即可获得实际余因子边，再接普通组件包装。原题的完整高度、其他图边与最后有限覆盖仍由主任务继续，当前新增原题覆盖为0，B保持0/19。
