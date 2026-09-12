# 连续立方指数块与一对窗口的条件高度压缩

负责人 `/root/pade_construction`。唯一写入本目录，不运行Lean/Git，不改已验源或共享入口。开始2026-09-11 14:45:41 UTC，20分钟检查点15:05:41 UTC。Lean候选源已于15:01:50冻结。

## 证书与连续覆盖

Lean结构 `BlockDatum` 的字段为 `u,L,b0,v:Nat`。每行覆盖闭区间[u,u+L]。`coverageCheck p q w start stop rows` 在空表检查start=stop；非空表检查row.u=start、实际已验 `blockCheck p q u L b0 w v` 为真，再从u+L+1递归。stop是排除式终点，整对取amax+1。因此首点、每个相邻接点和尾点都检查，没有间隙、重叠或漏尾。

`Coverage.lean` 的 `coverageCheck_excludes` 通过列表归纳：若指数h在首块内，调用已验blockCheck_sound；否则h>=首块终点+1，进入剩余列表。它覆盖全部start<=h<stop，第二指数k及A,C保持无上界。只检查连续性不够，checker明确同时检查每一行的真实数值blockCheck。

旧JSON兼容映射：D→w，source_height_bits→H=2^bits，first_exponent→astart，max_exponent→amax，small_exponent_height_bits→cut；行K→u、L→L、B→b0、inverse_hex→v。已直接向Luna与primary发送。新的15360高段可继续使用原字段；原起点与低cut保持。`discarded_failure_exponents`仅为历史诊断，绝不用于删除低指数。

## 两端与完整一对结论

`Endpoints.lean` 证明实际窗口距离<=w、min窗口>=n-w，并证明：

- 从p^h*A<=n<H<=p^(amax+1)、A>=1、p>=2，得到h<=amax。允许H=p^(amax+1)，但必须保留n<H。
- 若h<astart、n-r=p^h*A、r,s<=w、A>=1且A^3<=min(n-r,n-s)，使用**已验**min_square_le_cube得到min²<=(p^h)^3。全部h<astart均有h<=astart-1，包含h=0。
- 若2^cut>w且 `(2^cut-w)^2 > p^(3*(astart-1))`，假设n>=2^cut就与上述平方上界矛盾，所以n<2^cut。

`Pair.lean` 将两端和连续覆盖串起来。输入实际同一n的两窗口 `n-r=p^h*A`、`n-s=q^k*C`，r,s<=w，正A,C以及两条小立方<=窗口min；如果n<H、高端证书、连续块检查和低cut证书成立，则n<2^cut。若h<astart走完整低分支；否则h<=amax落入连续块，直接排除。

有限 `pairCheck p q w astart amax cut H rows` 包含p/q>=2、astart>=1、H<=p^(amax+1)、两条低cut比较及coverageCheck。`pairCheck_sound` 的结论仍**显式要求n<H及真实窗口/小立方条件**；初始高度从未被checker当作已经证明的原题事实。没有加入位置互异或余因子互素条件。

## 边界检查与接受状态

对旧(2,3)文件仅做schema/首尾检查和小整数高低端比较，未重复Luna的数值block检查：旧区间45..4095、低cut=68保持。修改首点、内部间隙、内部重叠、缩短末块、删除尾块或改stop均被结构检查拒绝。详见schema-and-boundary-checks.json。

两个削弱命题的反例也已记录：把低cut的严格不等式放宽为等号时，p=2,h=2,A=2,n=8,w=0,astart=3,cut=3不满足n<2^cut；把n<H放宽成n<=H时，p=2,h=3,A=1,n=H=8,amax=2不能推出h<=amax。因此源码保留两处严格性。

本包7个公开定理都是完整候选proof text，未编译。Audit打印7个新定理、2个checker定义及2个已验根；CoverageAudit提供最小独立入口。审计器只运行了合成日志自测，不能当Lean接受。

采用的是主任务已验的集成CubicBlock库，完整Sample receipt/evidence和源SHA已绑定；没有把修复前冻结候选当已验库。下一步由primary串行验证Coverage/CoverageAudit，再验证Endpoints/Pair/Audit，然后把Luna的完整六对数值数据接入。旧2^109并非因此成为Lean已验；从原题进入小立方条件、初始H、六对完备性和最大低cut组合仍是独立义务。B保持0/19。
