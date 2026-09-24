# Pro D 2026-09-22 接收与接续摘要（C → C6）

本笔记只做来源、作用域、作者结论和接续导航，不构成数学验收。本次没有运行来源代码、Lean、外部复核或证书重算，也没有把 `PASS` 升级为本仓接受。新包是 [B699-ProD-session-evidence-2026-09-22.zip](../PACKAGE_INDEX.md)，不要与同批 [D-i3](../PACKAGE_INDEX.md) 包混用。

## 来源定位和证据边界

- [PACKAGE_INDEX](../PACKAGE_INDEX.md) 将根包映射到 `sources/ProD`；[MEMBERS.json](../MEMBERS.json) 记录原路径 `E:/Download/B699-ProD-session-evidence-2026-09-22.zip`、`bytes=924928`、`sha256=6be609ae39b03e78f135fff9bf98a12c5e84242b2ed8bc3e143c4d36c9b48f53`，intake baseline 为 `bc66b6873d06c70628672ec004f5c5ea5583ff15`。
- 根入口 [README](../sources/ProD/README.md) 说明这是 2026-09-22 打包的同一会话六份证据包，阶段原日期仍为 20260921；原 ZIP 留在包外，阅读保留的普通文件。累计 [SESSION_SUMMARY](../sources/ProD/SESSION_SUMMARY.md) 和 [EVIDENCE_LEVELS](../sources/ProD/EVIDENCE_LEVELS.md) 明确：最高是作者纸面/符号推导加同会话确定性重放、实现回归和哈希/ZIP 检查；没有 Lean、独立审读、完整 B699 或 `R7={3,4,5,6,7,8,9}` 闭合。
- 六阶段 retained path 均由 MEMBERS 定位： [C README](../sources/ProD/rounds/B699-ProD-C-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C-20260921/HANDOFF.md)；[C2 README](../sources/ProD/rounds/B699-ProD-C2-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C2-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C2-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C2-20260921/HANDOFF.md)；[C3 README](../sources/ProD/rounds/B699-ProD-C3-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C3-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C3-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C3-20260921/HANDOFF.md)；[C4 README](../sources/ProD/rounds/B699-ProD-C4-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C4-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C4-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C4-20260921/HANDOFF.md)；[C5 README](../sources/ProD/rounds/B699-ProD-C5-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C5-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C5-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C5-20260921/HANDOFF.md)；[C6 README](../sources/ProD/rounds/B699-ProD-C6-20260921/README.md) · [REPORT](../sources/ProD/rounds/B699-ProD-C6-20260921/REPORT.md) · [PROOFS](../sources/ProD/rounds/B699-ProD-C6-20260921/PROOFS.md) · [HANDOFF](../sources/ProD/rounds/B699-ProD-C6-20260921/HANDOFF.md)。

## 与旧 20260920-D 笔记的关系

[旧 D 笔记](../../20260920-pro-results/notes/D.md)登记另一个 ProD 包的 7 阶段（`01`–`07`），主线为 B 尾 i6、`α=3^a`、W10、低支持/有符号分母/固定 `n` 候选；其净账本为 0，最大条件结果是低支持被压出、周期块受限和低质量域每个固定 n 至多一个候选。新包只有 C、C2、C3、C4、C5、C6，不能并入旧 7 阶段，也不能用新 C6 窄支替代旧 D 一般 B 尾结论。C/C2/C3 是条件消费者和失败边界；C4 才在 H025 两尾完整源估值上登记正的局部 frontier，C5/C6 再收窄到 B/RES10 全近侧中心较小低残量支。旧 `wt₃(β),wt₃(γ)≥5`、DEN±、LROW 仍须保留各自假设。

## 共同原输入和术语

除另注外，`k=n-j`、`g=gcd(n,j)`、`N=n-1`；`q_r` 是 `n-r` 去掉完整 2、3、5 幂后的粗块，粗块指数全部保留，不能改成 radical。目标是同一个合法原对 `7≤j≤⌊n/2⌋` 上取得 `p≥7` 同除 `C(n,6)` 与 `C(n,j)`；完整源失败才是 Common6 充分出口，全源通过仍只是 NC6 必要窗口。若 `N|jk`，置 `U=jk/N`，合法区间给 `1<U<n/3`。

主线最窄输入（C、C5、C6 的 B/RES10 支）为
`n≡5130 (mod 9000)`、`α=n/g=3^a`、真实 gcd、`(n−1)jk=10Y²`，完整 q2…q5 源、q5 全近侧，并保留 `C<A4`、低残量 `4608(gq5v)^4d²η³<5n`、两侧真实大缺欠、实际邻行商和未吸收 q5 素数。C2/TC7/BL6 和 C4 的范围更宽，不能把这些窄条件倒灌到它们。

## 六阶段的作者结果

### C：完整源接口、Gap 估值和弱族边界（账本 0）

在一般 i6 合法输入（涉及 `U` 时另需 `N|jk`）给出完整接口：
`q2²|U²(U−1)`、`q3|U(U−1)`、`q4²|U²(U−1)²(j−2)(k−2)`、`q5|U(U−1)(2U−3)`，且 q5 全近侧等价于 `q5|U−1`；`D2` 的缺额是精确平方，不能降为 radical。窄 B/RES10 输入中又接上 `E3,E4,C,L3,r,Gap=A4−Cr` 的完整 2/3/5、`p|g`、`p|q5`、`p|E3/E4` 估值，得到 `Delta_r=E_r/gcd(E_r,Gap)`，说明 Gap 与旧 Delta 是同一约束，不能重复计数。指定 `p` 的商行估值运输不是 NC6 严格下降。

作者构造了任意预定有限深度的 F31 无界弱族和一个真实范数弱输入：它们可保留 α、gcd、尾类、部分 q5 或第一源中的若干条件，却分别缺全局第一源、完整全近侧、实际邻行或低质量；都不是原题反例。F31 的第一源恒失败尤其不能被说成通过无限层。剩余无界量至少有 `n,E,a,g,q5,v,η`、粗支持和完整指数；C 不删主支。

### C2：TC7、BL6 和原阶元素乘方失败（账本 0）

作用域为两尾 `n mod1800∈{1280,1530}` 的同一合法 `(n,j)`，`x∈{β=j/g,γ=k/g}`。TC7 在 `α=3^a`、某 x 的三进制非零位落在两个宽度不超过 h 的区间、`a≥7h` 时，第一源必失败；BL6 在 `α=T^m`、奇 `T≥3`、`m≥6`、某 x 的 T 进制非零块至多两个时同样成立。块宽、位置、g、指数均可无界；失败从同一完整源缺额取同一个 `p≥7`，可回传 i4/i5/i6，不能无条件升到 i7/i8。TC7 的纯 3 幂交集实际上只命中 B 尾；A 尾不能据此新增整类结论。

原阶 `Z[√(−10(n−1))]` 中的普通元素乘方路线被否证，但不排除范数解、较大阶或理想幂。账本仍为 0：未审计历史并集，也未证明一般候选必有 TC7/BL6 表示。奇基数、`h>a/7`、多簇和密集支持开放；`n,E,a,g,q5,v,η` 及支持/指数无界。

### C3：UC80、B5 和原阶理想类等价（账本 0）

在 B 尾 `n≡1530 mod1800`、真实 `α=3^a`、W10 的同一原输入上，B5 完成 `α=T^5`（`T=3^h`）且 β 或 γ 的 T 进制非零块至多两个的全部位置；第一源失败并回传 Common4/5/6。临界位置由真实单位进位 UC80 处理：`α=S²T`、`x=AST+b`、`2Ab=S+c`、`0<c<S`、`b²<ST`、`A−gc=1` 时，第一源成立必须 `h≡2 (mod4)` 且 `d` 奇。它是指定实际恢复形式的门，不是任意两块/所有 RES10 的定理。

另证原阶指定理想类 `P=(3,s−1)` 的阶为 `2a`，并在固定 B 尾、`3^a|n` 时与真实第一源/W10 范数恢复等价；不是第二条独立方程。升极大阶的 `f²>10g` 只是相对屏障。B5、UC80 未认证历史并集净差，`m=4`、非对齐两簇、多块和保留类开放。

### C4：H025 两尾低小部的真实删除（作者账本 `>0`）

范围是完整 H025 两尾：A `n≡1280 mod1800`、B `n≡1530 mod1800`，只固定合法 j 与完整源必要条件，不附加偶数 j、`α=3^a` 或 W10。作者把 q2/q3/q4 接成
`q2*q3*(q4/C)|U(U−1)`，q5 全近侧时再乘 q5，均保留完整幂。

结果：B 的 `b=v2(n−2)=3,4` 全闭，故一般剩 `b≥5`、`n≡3330 mod7200`；A 的 `b=v3(n−2)=2,3` 全闭，故剩 `b≥4`、`n≡3080 mod16200`。在 q5 全近侧支，B 提升为 `b≥8`、`n≡3330 mod57600`，A 提升为 `b≥5`；再与 B/RES10 的 `n≡5130 mod9000` 联立，得到 `n≡176130 mod288000`。这是对真实无界估值分支的同余压缩，不是全尾闭合、绝对界或有限末端。

重要修正：研究中曾把 A/B 小部误当固定 18/8，重放发现 `v3(n−2)`、`v2(n−2)` 可继续增长；最终证明显式保留它们无界。因此不能复述“两个 H025 尾类整类闭合”。q5=1 是加强步骤边界，当前 RES10 已有粗 q5 时才安全。

### C5：全近侧二次特征、D25 三次压缩（作者账本 `>0`）

只作用于 B/RES10 的真实全近侧、`C<A4`、低残量支，并继承 C4。全近侧使每个 `p|q5` 有 `(10/p)=+1`；当前未吸收素数不在 `{13,17,23,61}`，故存在真实 `p≥31`，`q5≥31`。又 `q3≡29 mod40`、q3 内部块特征为正，得到 `(10/E3)=-1`，规范平方自由内容 `d≥7`。

把第2/5源的真实目标支持、两侧缺欠和 `U<n/3` 联立，作者得到非冗余
`n>27000 g^7 d² q2³ q5²`。再由低残量取得 `a≥36`、`b=v2(n−2)≥60`、`E=v5(n−5)≥24`，以及相应唯一 CRT 类；六步整数放大只给检查点 `(a,b,E)≥(4623,6522,3155)`。作者明确没有证明放大算子无限发散，机械继续迭代不构成闭合。C5 删除的是该窄主支中低指数和错误 q5 支持的完整无界分支，不是全题或一般 i6 的有限化。

### C6：q2 平方自由核和中心 Gap 联合压缩（最新账本 `>0`）

仍固定 C5 的 B/RES10 全近侧、中心较小、低残量输入。`sf` 只取奇指数素因子，是平方自由核而非 radical。由同余和完整源，q2、q4、q5 不能为平方，`sigma2=sf(q2)≥7`；q3 非平方已由 C5 特征结论覆盖。完整 q2 估值给
`D25²v²≥q2³ sigma2 q5²`、`v⁴η³≥q2² sigma2²`、`D25 v⁴η²≥q2³ sigma2²q5`，从而
`n>27000g^7d²q2³sigma2q5²`（D25-SF）和新的
`n>7990g^6d²d4q2³sigma2²q5³`（GAP-SF）。这里 `E4=d4 h4²`，`d4=sf(E4)` 可以等于 1；q4 非平方只说明 `sf(E4),sf(A4),sf(C)` 三者至少一支非平凡，不能写成 `d4≥7`。

统一下界为 `n>196028014408870000000`，指数门为 `a≥41,b≥65,E≥27`，精确 CRT 类见 [C6 HANDOFF](../sources/ProD/rounds/B699-ProD-C6-20260921/HANDOFF.md)；六步辅助点为 `(7175,8860,4287)`。仍没有无限发散、n 上界、有限末端或 NC6 严格下降。C6 的实际新增是平方自由核和 GAP-SF 的无界压缩，不是整支闭合。

## 最新前沿、净账本和剩余无界量

按作者各阶段的严格口径：C、C2、C3 为 `frontier reduction=0`（条件消费者未完成全历史并集净差审计）；C4 首次在完整 H025 源系统中登记 `>0`；C5、C6 在嵌套 B/RES10 全近侧中心较小低残量支继续登记 `>0`。当前最强入口是 C6 必要系统，但全局 `R7` 不变，仍未闭合一般 i6、A 尾、B 非全近侧、其他指标或原题。

至少仍无界：`n,a,g`；C6 支中的 `b=v2(n−2),E=v5(n−5),q2,q5,sigma2,d,d4,v,η`；q2–q5 支持/指数；`C,A4,E3,E4` 槽分配、`L4/L6/L7` 邻行高层、未吸收 q5 的下一层；一般支持簇、A 尾、i5/i7/i8 余域和导子 `f`。C5/C6 CRT 三指数只是下界和有限检查点。

## 下一项接续

优先沿 [C6 HANDOFF](../sources/ProD/rounds/B699-ProD-C6-20260921/HANDOFF.md) 做三项之一：

1. 分开处理 q4 非平方的 `sf(E4)>1`、`sf(A4)>1`、`sf(C)>1` 三支，检查能否把额外粗因子接入 `Delta4`、`U−1` 或 `C²|N(U−2)+2`，而不重复计数；
2. 追踪真实 `p≥31|q5` 的下一工作层，联合 `5^E=E3Cℓ6+ηℓ7`、q2 完整平方精度和高层无进位，不能把工作层升级成更大的原 q5 源幂；
3. 证明 CRT 放大算子不存在有限真实候选，避免把六步变成更多步而误称发散。

接续时保留完整第一源、本原范数、真实 gcd、W10、完整 q2–q5 和所有强门的交集；弱族、有限回归、`PASS`、类阶等价和固定 n 的候选数只作证据导航。新包作者没有修改仓库；本次只新增本笔记，未改原件、root README、共享 OVERVIEW，也未提交或推送。
