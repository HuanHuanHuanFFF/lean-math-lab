# 完整 CRT 指数网格到终端候选会员的消费者

已写出五层完整候选：Block、Grid、Pair、Dispatch、Actual。最终 `actual_i11_candidateMem` 从原始 `11<j<=n/2`、`noCommon`、`n<H` 及明确有限证书推出候选并集会员，**没有把会员、实际余因子或窗口方程作为入口前提**。再加已有终端见证检查，即得一个条件性的原题 Common 消费者。

本轮没有运行 Lean。RowCell、终端 Witness/Cover 和既有 CRT/余因子基础已由主任务真实验收，并在此核对收据与源码SHA；新五层仍待串行验收。只写本实验，不改 RowCell、其他集成、旧候选、队列或索引，无Git/大计算。起点2026-09-11 21:19:36 UTC，检查点21:39:36 UTC（不是总截止）。

## 检查器与完整指数域

`blockCoverCheck` 遍历两个 `List.range'`，在每个正指数格点用**实际** `cellCoverCheck`，两边cap仍是 `min M ((H-1)/p^a)` 与 q端对应式。`rectangleCoverCheck` 固定从1开始，覆盖完整1..amax与1..bmax。它们不含 Common、candidateMem或任意j的全称。

Block层给出单cell提取、按行/列append与区域内data相等时transfer三个拼装接口。CellData完全复用旧类型及其中inverse/bounds，未添加会员证明字段。

Pair层复用已验 `PairGridData`、`SixPairGrids` 和 `cutoffCheck`。新 `pairGridCoverCheck` 是实际cutoff检查与完整矩形覆盖检查的合取。cutoff明确要求p,q>1与 `H<=p^(amax+1),H<=q^(bmax+1)`；不能只检查部分指数矩形而省去其余幂。

## 窗口到 RowCell 的两个端点

Grid层从实际等式 `n-r=p^a*A`、`n-s=q^b*C`、r,s<11、A,C>=1、A,C<=M及n<H，调用已验工具得到：

- p^a<H和q^b<H，由cutoff推出a<=amax、b<=bmax；
- 实际cofactor分别不超过上述height caps；
- d=(n-r)-(n-s) 属于[-10,10]，`n<=min(n-r,n-s)+10`；
- **新增显式下界** `max(n-r,n-s)<=n`，来自两个Nat.sub_le。

因此传给 RowCell 的是完整区间

`max(p^a*A,q^b*C)<=n<=min(p^a*A,q^b*C)+10`。

既没有只证明上界，也没有把较弱的0下界误认为实际参数区间下界。RowCell已验的有限t枚举把真实整数参数送入coverCheck，进而返回candidateMem；负C0、零余数及lo/hi空区间的处理仍由该实际前置承担。本层不把参数壳或极值列表当成完整t枚举。

## 顺序交换与六对

Grid与Pair各有交换入口，交换时同时交换cofactor、offset和两个指数的位置。对于Pair的逆序窗口 `q^h*A,p^k*C`，传给规范p,q网格的是a=k、b=h；两端height caps也随窗口一起交换。d的符号反转仍由全部21个位移覆盖，max/min对称。

Dispatch对 `{2,3,5,7}` 的16种有序选择逐案处理：4个p=q分支由真实hpq排除，其余12个分支各调用匹配的规范六表或交换接口。源码逐项与已验旧Dispatcher的路由核对。旧bound theorem输出n<=T，不能据此直接推出不连续区间并集的会员；新分派使用的是新membership接口，数据类型和已验路由模式保持一致。

允许两个窗口位置相同；没有增加offset互异、指数互异或cofactor互素假设。

## 原题入口与小 n

完整入口见 FINAL_INTERFACE.md。数据前提是实际 `stageConstantsCheck H M=true`、六个 `pairGridCoverCheck` 和

`coverCheck 24 (max M 109) candidates=true`。

原域 `11<j`、`j<=n/2` 内部推出n>=24。若n<=M，或n<110，则直接从这条显式小n coverCheck 得候选会员。两分支都保留，不能只在大n调用cofactor桥后丢掉它们。

只在n>M且n>=110分支，才解析已验stageConstantsCheck，得到M>=1与原固定整数证书

`(2*11!)^11*H^7<=i11K*M^33`。

继而调用真实 `actual_i11_bounded_cofactor_bridge`，由noCommon得到两个不同小素数、**实际二项式valuation的正指数**、offset<11、正cofactor<=M及窗口方程。正指数转换为>=1后，六对分派给出会员。最终没有显式实际组件、幂族窗口、参数t或会员假设。

`common_of_terminal_grid_checks` 进一步接受实际 `candidateIntervalsCheck candidates witnesses=true`，反证noCommon，再用新会员结论和已验终端覆盖soundness得到Common。Common保持原定义 `∃p,p.Prime∧11<=p∧p∣gcd(n.choose11,n.choosej)`，包含p=11及所有合法j。该结论仍条件于完整数值表，并不代表本轮完成了原题。

## 独立有界核对

约0.063秒的结构/小整数检查通过：

- 12个有序路由、4个对角排除与规范六表逐项一致。
- 3814组小窗口表示核对max下界、min+10上界、signed d、交换和height caps；没有计算二项式或完整CRT网格。
- 1096个小n分支例和合法j域例核对n>=24及 `[24,max M109]` 覆盖责任。
- 1152个抽象布尔矩形append检查、576个区域内数据transfer检查，含空长度与非零起点。
- 新入口头部没有会员或窗口方程输入；新Bool定义不包含会员/Common；无sorry/admit/自造axiom/native_decide/ofReduceBool。
- 74个读取文件的字节在检查末尾重新核对一致。

有限几何例只是交叉检查，不能代替全参数Lean证明或完整数值证书。

## 当前已验采用

- i11-terminal-crt-row-cell：`20260911T212724344618Z`，4 个公开根；当前完整项目闭包SHA匹配。
- i11-terminal-cover-witness：`20260911T212544311337Z`，4 个公开根；当前完整项目闭包SHA匹配。
- i11-terminal-cover-consumer：`20260911T212638438936Z`，11 个公开根；当前完整项目闭包SHA匹配。
- crt-grid-rectangles：`20260911T192713999169Z`，9 个公开根；当前完整项目闭包SHA匹配。
- crt-grid-height-cap：`20260911T192638569723Z`，5 个公开根；当前完整项目闭包SHA匹配。
- i11-crt-six-pair-meta：`20260911T194115276855Z`，4 个公开根；当前完整项目闭包SHA匹配。
- i11-crt-six-pair-dispatch：`20260911T194152209017Z`，1 个公开根；当前完整项目闭包SHA匹配。
- i11-crt-actual-step：`20260911T194229375074Z`，3 个公开根；当前完整项目闭包SHA匹配。
- i11-bounded-actual-bridge：`20260911T192324369443Z`，1 个公开根；当前完整项目闭包SHA匹配。

RowCell源码未改，SHA见SOURCE_MAP与AUDIT_PLAN。以上公开axioms均在std3内；本worker只读取收据，没有重跑编译。

## 新源码与后续验收

| 源 | 公有typed/axiom根 | 实际字节SHA256 |
|---|---:|---|
| Block.lean | 6 | `edbbe8e509260293c00a00bfb91762747bed0d6f2c3d3451fb561054273dd8ca` |
| Grid.lean | 3 | `26c4213c391196489df202c02aef2c728a4b37328d2fcfc9b8c37e45705fb714` |
| Pair.lean | 4 | `ec7174cd243a8bcc59d14a63254ca9e94093a2f512029723325e137cf0f03dde` |
| Dispatch.lean | 1 | `c5e2ebac8fc5182ddd7dbf10ea8e170f0de75f07a2993ad2ccd8cd59a1cfec77` |
| Actual.lean | 2 | `98a33090722a9f5b26ef5396fe4920247c7264ec06ccaaef3190da0119818bc3` |

每层有Audit，总Audit覆盖16个公有根，均同时提供#check与#print axioms；实际源行见DECLARATIONS.json。需要主任务对新五层按依赖顺序做真实串行验收。

仍缺六张**完整** `pairGridCoverCheck` 数值表（每个指数、每个signed d、每个认证t都需覆盖）、小n的coverCheck数值证明、候选区间与全部终端见证数据。旧只有n上界的CRT表不能当作新会员表通过。其余初始高度/下降链也保持各自前提，本轮没有新增B原题验收，B仍0/19。
