# 临界高度后的旧有限闭包：有界复用审计

审计者 `/root/critical_finite_audit`，Astra/max。开始 2026-09-12 09:59:21 UTC，20 分钟检查点 10:19:21 UTC，无总时限；只写本目录。条件输入是本轮 `CriticalPadeHeight` 候选在 i=28、31、34 的原始 `noCommon` 下给严格 `n<2^15360`。候选本次未由审计者运行 Lean；本报告不增加完整指标、不作新颖性判断。

**结论：旧 M64、55 对有理对数证书和三个终端候选证书在数学层可以保留原字节。新高度替换旧 Matveev 初始指数来源即可继续原数值链。Lean 层仍需新桥接、数据实例及三个完整原题根；不应先重生成 55 对 cubic/CRT 数据。**

本次新发生的是固定文件读取/哈希核对和小规模精确诊断。最终执行 `audit.py` 的诊断计算耗时 0.304 秒；未运行旧全 checker、Lean、CF 搜索、55 对生成或巨大幂族枚举。首次 m=100 有理上界比较失败，后续 m=102 成功；失败点和修订原因保留在 `record.json`。

## 1. 来源与当前字节

旧材料统一位于 `20260909-low-index-structure-b41a5a63/notes/zero-boundary/`。其 `manifest.json` 记录来源基线 `7fd3928656489afe2c80698f0a09d1d933444186`；本轮共享环境验收 `verification/20260911T004440769454Z/evidence.json` 的来源提交为 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`，success=true，26 个源码闭包实际编译。CofactorCover、SmallPrimeLocalization 的当前 SHA 与该闭包 before/after 均相同。

| 固定输入 | 当前 SHA256 | 本次核对 |
|---|---|---|
| M64-certificates.json | `B86CEAE13DF5724C96E3AFAD1A87F46BD9BAF3D154C191E866746156B4518EE7` | 与旧 manifest 相同；三个整数比较重新计算 |
| verification/20260909T090620Z/certificate.json | `F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932` | 与旧 manifest 相同；只抽查 3 个非共振比及 1 个共振证据 |
| verification/20260909T092400Z/certificate.json | `CE979EBD1547BA0E6850BFF24E2B58F8EE8BC4BC7F2C67AC9EC71308A3BE5A68` | 与旧 manifest 相同；读取结构/范围，未重跑全部行 |
| check_log_certificate.py | `25374AD229541F0968C26F64ECBEA21684DADFB6D4E49E29D2500FBA51C5DFFE` | 与旧成功运行输入相同 |
| check_zero_candidates.py | `0B3ED61BC3B98544A488E586EC540D282A99394920AAFCBF269EF6CB7C17CAF3` | 与旧成功运行输入相同 |
| CofactorCover.lean | `2805041E81314DB94F7C7D7837F651A2D64B1C41BF231CA628514D2C18D101C3` | 当前源与共享验收哈希相同 |
| SmallPrimeLocalization.lean | `663B2129A3B18E1AD8003BE7CFEF6792CAF8375E986284B228F098921A8B6477` | 当前源与共享验收哈希相同 |
| 当前 CriticalPadeHeight/Final.lean | `FB5583DB9713DF13CDEB81863E1D1374C50D9B0A9D96E35F1753D89BD3B9CF86` | 本次读取快照；不因此标为 Lean 接受 |

两个生成器也逐项匹配旧 manifest。完整路径、大小、SHA、诊断脚本 SHA 和现有 mathlib 文件在 `record.json`；所有旧日志/证书保持原字节。

## 2. M64 与高度无关，但保留大 n 前提

旧零边界参数是 `(i,t,r,s,λ)=(28,9,9,19,29),(31,10,10,21,32),(34,11,11,23,35)`，其中 `λ=i+1`。这与新的临界高度使用 `r=t−1,s=2t,λ=i` 不同；二者分别作用于同一个原始 noCommon，不应混用常数。

在 CofactorCover 的 `noCommon_small_part_lower_of_certificate` / `noCommon_two_large_small_prime_powers` 中，旧参数满足 `iλ=heightExponent+d` 且 `d=0`。固定算术前提因此成为

`(2 i!)^λ ≤ K·64^(λ(t−1))·H^0 = K·64^(λ(t−1))`。

三个比较都重新通过。因此算术比较不依赖 H，更不依赖反例的上界；仍要满足源定理的 `i(i−1)≤H≤n`。对三项共同大分支可取 H=4097，因最大的 `34·33=1122<4097`。`n≤4096` 保留完整低分支。

输出是真实完整分量：两个不同小素数 p,q<i，令 `e=v_p(C(n,i))`、`f=v_q(C(n,i))`，则 `n≤64p^e`、`n≤64q^f`。这不是任意截断幂，也不是只给平滑部分的总乘积。

已有 SmallPrimeLocalization / SmallPowerIntervals 进一步直接给

`n=A p^(e+v_p(i))+a`，`0≤a<i`，`1≤A`，`A p^v_p(i)≤64`；

另一个素数同理。后面的约化可以放松成 A,B≤64；恢复候选时必须保留更强的 `A≤⌊64/p^v_p(i)⌋` 和 `h>v_p(i)`。例如 i=28 的 2 分量系数至多16、7分量至多9；i=31 的小素数不包含31，但最终原题的大素数仍允许 p=i。

## 3. 新高度到旧指数预算的完整包含关系

令完整定位指数 `x=e+v_p(i)`，另一指数为 y。由 `n>4096>64` 和 `n≤64p^e` 得 e>0；故 x,y≥1。由 `A≥1` 和 `n=A p^x+a` 得 `p^x≤n`。p 为素数，所以 p≥2，因而

`2^x≤p^x≤n<2^15360`，故 `x<15360`，即 `x≤15359`；y 同理。

若两个位置相同，两个互素完整幂之积整除正整数 n−a；同时每个完整幂至少 n/64，所以 `n²≤4096·p^xq^y≤4096n`，与 n>4096 矛盾。于是 a≠b，`A p^x−B q^y=b−a` 非零，绝对差在1..33。重排 p<q 仅交换两侧及差的符号。

旧 log checker 的精确预算是 **M0=2^53=9007199254740992**，不是2^52。旧 Matveev 纸面原始指数 `<2^52` 是这个更宽预算的旧来源。

将 A/B 约分仍得到分子分母≤64的正互素比。共振恰为 `A/B=p^αq^β`，其中 `|α|,|β|≤6`。改写为 `X=x+α`、`Y=y−β` 后，`|X|,|Y|≤15359+6=15365<2^53`。原指数和所有吸收后指数都满足旧预算，没有漏掉负指数或 X=0 分支。

## 4. 旧对数证书究竟依赖什么

证书覆盖11个小素数的55个无序对，以及每对全部2519个正互素比（分子分母1..64），共138545个位置。共同最大使用分母为239055757171886686093，原始严格 n 界为6119827383600299163980800，上取十进制给 `n<10^25`。

取 `τ=log p/log q`、`μ=log(A/B)/log q` 和 `L=log(A/B)+x log p−y log q`。对非共振比，证书给整数 u、v>0 及

`δ≥|vτ−u|`，`distance(vμ,ℤ)−M0δ≥1/100`。

因为 xu−yv 是整数，三角不等式给 `v|xτ−y+μ|≥1/100`。再由 `log q>1/2` 得 `|L|>1/(200v)`。本次重新精确核了 (p,q)=(2,3)、A/B=5、1/5、5/7 三个指定样本；用新15365预算只增加epsilon，不会破坏旧下界。

共振比使用显式不同分支：`gcd(u,v)=1`、`v>M0`、`δ<1/(2M0)`。X≠0 时，`uX−vY≠0`，否则互素性给 v∣X，与0<|X|<v矛盾。由非零整数绝对值≥1得到 `v|Xτ−Y|>1/2`。X=0 则 L≠0 迫使 Y≠0，从而 `|L|≥log q>1/2`，与大 n 的局部上界矛盾。A=B 属于共振分支，不能删掉。

局部上界只用两个正整数 n−a、n−b 的差≤33：`0<|L|≤33/(n−33)<128/n`。可用 `Real.log_le_sub_one_of_pos` 作用于较大值/较小值，再做整数/有理不等式；不必重建微分积分桥。`log q>1/2` 也可从 z=1/3 的一项半对数下界先得 log2≥2/3，再用单调性。

**CF 只用于历史生成器找 u/v**；独立 checker 只核有理误差、距离和互素，不信任收敛分数身份。现路线无 Dujella–Petho、LLL 或 Thue 完整性前提。Matveev 只曾供应初始指数预算；新高度供应该预算后，Matveev 可以从后继依赖图删除。余下仍有初等实数 log 桥，不应说成“完全无对数”。

## 5. 现成 mathlib 夹逼能恢复旧区间，无需新精细尾界

当前共享包在 `D:/CodingProject/Math/.lake/packages/mathlib`，manifest 与直接读取的 `.git/HEAD` 均为 `0df444a360eaa60ab8c11dca51a86af692955474`（v4.33.1）。没有运行 Git 命令。

`Mathlib.Analysis.SpecialFunctions.Log.Deriv` 已有：

- `Real.sum_range_le_log_div`，源码320行：对0≤z<1，`S_m(z)≤(1/2)log((1+z)/(1−z))`。
- `Real.log_div_le_sum_range_add`，342行：同样条件下，`(1/2)log((1+z)/(1−z))≤S_m(z)+z^(2m+1)/(1−z²)`。
- `Real.sum_range_sub_log_div_le`，288行：对应绝对误差界。
- `Real.hasSum_log_sub_log_of_abs_lt_one`，375行：备用级数恒等式；本次最短路线不需要重新推导其尾项。

这里 `S_m(z)=Σ_{k=0}^{m−1}z^(2k+1)/(2k+1)`。**源定理是半对数；应用于旧区间时两边均乘2。**

旧脚本对 m=96 使用 `[2S96,2S96+2z^193/(193(1−z²))]`，比现成同阶上界窄193倍。不能直接声称现成 m=96 API 证明了原区间。

已作精确有限补桥：对 log2 的 z=1/3，以及每个整数a=1..64的 `k=floor(log2 a)`、`P=2^k`、`z=(a−P)/(a+P)`，固定比较

`2S102(z)+2z^205/(1−z²) ≤ 2S96(z)+2z^193/(193(1−z²))`。

65点全部通过。于是 API 在 m=102 给出的上界，加此有限有理比较，直接推出旧 m=96 上界；API 在 m=96 给旧下界。z=0 包括在内，那里是等式。再由 `a=2^k(1+z)/(1−z)` 和 `Real.log_mul`、`Real.log_pow`，组成旧 `log_interval(a,96)` 原区间。全部只涉及有限小整数/有理数，不触及 PNT 或 theta 供应。

按父任务要求先试 m=100；65点中32点失败，记录了准确标签。m=102全部成功，因此未试 m=104。这个比较是精确计算诊断，还需在 Lean 里用有理算术核验。`Deriv.olean` 当前存在，95,064 bytes；`Basic.olean` 存在，286,936 bytes。仅存在不等于本审计运行过导入编译。

Deriv.lean 当前 SHA256 为 `5B466C08783C9649BB79FE4BE57C43440DE4709EF477E6101B148280E3DA8B76`；Basic.lean 为 `42B6ACB11772EB8EBF98216023D1A56558A05DD7D4B8E647604C5A5D47495EE5`。

## 6. 候选与终端证书可复用到哪里

旧候选高度固定为严格 `n<10^25`，完整定位指数 h<84（精确 `2^84>10^25`）。大分支从4097开始，低分支是 `[2i+2,4096]`，每个素数颜色的区间为 `[A p^h,A p^h+i−1]` 并裁剪到大分支。系数上限保留 `A p^v_p(i)≤64`。不同颜色的交集才是候选；同素数的重复区间不算第二个颜色。

| i | 原始颜色区间数 | 完整候选行 | 最大候选 n | 候选并集段数 | topPrime段 / 大除子单行 |
|---|---:|---:|---:|---:|---:|
|28|9750|6768|301823|168|174 / 2735|
|31|13541|9302|688157|250|152 / 5272|
|34|12270|9397|1102281|238|140 / 5370|

这些最大值是完整恢复后的端点，不能脱离 `n<10^25` 前置解释为只扫到最大值便完成。三表所有 unresolved 为空；合计25467候选行、13843个见证。314份素性证书均为 trial，当前读取的最大素数4091；不需要新 Lucas/大素数桥。

`SmallPowerIntervals.exists_small_cofactor_of_localized_power`、`PrimePowerEnumeration.power_interval_list_complete` / `exists_two_colours_in_power_interval_list` 已有实际完整幂和颜色完整性。`LargeDivisorWitness`、`GapBridge` 及 `FiniteCover.checked_goods_cover` 可复用终端声性。需要新增的主要是旧 JSON 到 Lean 数据的保字节来源绑定、区间并集/交集计算证据和三个最终原题消费者。

**不能直接把三行塞进现有 FiniteCoverRow。** 现 `finiteCoverRowCheck` / `coverLayerCheck_sound` 要求 `height∈heightCertificateData`，尾部消费 `common_of_registered_height`；这是阶段A固定表。应提取/新增显式高度前提的消费者，或直接组合上述通用完整性与终端声性，不把候选高度伪装成注册接受数据。

另一个成本点：旧 `IntervalCover.pairCoverCheck` 对原始区间做双重遍历。单项已有9750..13541个区间，直接平铺会产生约0.95..1.83亿个有序区间位置，尚未计每次 cover 的检查成本。应先选一对颜色/一个分块试核，或证明旧checker采用的“每色排序合并→双指针交集→最后取并”桥；不能因 Python 约1秒就预判同样的 Lean 内核费用。

## 7. 最短下一检查与 cubic/CRT 备选

优先下一项是一个小 Lean 试验根：导入现成 Log.Deriv，将 log2、log3、log5 的旧96项上下界用 m=102 上界桥核验，再证明一个非共振距离样本及一个共振样本。这能实测有理算术内核成本，并验证最关键的新接口。距离桥可直接使用“有理区间位于连续两整数之间”的整数序性质，不必引入更重的最近整数库。

若这个试验通过，再分别完成 M64 三实例/实际窗口桥，分块消费旧55对、138545个赋值，最后接旧候选/终端数据。历史完整 log 生成器17.358秒、独立checker13.136秒；候选生成器1.200秒、checker1.269秒。这些是旧 Python 测量，Lean 新桥和全表成本尚未测量。源字节没有改变，数学上无需重生任一旧数值证书。

cubic 是有依据的备选，但需新 width=33 数据或逐块重新证明旧数据可扩宽。泛 `Math.B699.CubicBlockCover.pairCheck_sound` 和 `Math.B699.CubicExponentBlock.blockCheck_sound` 的 w 确为参数；旧成功收据 `verification/huan-prerequisites/cubic-pair-cover.json` 记录这两个根及仅标准三公理。M64 的 A,B≤64 在 `n≥64³+33=262177` 时已给所需两项 `A³,B³≤min(n−a,n−b)`，所以无需另借 i11 的实际 cubic 前提。

本次只核两个旧块及两个新固定位置：

- 旧(2,3)首块 u=45,L=1,b0=18 在 w10 通过，改 w33 后 d=−31、20 两项失败，且该位置连 L=0 都不满足现有余数判据。仅改w并重验整套数据不会自动成功。
- 旧(2,3)最高块 u=14436,L=923,b0=6072 在 w33 仍通过。这只证明该块可复用，不代表中间连续链。
- 新固定(2,3),u=56 的 w33 块可取L=1，低端条件支持 cut83；但这不是到15360的完整覆盖。
- 新固定(29,31),u=12 的同类单块不成立（最大许可L=−1），尽管低端条件也支持cut83。这只否定此固定起点的当前判据，不否定cubic路线。

cut83 很有用，因为 `2^83<10^25`，若所有所需对都压到它，就可再复用旧候选表。最多55对覆盖全部三指标（分别36、45、55对）；现 i11 的六对数据不足。先试首尾/高位个别块和低端断点，不能直接启动55对全族。

现 CrtGrid/Cell 的 shifts 写死21项−10..10，rowCheck/upperValue也写死10；I11CrtStep/Meta、I11TerminalCrt/Pair 的窗口要求 r,s<11，SixPairGrids只列六对。泛底层整数CRT引理可以研究复用，但这些消费者和已验表必须另适配w33及至多55对，不是换H即可。当前解析复用已找到现成API，故没有理由先承诺这笔重生/适配费用。

## 8. 交接边界

最后实测结果是三项M64比较、七项旧哈希、130项log盒比较（m100失败、m102成功）、三个非共振样本、一个共振样本和六个固定cubic样本。完整范围仍由旧冻结checker成功记录支持；本次未重新运行其完整过程。

可复用的新洞见是：原Matveev初界可由临界高度替换，原96项有限log盒又可由现成mathlib的102项宽尾界加固定有理比较恢复。完整目标仍是每个指标的全部合法n,j；新高度尚待主任务验收，旧log/候选桥及最终原题根尚待Lean化。本次新增完整指标0。

下一具体检查：主任务串行队列允许时，只做上述 LogBox 小根和两个距离分支；先取得新桥的实际内核证据，再决定全55对的数据包装方式。
