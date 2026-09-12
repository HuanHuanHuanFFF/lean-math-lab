# 固定 i11 (7,2) 实际边候选

状态：完整证明文本，尚未运行 Lean。仅写本目录。原 B 仍 0/19；本包不构成无条件 i11 结果。开始时间2026-09-11 20:16:36 UTC，20分钟为检查点而非总截止。

## 固定实际接口

采用最初 FINAL_PLAN row01：p=7，q=2，P=49，Q=16，a=1，b=3，D=1，z=1/49，c=9，d=5，Lt=1302991/1000000。权重60/330，M=285，m0=224，Z=17498099772305953，Y0=2^15359。未优化任何参数。

最终定理 Math.B699.I11SevenTwoScaled.seven_two_edge_of_fixed_certificates：
Y^60≤A^1000 或 Y^330≤C^1000。A、C 是余因子；窗口数为7^e*A、2^f*C。它们不是最终需要压低的素数组件，今后仍须用实际窗口乘积式转接组件边。

普通前提：Y,e,f,A,C∈Nat；Y0≤Y；1≤C；Y≤7^e*A；Y≤2^f*C≤2Y；整数绝对差≤24。允许位置相同、差正/负/零。没有相异位置、余因子互素、指数上界或相同 G 的额外前提。

两δ共享 m=leastExponent Z Y。最小性与数值证书保留 M≤m 和容量上界；两端边失败给严格18m<e、36m<f，然后作合法 Nat 幂提取。没有用任意大指数代替 least m。

## 不可省略的缩放

uδ=5m−δ，vδ=4m+δ−1；Gδ是每行自己的实际 qContent。实际已验源/Hom定理给出：

- Gδ·Qhatδ =49^(5m−δ)·Qδ(1/49)；
- Gδ·rowErrorδ =49^(4m+δ−1)·Eδ(1/49)；
- rowErrorδ =49^(9m)Phatδ−48^(9m)Qhatδ。

E统一尺度是(49^4)^m。整数间隙保留49^(9m)≤3^(9m)·24·|Qhatδ|+|rowErrorδ|·|V|，其中V=2^(f−36m)C。
所以qRate=49^4·Lt^5/(3^9·qBase)，wRate=(49·16)^9·Lt^5/(49^4·eBase)。

实际 G 通过外部 Math.B699.I11DivisorSevenTwo.qContent_seven_two_lower 直接调用，不是本包假设。外部 Threshold 目前为完整候选；主任务负责其最终验收。没有声称两个 G 相等，也没有把 D 的相邻比较当作 G1≥G0。

## Factorial9D5 独立前缀

只依赖已验 FactorialCommon。真实比值为14·prod(i1..13)(14m+i)除以
4·5²·m·(m+1)·prod(i1..4)(5m+i)²·prod(i1..3)(4m+i)。

从固定 row01 的12次正系数余式证明实际递推，再使用已验望远镜工具。全部 m≥1、δ0/1：
Fδ(m)≤Kδβ^m m/(m+1)<β^m/2，并单独证明Fδ(m)<Kδβ^m。

β=43406276662336/9765625；
δ0：F1=1009008，K0=12568359375/27682574402；
δ1：F1=450450，K1=314208984375/1550224166512。
两K单独记录，不借用其他种子的大小顺序。

## 最后保留的特别输入

四树是c9d5,z1/49的Q/E与两δ，true对应δ0，false对应δ1。固定qLambda/eLambda见GrowthInputs。四个实际m1 cap已有直接整数多项式证明文本，不是最终前提。

八数值前提：

1. 48<qRate(qBase)^285；
2. Z^284≤4Y0；
3. 7^18000≤Z^940；
4. (7^18000)^285≤Y0^940；
5. 4^940·(7^18000)^286≤Z^(940·285)；
6. 2^36000≤Z^670；
7. (2^36000)^285≤Y0^670；
8. 4^670·(2^36000)^286≤Z^(670·285)。

最终没有实际Hom、行列式、F、G、标准全m Q/E增长或目标边假设。SelectedEdge内部的raw-growth参数在FixedEdge已经用实际因子与四树消去。

## 已做检查与证据边界

仅运行小型 Python 精确整数/有理计算：

- 13个阶乘余式系数逐项匹配固定数据；δ0/1、m1..32共64项比值与加强界通过。
- m1..6两δ共12项实际P/Q/E、qContent归一化与Hom余项一致；四个m1 cap通过。
- qRate精确等于冻结row01 A3；qRate≥1，wRate≥Z。
- 第八率证书可用2D^32≤N^32，最大5171bit，再用192≤285与64>48符号推导；本包仍把最终率命题保留为待接前提。
- 容量小幂basis：7^4096≤2^11499、2^13813≤Z^256及p2恒等式；最大13814bit，全部指数余量为正。previous比较仅15325bit。没有计算多百万bit容量大幂。
- 66项审计器合成日志自测拒绝缺根、sorryAx、额外axiom、编译错误。它不是Lean验收。

9个实现模块、42条候选定理、66个总审计项。按AUDIT_PLAN逐层：FactorialAudit；Parameters/SourceRows；ActualRows；GrowthInputs；ScaledGap；SmallCertificates；SelectedEdge；FixedEdge；总Audit。FactorialAudit的11条前缀字节保留不动，总Audit另外覆盖其三个定义。

未来只改imports：Factorial9D5到lean/Factorial/Factorial9D5，其余到lean/I11SevenTwoEdge；外部G到lean/I11DivisorSevenTwo。namespace不改。小容量算术采用先部分应用Capacity、再simp小常数、最后传大幂证书的已验模式。

## 交接与边界

下一检查：主任务先串行验Factorial9D5，再完成外部G Threshold并逐层验本包；之后才接实际四树/8数值及primeWindow/ceilHalf组件消费者。整条i11的其他边、初始n<2^15360以及最终原题仍独立。

SOURCE_MAP记录公式和所有前提；INPUT_SOURCES绑定固定计划、QE、当前模板及9个已接受收据，这9个收据当前根hash均一致，但不能替代新包验收。static-corrections保留两处旧底数修正，x=1的Int.cast_one对齐已验5/3 ActualRemainder。

旧冻结实验目录、共享lean、runner/index/Git均未改。没有新颖性声明；没有新Lean运行。
