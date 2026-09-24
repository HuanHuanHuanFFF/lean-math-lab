# B699 Pro A（i=9）2026-09-22 intake 摘要

## 1. 接收范围、来源与证据等级

本文件只整理新 intake 的 ProA 来源范围、阶段取代关系和作者报告的证据边界；没有运行作者代码、证书、clean replay 或 Lean，没有做独立数学接受，也没有修改题目级 README/OVERVIEW 或其他来源文件。材料中的程序、`PASS`、收据和作者结论均按来源数据读取，不作为本次授权或研究续作指令。

新包的导航是 [PACKAGE_INDEX](../PACKAGE_INDEX.md) 和经解析的 [MEMBERS](../MEMBERS.json)。`MEMBERS` 的 ProA 根包为 `e01073b4e3c400107ca0682c4d3b0390c1b5847575b31736fc8f0d65e9769a04`，原始包大小 4,809,680 bytes，696 个成员，其中 690 个普通文件。全包清单统计为 39 个 ZIP 容器、2,558 条普通成员记录、2,234 个新普通文件、82,202,498 bytes。

ProA 的直接入口为 [README](../sources/ProA/README.md)、[CURRENT_FRONTIER](../sources/ProA/CURRENT_FRONTIER.md)、[SESSION_TIMELINE](../sources/ProA/SESSION_TIMELINE.md)、[SUPERSESSION_NOTES](../sources/ProA/SUPERSESSION_NOTES.md) 和 [EVIDENCE_LEVEL](../sources/ProA/EVIDENCE_LEVEL.md)。包内冻结的接续概览为 [OVERVIEW-2026-09-21(1).md](../sources/ProA/inputs/OVERVIEW-2026-09-21%281%29.md)；作者给出的等级是“纸面数学 + 确定性精确有限证书 + 同一研究会话内的交叉实现/clean replay，且依赖明确冻结输入”。它不升级为 Lean/kernel 验证、外部独立全链审稿、实际 `G` 恢复、原题反例或完整 B699 证明。

## 2. 当前 ProA 前沿及同一 G 的原输入回传

冻结的是同一个 K152 构造中的非零整数多项式 `G(N,X)`，权重为 `wt(N)=1, wt(X)=2`，`deg_w G≤305`、`deg_X G≤152`。`C_G` 表示所有能在某个合法 400 倍数 NC9 输入处取零的不同本原 `Q[N,X]` 不可约因子集合；不同因子可以对应不同输入，但必须都整除这一个固定 `G`。作者当前报告为

`|C_G|≤9`。

等号分支的最新必要结论是

`|C_G|=9 ⇒ E=0, D(G)=305, h=deg_X G≥133, V=Σ_{r=3}^8 v_r=305−2h≤39`，

并且同一 G 的九因子必要资源状态已从上一轮的 98 个压到 6 个；最终报告给出的 `h` 集合为 `{133,137,143,147,149}`。这 6 个是同一固定 G 下的必要账本状态，不是实际不可约因子、实际 `(n,j)` 输入、九个候选 `j` 或 B699 反例。[当前前沿](../sources/ProA/CURRENT_FRONTIER.md)明确写明 COVER8 尚未证明。

原题回传仍沿用冻结接口：`10≤j≤⌊n/2⌋`，`k=n−j`，`J=jk`，`400∣n`。NC9 表示**不存在**同一个 `p≥11` 同时整除 `C(n,9)` 与 `C(n,j)`；这里 `9≤p` 对素数等价于 `p≥11`。同一 `(n,j)`、完整粗素数幂及其源分配在两点值分支中保持不变。若冻结 `F0(j,k)=P(j)P(k)V0(n)G(n,J)` 实际非零，作者沿用完整幂整除和 PC 得 `n^93<2^1248766000`，即 `n<2^13427592`，与冻结 NC9 入口 `n≥2^14000001` 矛盾；若 `F0=0`，合法范围保证预因子非零，于是仍回到同一个 `G(n,J)=0`。这是必要方向的作者接口，不是本轮对原题的独立接受，也没有从资源状态反推 NC9。

全题前沿没有改变：`R7={3,4,5,6,7,8,9}`；ProA 只推进 `i=9`；57 个 α 模板、每个 `400∣n` 行至多 152 个潜在代数目标、一般载点因子最低 `D≥7,e≥3,z≥14` 均保留。实际 `G` 的系数和因子、`n,j,g,β`、α 指数、粗素数支持及所有完整指数仍无一般绝对界；没有完整 i 指标闭合，也没有原题精确反例。

## 3. 六阶段时间线、声明与纠正

### 01 — B22 / H117：局部分类取代旧的 107 门槛

见 [REPORT](../sources/ProA/rounds/01_B22_H117/REPORT.md)、[PROOFS](../sources/ProA/rounds/01_B22_H117/PROOFS.md) 和 [FAILURE_BOUNDARIES](../sources/ProA/rounds/01_B22_H117/FAILURE_BOUNDARIES.md)。对象是有理不可约 `D=8,e=4,μ=22,z≥14` 的因子。180 个源重数配置中 91 个强制含源直线；其余 89 个归并为 41 个精确仿射空间，3 个空间实际 `μ≥23`，剩余 38 个由 25 个固定小系数式、2 个整族可约一参数空间、6 个二参数平面和 5 个一参数族组成。固定式与若干取消参数由冻结小系数消费者退出；可继续承载同一合法 NC9 点的 B22 因子必须满足 `z∈{19,20}`、`Δ7=Δ8=0`、`κ4+κ6≥1`，并保留真实缺重位置。

同一 G 账本由全部原始源阶生成 2,035 个竖直状态，其中 1,540 个 `E=0`；仍允许 10 个因子的放松有最多 60 个状态，弱 TRACE0 后为 54 个，最低 `h=117`。因此本阶段只是 `|C_G|=10⇒h≥117`，固定覆盖仍为 COVER10。明确障碍是 `h=117` 的 `4 S5+2 B5+1 C+3 F=10` 放松；它不表示存在实际曲线或实际 G 因子。

必须保留的失败纠正：`H*=ell0 ell1 ell2 ell4+W(3N²−23N−X+44)` 只反驳不含 NC 可载性假设的几何命题，`H*∣G` 未证，不能升级为原题反例；一参数族的特殊取消点不能套用一般 κ。早期只缩放消元后缀的实现已拒绝，模首一仿射无解也未被当作有理无解。

### 02 — TRACE / B28 / H127：真实位置费用与完整 TRACE

见 [REPORT](../sources/ProA/rounds/02_TRACE_B28_H127/REPORT.md)、[PROOFS](../sources/ProA/rounds/02_TRACE_B28_H127/PROOFS.md) 和 [HANDOFF](../sources/ProA/rounds/02_TRACE_B28_H127/HANDOFF.md)。本轮仍是 COVER10，但把等号门槛提高为 `|C_G|=10⇒h≥127`；完整重建得到 2,035 状态、1,540 个 E0，必要十分量状态由 B22 精确位置/旧 TRACE 交集 49，再经 GAMMA5、TAIL567 得 37。新无高度门为：

- `D=10,e=5,μ=28,z≥14` 时，`Δ3+Δ4+Δ7+κ4≥1`（GAMMA5）；
- `q∈{5,6,7}, D=2q,e=q,μ=6q−2,z≥14` 时，`Δ3+Δ4+Δ5+Δ6+κ4+κ6≥1`（TAIL567）。

关键纠正是 κ=0 的中心在切线上的限制阶至少 `2m`，不能只计普通 `m`；账本必须保留 B22 的真实 `r6` 缺重和额外余根，不能把费用支配假装成实际 S3 签名。h127 的精确必要障碍仍是 `3 S5+7 C`，费用 124≤127；根和及第二幂和可同来自低次数多项式，但对应插值式在真实源点 `H0_N(3,2)≠0`，没有完整源 jet，因此既不是实际 G 也不是反例。q7 的早期超时输出不承担排空结论；最终收据只接受修正后的完整门。

### 03 — KAPPA-GENUS / COVER9：当前无条件固定代数覆盖

见 [REPORT](../sources/ProA/rounds/03_KAPPA_GENUS_COVER9/REPORT.md)、[PROOFS](../sources/ProA/rounds/03_KAPPA_GENUS_COVER9/PROOFS.md) 和 [HANDOFF](../sources/ProA/rounds/03_KAPPA_GENUS_COVER9/HANDOFF.md)。本阶段首次得到同一固定 G 的 `|C_G|≤9`：1,540 个 E0 状态排空十分量，495 个 `E≥1` 状态沿用既有至多 9 结论。新门为 KNEAR16–24、KSAT25–28 和 TRIPLE45；其中 KSAT25–28 只排除 `q=25..28` 饱和且三处 κ 全零的不可约类，**不是**完整 SAT25..28，κ>0 类必须留在账本。几何接收包含 20,457 个满列子式（最大 677 阶），特殊类 44,112 个叶中 12,517 个由同一 G TRACE 拒绝。

本阶段没有 EDGE9。旧的 `h≥127,V≤51,37 状态` 只属于十分量等号，不能转用于九分量；明确的九分量必要资源模型为 `h=152,v=(1,0,0,0,0,0)`，含 `S5+L+2·double5+double_ge8+4·free_degree_ge29`，总次数 151≤152。该模型不是实际多项式或原题反例，不能写成 COVER8。

### 04 — KSAT29 / nine-ledger：几何成立，账本计数后被取代

见 [REPORT](../sources/ProA/rounds/04_KSAT29_NINELEDGER/REPORT.md)、[PROOFS](../sources/ProA/rounds/04_KSAT29_NINELEDGER/PROOFS.md) 和 [FAILURE_BOUNDARIES](../sources/ProA/rounds/04_KSAT29_NINELEDGER/FAILURE_BOUNDARIES.md)。新门是 `D=58,e=29,μ=174,z≥14` 的不可约 H 必有 `κ4+κ6+κ8≥1`。153 个根门终端、730 列 jet 系统在两素数上满秩；因此 q29 饱和三 κ 全零类排空，并删除上一轮 h152 的九分量资源模型。

报告当时记为 `130 E0+2 E>0`，且做了“删除全部 double5 仍有 122+2”的路线价值审计。但下一阶段查明 Bellman DP 在 q29 获得 κ 费用后仍以 `29*n` 初始化，偷偷保留了不存在的零成本 q29，故这两个计数是安全但过度放松的历史值，**不再是当前计数**；KSAT29 几何定理及 COVER9 不受影响。

### 05 — KSAT30 / EDGE9：修正 DP 后得到 E0-only 等号分支

见 [REPORT](../sources/ProA/rounds/05_KSAT30_EDGE9/REPORT.md)、[PROOFS](../sources/ProA/rounds/05_KSAT30_EDGE9/PROOFS.md) 和 [HANDOFF](../sources/ProA/rounds/05_KSAT30_EDGE9/HANDOFF.md)。新门是 `D=60,e=30,μ=180,z≥14` 的不可约 H 必有 `κ4+κ6+κ8≥1`；185 个完整终端系统、785 列，在模 32749、32719 上全部满列秩。修正后的 q29-only 计数为 `111 E0+1 E>0`，加入 KSAT30 后为 `98 E0+0 E>0`。

因此新增并取代旧状态表的准确结论是 EDGE9：`|C_G|=9⇒E=0`，从而 `D(G)=305`，去掉六条源竖线后的每个非恒定因子满足 `D=2e`，且 `h≥107,V≤91`。这仍不是 COVER8。正余量分支已用至少一个 `E>0` 因子单独枚举，不能使用 E0 的 TRACE；q31 partial 不承担结论。

### 06 — KSAT²(25–30) 与 KSAT31–36 / H133：最终 98→6

见 [REPORT](../sources/ProA/rounds/06_KSAT2_EDGE9_H133/REPORT.md)、[PROOFS](../sources/ProA/rounds/06_KSAT2_EDGE9_H133/PROOFS.md)、[FAILURE_BOUNDARIES](../sources/ProA/rounds/06_KSAT2_EDGE9_H133/FAILURE_BOUNDARIES.md) 和 [HANDOFF](../sources/ProA/rounds/06_KSAT2_EDGE9_H133/HANDOFF.md)。新门分两段：

- `25≤q≤30`、`D=2q,e=q,μ=6q,z≥14` 的不可约饱和 H 满足 `κ4+κ6+κ8≥2`；
- `31≤q≤36` 的同类 H 满足 `κ4+κ6+κ8≥1`。

KSAT² 的 q25..30 配置数分别为 `414,502,603,675,870,1033`，共 4,097 个；KSAT31..36 分别为 `206,245,269,293,350,394`，共 1,757 个。合计 5,854 个完整 jet 系统、11,708 次双素数满秩检查；来源只把满秩用于排除相应整数子式，不把有限域仿射无解当作有理无解。账本对上一轮 98 个 E0 状态逐一重建 527 条真实 B22/S/L/TRACE 终端查询，最终只剩 6 个必要状态。

初版 κ=1 根门在扣除唯一 κ 之前把指定源线负载硬限为 `2q`，可能误删 `2q+1`；当前包使用先允许 `2q+1`、再扣 1 的修正版。KSAT² 只到 q30，KSAT31–36 只收一单位 κ，不能推广成所有高次门。即使把 `q≥37` 免费类无限抬高，仍有三个低/中次数平台状态；下一判别应优先测试 `KSAT²31` 或针对 6 状态做更高根矩/TRACE 一致性。

## 4. 剩余未知、失败/未试与下一判别

仍未知的是实际 `G` 的系数和不可约分解、6 个资源状态能否由真实曲线实现、原输入的全部无界参数以及 57 个 α 模板中是否存在原题净差。B22 的 6 个二参数平面和 5 个一参数族只是候选系数空间，参数没有统一绝对界；B22 的 `z≥19`、κ 门只适用于 `D=8,e=4,μ=22`，不能升级一般 `z` 门。KSAT29 的 `130+2`、q31 partial、旧 h127/37 表和九分量资源模型均不能覆盖当前最终状态。

直接可判别的下一步是：先用 [06 HANDOFF](../sources/ProA/rounds/06_KSAT2_EDGE9_H133/HANDOFF.md) 指定的 `KSAT²31` 试验或 h133 最低状态的第三系数/高阶 TRACE，完成后立即回同一 G 的 6 状态账本核算净删除数；若没有删除，再决定是否转向共同 TRACE，而不要把一个新 q 门的局部证书写成 COVER8。所有上述方向都仍需新的来源证据和具名数学核验。

## 5. 接收结论

当前采用的取代链为：`COVER10`（H117）→ `COVER10`（H127）→ `COVER9` → KSAT29 历史 `130+2`（已被纠正）→ KSAT29-only `111+1` → KSAT30 后 `98+0` / EDGE9 → KSAT² 与 KSAT31–36 后 `6` 个必要状态。最终可安全转述的是同一固定 G 的 `|C_G|≤9` 及等号条件 `E=0,D(G)=305,h≥133,V≤39`；不能转述为 COVER8、完整 B699、原题候选有限化、实际 G 恢复或 Lean 接受。

本文件完成后，来源包和题目级文件均未改动；本次只新增本 intake 的 `notes/A.md`，未执行作者程序、未 git add/commit/push。后续数学审查、证书接受和全题结论仍待主线程安排具名核验。
