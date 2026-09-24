# D / i3：R13–R27 成果、边界与最终前沿

## 口径与接收状态

本记录只整理 D-same-origin 原件，不做数学研究、证书复跑、Lean 或外部搜索。新包覆盖 R13–R27 共 15 轮；接收清单记 69 个容器、10,418 条成员、3,734 个去重对象，11,876 条校验通过、不匹配为 0、最终未解析为 0。回执明确未运行代码、Lean 和数学验收，也未 push；仍为作者等级。

所有 D 轮次都只处理同一个原始 `(n,j)` 的规范最小临界两底、真实 `lambda=mu=1`、平衡必要核心，并保留完整 `P,Q`、平方范数、POWER、`n=c_0 2^s`。其他 i3 支不在本批范围。排空必要域只能按逆否回传原题；辅助模数、`ell|V` 和局部对象都不是原题共同见证。

## 全 15 轮表

|轮次|准确新增与前沿变化|仍缺|原件|
|---|---|---|---|
|R13|平方范数给 `(n-3)^2=5 (mod y)`，Pell 素因子支持落在 `1,49 (mod60)`；8 个 BAD-RANK 类被排。|有限 rank 可同时避开，`rho>=12` 未统一排除。|[报告](../objects/d7/d789be411358656479c3834cd2221df26c15ec1cc53d89948f1ea75251944798.md)|
|R14|得 `(t-5)/2<=s<=18t+15`、纯二 `45q<=v2(R)<=144q+35`；排 `17,29,37,49|t`，五个小秩至多一个。|未接 `m|9u`、完整平方与完整 `P/Q`。|[报告](../objects/89/890b78a4f05a8675f0a71c361f09548d6abbba2e6f647277f424b9536268e902.md)|
|R15|采用 Corvaja–Zannier，平衡 BRIDGE4096 与 odd–odd 真实状态绝对但非有效有限。|无可计算高度、异常集或有限末端，不能写成已闭合。|[报告](../objects/a0/a017c876a30df6b14242717831ad90665791339e95bcc8592229169293847144.md)|
|R16|Matveev 只有效化 pure-two：`q<2^53`、`t<2^56`、`12<=rho<=55`、`m<2^60`。|odd–odd 无对应有效界；纯二底部未排空。|[报告](../objects/95/958aa64a67fb5f9ee26bb0c0df04081b1a03ea5b4e2cf97d83c3f6d50ac5fd6e.md)|
|R17|完整排 `rho=28..55` 的 268,435,455 行，排 `m=1,3,9`，加 `P^-(4q+1)` 秩门。|前沿压到 `rho=12..27`，仍缺 POWER 奇部、平方和原题回传。|[报告](../objects/e6/e6c4066969b38f9a44911934df7e08b21ccef5bba0fedd3cbbcd705694979a9a.md)|
|R18|对 `rho=12..27` 的 1,811,911,680 个 pure-two Hensel 候选全排，最大 `v2(R)=64`；冻结分类下 BRIDGE4096/pure-two 闭合。|只闭合 pure-two；odd–odd 仍只有非有效有限性，R7 不变。|[报告](../objects/f6/f60acf4ce89d31116acf7fdbaa720d0ce8c0bcdcd034076b859356ed153efb19.md)|
|R19|odd–odd 只剩两个 2-adic 端点；R19 的有理分配写作 `lambda=a/b`，`b>1`；直接/互补高度 `<=q` 时 `q<2^53`。|剩余分配高度可超多项式，未得一般有效高度。|[报告](../objects/8e/8e0cef1ea61399f1164fc09aa96db962682f1f1b17d1c3026809a84c44520ef5.md)|
|R20|得 `y<2^17A^3`、`alpha^(8q+1)<2^19A^3`，排 `A_odd<=q^2` 与中央壳 `A=2^(rho-1),B=18Ux`。|odd–odd、`q,n` 绝对界和其余 i3 支仍开放。|[报告](../objects/81/81ae335de80f453681607c928d871577cd3477ddf22d6f6c8c537308aa45b69b.md)|
|R21|证明 `J_B<0`、`B/A>16+8/(5sqrt3)>16`，排整个 `J_B>=0`/`B<=16A` 域。|只剩 `C=-J_B>0`，没有 `C,q` 绝对界。|[报告](../objects/e8/e8cb4bb7712013a448abed4ec7768cca202a1999bfdf2ef36e3fdb921fa0a4f7.md)|
|R22|在**反设 `C<=q^2`** 后由相对高度推出 `q<=25`，再排空 864 个末端；同时 `A<2^28(C+80)^7`、`A^15<2^62d^7`，走廊约 `1/3..7/15`。|`C>q^2` 不是全支 q 的绝对界，odd–odd 未闭合。|[报告](../objects/8b/8b344d13748efcc96c83940bf86b596398ab1a5e1064bb033314c91f5e16b6c6.md)|
|R23|范数内在内容与 5-adic 障碍给 `A<2^16M^5`、`A<2^90M^3`、`A^7<2^105d^3`，并排 `0<C<=q^3`（9697 末端全空）。|`p|A/B` 不自动传到 `Pi/Delta`；仍无一般 q、C、n 界。|[报告](../objects/32/32de2d0e2505bfccee5ed263a088d0e224e85013dd043a5bc01f967ea87367c6.md) · [前沿](../objects/e8/e8c061dd98323354b30a2af73ed21cad21cb981db5ac5a52bdd2393f6b627fac.json)|
|R24|得 `F-L(C)>0`、`V>4M^3/A`、`C<2^160(V+N0)^7`、`A^47<2^1101d^20`；`0<V<=q^2` 全空，q 尾至 276。|这是 V 的相对高度，V、C、q、n 仍无一般绝对界。|[报告](../objects/a6/a6ea876ef8ec35abd2cc1356b5a95901dfb0c8b68912e6690aa7dd46ddf0bd04.md) · [前沿](../objects/02/026b926c7b1864b0ef8b5a924ac8b51d50fb7b02300e7ef79ba7cc0825291d7e.json)|
|R25|完整分类 `v2(V)={0,4,6}`、`v3,v5(V)={0,2,4,5}`，故 `V_235|48,600,000`；正 235-smooth V 与 `16*7^e,3888*7^e` 两族全排；真实 Theta 范数含交叉项。|一般 V 仍须有 `ell>=7`，没有绝对高度，20/47 走廊不变。|[报告](../objects/ce/ced9f5c0167cfb818ebb765a5dd5a5e0ef064d2066a2c7240e4e7b144cf7c480.md) · [前沿](../objects/f2/f234274f9e4ba5559011eb8d4adda1c603e163a05e0c2c80a7fbf2add5e54e2a.json)|
|R26|保留同一个原 `s` 的 `(V,n)` 相位，`7|V=>c_0=1,s=1 (mod3)`；排全部 `V/V_235=7^e,e>=1`，相对 R25 新 46 族，故有 `ell>=11`。|`T_V`、V、q,n、原 P/Q 底与指数仍无界；局部通过不等于整数恢复。|[报告](../objects/92/926aa8723a29fef69433dffad2fd5a8a4c8f3a946d42352627b741ca62f77808.md) · [前沿](../objects/4b/4b527852ed1aa8b824e0d3fea67d2bb5bbe91ef92339d1476e0096686da2954c.json)|
|R27|接回旧 Round10 规范源分配的原 `lambda=1`（不同于 R19 的有理 `lambda=a/b`）与完整源幂：`c_0=1=>s=0 (mod6)`，遂排所有 `7|V` 混合域；又得 `v3(V)=2 iff 3|A`、`v5(V)=0/4/5` 及 5|V 三类相位，`V_235|1,800,000`（18 个小部值）。|`R=V/V_235>1` 的底与指数、q,n,C,V 无有效界；R7 不变。|[报告](../objects/1a/1a1f310b7ce76bf772ca9c654e249724394a86836a779c1a529cb1a898e8ae1a.md) · [前沿](../objects/76/763252b0613559943a649de2dc16fb0a3cd731cb808495b0f1c269e2d9c690b3.json)|

## R23–R27 的合并结论

R23–R24 的 `Pi,V,Theta` 是同一核心中的整数/二次域构造；R23 的范数内在内容不是原源幂整除，R24 的 `Theta=0` 多项式不是一般 `Norm(Theta)`。R25 才给出含交叉项的真实范数及固定 gcd；R26 保留同一个 `c_0,s`；R27 接回旧 `lambda=1` 与完整 `P,Q`。最终只是粗余部与 Theta 范数互素，不能说粗因子进入原二项式。

可登记的作者级关闭域是：R18 pure-two BRIDGE4096；R21 非负 `J_B`；R22 `C<=q^2`；R23 `C<=q^3`；R24 `V<=q^2`；R25 正 235-smooth V 与两条 7 尾族；R26 全部 7-primary 余部；R27 全部 `7|V` 混合域及明确的 3/5 相位违背域。R15 的 CZ 仍是非有效有限性，R16/R19 的 Matveev 仍是外部黑箱；均未独立复核。全局 `R7={3,4,5,6,7,8,9}` 未减少。

最终 balanced odd–odd 剩余可写成：`V_235|1,800,000`，粗余部 `R>1` 的素因子至少 11，且 `gcd(R,Norm(Theta))=1`；但 `R` 的底素数/指数、`q,n,s,C,V,A,B,d,y` 与原 `P,Q` 底/完整指数均无一般有效绝对界。R15 的“有限”不是“已空”，也不声称存在无限真实状态。

## 失败、勘误、缺项与 Round12 hash 校正

- R17 `rho=27` 临时分片未进冻结 ZIP；未交付 scratch、完整聊天和未来 `full_campaign_replay.log` 不可补造。
- `p|A/B/P/Q` 仍不自动传到 `Pi/Delta/NormTheta`；局部 q,V 通过对象没有共同整数恢复、原完整 P/Q 或合法 `(n,j)`。
- **Hash 勘误：**冻结 `OVERVIEW-2026-09-22.md.txt` 把 `b02babc426615c01e8c43c55064a2b660eeafdc9d26a801bf88e87c5452d2afd` 写作 Round12 包。9/22 intake 的 `TOTAL_SHA256SUMS.txt` 与 `D-i3.md` 说明：它实际是外层 `B699-D-i3-20260922-session-complete-evidence.zip`；真正的独立 Round12 evidence ZIP 是 `fc5ccf910c050916843b415be131718b369223c7b9ab7773bce4e98d2ad0189c`。Round12 `REPORT/PROOFS/HANDOFF` 原件 hash 分别为 `4ac96fdb...`、`f961e1c8...`、`6109ffd7...`，不能把外层 hash 继续标成 Round12 原包。

已有 9/22 依赖入口：[`D-i3 摘要`](../../20260922-pro-results/notes/D-i3.md)、[`TOTAL_SHA256SUMS`](../../20260922-pro-results/sources/D-i3/meta/TOTAL_SHA256SUMS.txt)、[`Round12 REPORT`](../../20260922-pro-results/sources/D-i3/round12/REPORT.md)、[`PROOFS`](../../20260922-pro-results/sources/D-i3/round12/PROOFS.md)、[`HANDOFF`](../../20260922-pro-results/sources/D-i3/round12/HANDOFF.md)。

## 下一项明确检查

停止扩展已排空的 7-primary 表。应把粗余部 `R=V/V_235` 的完整素数幂与同一原 `n=c_0 2^s`、完整 `P,Q`、旧 `lambda=1` 真正联立，争取给 R 一个有效高度或直接矛盾；成功应消灭含无界底/指数的 odd–odd 域。优先保留 R27 的 `c_0=3=>v3(V)=2`、`5|V` 三类 q,s 相位和 `7∤V`。不要把 `q=30,s=2400,V=867063118729` 局部对象当反例，也不要把 R 的素因子塞入与之互素的 Theta 范数。
