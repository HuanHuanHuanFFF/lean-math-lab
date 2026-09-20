# B699 Pro A（i=9）2026-09-20 intake 摘要

## 范围、来源与证据等级

本文件只作材料 intake：核读本轮 [PACKAGE_INDEX](../PACKAGE_INDEX.md)、[MEMBERS](../MEMBERS.json) 映射、ProA 四轮报告/证明和独立 ProA-COVER12 包；没有运行作者代码、接收器或 Lean，没有做独立数学验收，也没有修改源包、依赖包或题目级总览。作者材料的等级是“纸面推导 + 确定性整数/有理证书 + 同会话另一实现接收”；不等于 Lean、外部独立全链审稿或原题闭合。

MEMBERS 解析得到两个相关根包：ProA 外层 ZIP `666d9163…25dda`，102,898,855 bytes；独立 ProA-COVER12 ZIP `0a17d569…38415`，390,092 bytes。按 `kind=file` 计，外层 ProA 有 993 个普通成员，独立包有 93 个普通成员（92 个不同 SHA-256）。两包按去重 SHA-256 的交集只有一个值 `e3b0c442…2b855`，对应独立包中两个零字节日志 `build_accept_candidates.log` 与 `build_accept_minors.log`；故不能把独立包说成外层早期阶段的完整副本。

独立包与完整包 stage01 共享“NF59 + SAT96/102 将 13 压到 12”的接口，但证书命名、报告文字、计数和文件字节不同：独立 [REPORT](../sources/ProA-COVER12/REPORT.md) 为 7,830 bytes、[PROOFS](../sources/ProA-COVER12/PROOFS.md) 为 18,312 bytes；完整包早期 [stage01 REPORT](../sources/ProA/original_downloads/stage01_separate_docs/REPORT.md) 为 7,735 bytes、[stage01 PROOFS](../sources/ProA/original_downloads/stage01_separate_docs/PROOFS.md) 为 20,131 bytes。独立包应保留为并行早期证据链，当前接续以完整 ProA 的 [CURRENT_FRONTIER](../sources/ProA/CURRENT_FRONTIER.md)、[SESSION_RESULTS_INDEX](../sources/ProA/SESSION_RESULTS_INDEX.md) 和 stage04 为准；不能把两条接收链合并成一次验收。

## 四轮阶段演进（完整 ProA 链）

上一份 [20260919 A](../../20260919-pro-results/notes/A.md) 的基线是 `COVER13/EDGE13`。本轮完整包的 [STAGE_INDEX](../sources/ProA/STAGE_INDEX.tsv) 给出以下顺序；每一项仍只约束同一个冻结 K152 多项式 G 的可载点不可约因子集合 `C_G`。

1. **NF59 + SAT96/102：`COVER13 → COVER12`。** 对 `D=20,e=10,z≥14,μ=59` 的 Q-不可约 H，必要分类为三个完整仿射空间，唯一缺重行是 `r=3`，全参数真实普通行重数为 `(9,10,10,10,10,10)`；特殊固定成员做大点非取零，余下可载点支支付既有 S3 费用，得到 `middle11`。`q=16,17`、`D=2q,e=q,μ=6q` 的无高度/无 z 下界饱和定理关闭零缺重不可约支，得到 `free18`。stage01 报告记录 NF59 根门 1,757,038、普通 jet 2,185（3 个完整有理空间），SAT96/102 分别 727/1,180 个系统；同一 G 的 2,035 个竖直状态仍有 577 条达到 12 的必要放松记录，其中有正余量，故**没有 EDGE12**。见 [stage01 REPORT](../sources/ProA/original_downloads/stage01_separate_docs/REPORT.md) 与 [stage01 PROOFS](../sources/ProA/original_downloads/stage01_separate_docs/PROOFS.md)。

2. **NF65 + NF71 + SAT108/114/120：`COVER12 → COVER11 + EDGE11`。** `q=11,μ=65` 的 NF65 4,486,820 个根门筛至 4,688 个 jet 系统、5 个仿射空间；切向源线判据把其可载点支映到 S3，账本中类门槛为 `middle12`。`q=12,μ=71` 的 NF71 10,589,056 个根门筛至 10,133 个 jet 系统、5 个空间；特殊固定式/参数点以 `n≥2^62` 非取零排除，余项给 `middle13`。SAT18–20 将免费饱和统一扩至 `q≤20`，其中 q20 唯一相容式为 `ell0^6 ell1^5 ell2^5 ell3^4`，可约且合法点非零，给 `free21`。同一 2,035 状态账本最大 11，497 条记录且无正余量，故 EDGE11。见 [stage02 REPORT](../sources/ProA/original_downloads/stage02_separate_docs/REPORT.md)。

3. **LOC77 + LOC83 + SAT126/132/138/144：`COVER11 → COVER10 + FULL-EDGE10`。** `D=26,e=13,μ=77` 与 `D=28,e=14,μ=83` 的不可约近饱和候选均定位为唯一缺重行 `r=3`，但不能把所有成员硬映射 S3；新 L 类只收 `e≥13`、一单位缺重、`κ≥0`。保留 NF77 的确切不可约边界 `κ=(4,0,1)`，它不是原题反例。SAT21–24 将免费类扩至 `free25`；SAT138 唯一相容乘积为 `ell0^7 ell1^6 ell2^6 ell3^4`。完整账本最大 10，796 条放松记录全部 `E=0`、涉及 93 个状态，且达到 10 时 `E=305−2h−Σv_r=0`、`D(G)=305`、剥去竖线后的**全部**不可约因子均零余量，`h≥97`；因此 `E≥1` 时至多 9，但无条件仍只能写 10。见 [stage03 REPORT](../sources/ProA/original_downloads/stage03_separate_docs/REPORT.md)。

4. **LOC89 + TRACE：`COVER10` 保持，等号分支压缩。** LOC89 的准确范围是任意 Q-不可约 `D=30,e=15,z≥14,μ=89`，只证明缺重行必为 `r=3`；`r=4..8` 的 70,345,214 个完整根门最终留下 38,078 个 169 参数 jet 系统，38,076 个满增广非零子式和 2 个精确低秩无解；`r=3` 尚未分类。TRACE 只在 `E=0` 使用：此时 `Gbar` 可首一写成 `X^h−S(N)X^(h−1)+…`，`deg S≤2`，把同一 Gbar 的完整源根和、普通阶、对角 κ 及冻结 S4/S5 碰撞根接回同一个二次 `S`。796 条最大记录压到 390，93 个等号状态压到 71，等号最低 `h` 从 97 提到 107；仍有通过全部必要预算的 h107 记录，故没有 `COVER9`。见 [stage04 REPORT](../sources/ProA/original_downloads/stage04_separate_docs/REPORT.md)、[stage04 PROOFS](../sources/ProA/original_downloads/stage04_separate_docs/PROOFS.md) 和最终 [CURRENT_FRONTIER](../sources/ProA/CURRENT_FRONTIER.md)。

## 原题回传、未消灭的参数与下一步

证明接口固定为 i=9，`10≤j≤⌊n/2⌋`、`k=n−j`、`J=jk`、`400∣n`；NC9 是否定“同一素数 `p≥11` 同时整除 `C(n,9),C(n,j)`”。冻结入口保留同一 `(n,j)` 和每个完整 `p^a`：若 `F0(j,k)=P(j)P(k)V0(n)G(n,J)≠0`，粗幂/PC 给出的 `n<2^13427592` 与 NC9 的 `n≥2^14000001` 矛盾；若 `F0=0`，三个预因子在合法点非零，故同一个 `G(n,J)=0`，再取其不可约因子进入 `C_G`。这只是原链的必要方向，未把不同输入的窗口拼接，也未恢复 G 的实际系数/因子。

全局前沿仍是 `R7={3,4,5,6,7,8,9}`，本轮只推进 i=9；57 个 α 模板、每个 400 倍数行至多 152 个潜在目标、一般 `D≥7,e≥3,z≥14` 未变。`n,j,g,β`、α 的指数、粗素数支持和每个完整幂指数仍无一般绝对界；NF53、A10/B10 及后续参数族未作全参数原题消元，实际 G 未恢复，未得到有限原题候选或反例，没有 Lean 验收和外部独立全篇审查。仅扩大 SAT 或仅抬高一次中类已被账本反例否定；下一便宜实验是 [stage04 REPORT](../sources/ProA/original_downloads/stage04_separate_docs/REPORT.md) 所列四次双缺重 `B22: D=8,e=4,z≥14,μ=22`，本轮尚未执行。

## 结论取代关系

- 9/19 的 `COVER13/EDGE13` 是本轮起点和冻结历史接口；stage01 的 `COVER12` 已将当前无条件上界压到 12。
- stage02 的 `COVER11 + EDGE11` 取代 stage01 的当前上界；stage03 的 `COVER10 + FULL-EDGE10` 再取代 stage02；stage04 保留 `COVER10`，并以 LOC89/TRACE 给出 `E≥1⇒≤9`、等号仅剩 71 状态且 `h≥107`。
- 独立 ProA-COVER12 仍是同一早期 13→12 闸门的平行证据，不能覆盖或改写完整包的后续 11/10 结论；它的 `COVER12` 已被完整链的 stage02–04 严格加强，但其独立成员映射和证书字节必须保留。

完成回执：只写入本文件；未运行作者代码或 Lean，未修改其他文件，未 git add/commit/push。数学审查与完整 B699 验收仍待具名核验；用户已授权本次材料接收和推送。
