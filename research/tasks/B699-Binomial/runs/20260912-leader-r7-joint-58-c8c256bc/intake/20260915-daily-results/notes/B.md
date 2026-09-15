# 2026-09-15 B 路原件整理：六包作者报告链

本笔记是 Pro B 原件的行政整理和作者报告归纳，不是数学核验。六个原包的 18 个根级报告位置按 `REPORT`、`HANDOFF` 和来源记录归档，其中第二个邻数包使用 `SOURCE_ADOPTION.json` 而非 Markdown 来源记录；另按任务要求读取每包的 `notes/FAILURES.md`。该包的 `SOURCE_ADOPTION.md` 在原包中缺失，已保留该缺口并采用它实际提供的 `SOURCE_ADOPTION.json`、`SOURCES.md`。

## 接收边界与原包

原包仍在 `E:\Download\`，本次只用 .NET `ZipArchive` 直接读取成员，不解包、不运行包内代码或证书、不启动 Lean。先列成员路径和未压缩尺寸，再读取根报告；未把 ZIP 写进仓库。以下哈希是当前收到的 ZIP 原字节哈希，成员数和总未压缩字节是只读目录盘点。

|顺序|原包（来源入口）|ZIP 字节 / SHA-256|成员数 / 未压缩总字节|根来源文件|
|---|---|---:|---:|---|
|1|`B699-R7-ProB-uniform-digital-height-and-four-period-evidence-20260915.zip`|2,368,066 / `f16e3204d353c441edb2ed1ef31d6b32f27841b6050e80d668c0afad973b201f`|40 / 2,418,364|`REPORT`、`HANDOFF`、`SOURCE_ADOPTION.md`、`notes/FAILURES`|
|2|`B699-R7-ProB-signed-complexity-and-single-run-evidence-20260915.zip`|2,428,011 / `96832203bcb6b2cb99d7a698dad6898ebb9d472643f1b497674f64d301c2b611`|49 / 2,492,878|同上|
|3|`B699-R7-ProB-periodic-block-and-double-run-closure-evidence-20260915.zip`|2,474,632 / `2359c1e2041400eec6f24d472b0a386e87ff52e47885f8cd224b3303424e7126`|45 / 2,515,562|同上|
|4|`B699-R7-ProB-two-neighbor-square-and-primitive-block-evidence-20260915.zip`|2,528,622 / `1d8e25b51d4c399f37a67c4a09ffc2828cf501619a69b7a33a382dbd979f06a1`|42 / 2,598,844|`SOURCE_ADOPTION.md` 缺失；有 `SOURCE_ADOPTION.json`、`SOURCES.md`|
|5|`B699-R7-ProB-normalized-three-neighbor-and-square-rows-evidence-20260915.zip`|2,584,177 / `9f2c94c45cb384c04784b212fbbdcfa34c0e6960207674c838d9b9bc22f6f137`|48 / 2,662,441|`REPORT`、`HANDOFF`、`SOURCE_ADOPTION.md`、`notes/FAILURES`|
|6|`B699-R7-ProB-prime-radix-two-digit-row-evidence-20260915.zip`|2,648,935 / `07e8d497b9c1fc50562a8dcab4fb8253b1b5ff430796dbb6790b238753fbbe29`|41 / 2,775,508|`REPORT`、`HANDOFF`、`SOURCE_ADOPTION.md`、`notes/FAILURES`|

交叉输入的实际读取范围是六包当前根 `REPORT.md`、`HANDOFF.md`、可用的来源声明和 `notes/FAILURES.md`，以及用于确认采用关系的 `SOURCE_MAP` 或等价来源清单。为追踪相邻包的继承，读取了第二包的 `sources/REPORT.md`、`sources/HANDOFF.md`，第五包的 `sources/previous-text/REPORT.md`、`HANDOFF.md`，以及第六包所列的 `sources/digital-PROOFS.md`、`previous-PROOFS.md`、`previous-HANDOFF.md` 入口；这些只用于恢复来源链，未作为本轮独立数学审读。没有读取或运行代码、输出 JSON、回放日志，也没有把作者的 PASS 文本提升为仓库接受。

六包的采用链不是按用户列出的文件顺序臆定，而是由各包来源声明和交接中的“唯一采用原件”恢复为：

`uniform-digital-height-and-four-period → signed-complexity-and-single-run → periodic-block-and-double-run-closure → two-neighbor-square-and-primitive-block → normalized-three-neighbor-and-square-rows → prime-radix-two-digit-row`。

## 统一题面和证据边界

这些 Pro B 报告都围绕 `i=3` 的 NC3 反设整理：目标仍是同一个奇素数 `p≥3` 同时整除 `C(n,3)` 与 `C(n,j)`；因此原题端点 `p=i` 在这里就是 `p=3`，不能从记述中删掉。报告保留完整素数幂窗口，只在明确的孤立一次 `3` 被 `3!` 取消处作相应归一化。`n−1|3j(j−1)`、`n−2|6j(j−1)(j−2)` 等是必要投影，不能当成 NC3 的等价定义；窗口通过后仍可能有共同素数。某个进制素数或辅助模数也不自动是原题见证素数。

六包共同的证据状态是：作者纸面推导、有限范围的精确整数/模证书，以及同一作者编写的第二实现或交叉程序。没有一包给出 Lean 内核验收、独立研究者复核或人类同行审稿。作者报告称没有新增 BFT、Padé、BEG、Matveev、对数形式或素数分布等数论出版依赖；包内对 mathlib、Eisenstein、DFT 等网页的定向查阅仅作表述背景，不能记为出版认证。以下“闭合”均应读作作者声称的适用范围内闭合，接受等级仍待另行核验。

## 1. 统一数字高度与四周期族

材料：[REPORT](../materials/B-uniform-digital-height-and-four-period/REPORT.md) · [HANDOFF](../materials/B-uniform-digital-height-and-four-period/HANDOFF.md) · [SOURCE_ADOPTION](../materials/B-uniform-digital-height-and-four-period/SOURCE_ADOPTION.md) · [FAILURES](../materials/B-uniform-digital-height-and-four-period/notes/FAILURES.md)

**来源和继承。** 这是六包链的起点，唯一新外层输入是 `B699-ABD-next-round-20260915-v1.zip`；其 B 原件是此前的数字复杂度/循环族包。作者明确没有采用本轮 A/D 数学内容，旧包文本和 ZIP 作为 `sources/previous` 保留。后续 signed 包以此当前 ZIP 的 `f16e3204…` 原字节为唯一数学接续。

**目标、范围和新增。** 作者报告给出 `n=b^v`、`w_b(j)` 为非零数字数时的统一必要高度

`v < 32·64^{w_b(j)}`，并声称同样可作用于 `n−j`。所以任意预先固定的数字复杂度给出有限指数域，但 `w_b(j)` 自身仍无界；二进制 `w=4` 时的粗界 `v<2^29` 也没有被枚举或宣布排空。另对 `deg f≤k` 的有理多项式，同时满足两个完整窗口的模板做了六种非法退化分类。其新增完整消费者是 `k=2^r (r≥3), k|x` 的四周期族（报告给出具体 `n=x^k`、`j` 公式），以及 `x=2^t,k=8,t=198+3696u` 的高复杂度展示族。作者将前者报告为原题闭合；后者用于说明第一窗口可长期成立而第二窗口失败，并非 NC3 见证。

**证据状态和未控量。** 纸面证明、63 个底部项等有限证书和作者另一实现均在包内；无 Lean、独立验收或人审。一般二幂行允许数字复杂度增长，一般奇部、规范缺陷、`min C_s`、`F` 和全体 i3 仍无界，R7 仍是 `{3,4,5,6,7,8,9}`。本包消灭的是固定数字复杂度下的无界指数，以及一个复杂度增长的特定四周期族，不是一般 i3 的绝对有限性。

**失败和纠正。** 第二实现曾把整数起点误作普通整数而在 `evaluate()/8` 后得到 float；改用 `Fraction` 后重做。CRT 发现阶段曾用周期 924，强检查拒绝后统一改为完整周期 3696。两者是实现/参数修正，不是真实反例。报告保留的 `(56,11)` 只说明两个弱窗口可以同时成立而真实 gcd 含共同素数 3，绝不是 NC3 反例；第一窗口族也不能被写成“全题弱解”。

## 2. 有符号复杂度、连续段与单段闭合

材料：[REPORT](../materials/B-signed-complexity-and-single-run/REPORT.md) · [HANDOFF](../materials/B-signed-complexity-and-single-run/HANDOFF.md) · [SOURCE_ADOPTION](../materials/B-signed-complexity-and-single-run/SOURCE_ADOPTION.md) · [FAILURES](../materials/B-signed-complexity-and-single-run/notes/FAILURES.md)

**来源和继承。** `SOURCE_ADOPTION` 明确采用上一个 uniform 包，并在此基础上把 `A=1`、非负系数限制移除。后续 periodic 包又把本包作为唯一冻结数学接续；其根报告、Handoff 和来源哈希均指向本包。

**目标、范围和新增。** 作者声称对任意正缩放 `A`、任意有符号 `f`、`deg f≤k` 的两个多项式窗口，仍只有六个非法退化模板；由有符号幂项组成的 `r` 个连续 1 段得到 `v<32·4096^r`，一般 `m2^v` 得到含奇部长度的相对高度。`r` 和奇部仍可无界。最具体的全域消费者是所有二幂行的单连续 1 段 `j=2^a(2^b−1)`；作者先把第一窗口精确分类，再用第二窗口排除平方族和三个小例。报告还给出 `n=2x^40,j=x^32−x^4` 的带符号消费者，作者注明该展示违反第一窗口，因而不是 Π/NC3 弱解。

**证据状态和未控量。** 纸面分类、有限枚举/证书和作者第二实现；没有 Lean、独立复核、人审或新的出版依赖。一般段数 `r`、奇部、缺陷、`F`、`min C_s`、二段及以上的完整分类均未控制，R7 不变。其全题贡献是把“固定非零位”推广到“固定连续段数”的有效高度并排空单段族，未给出所有二幂行闭合。

**失败和纠正。** 初拟单段分类漏掉 `(n,j)=(64,15)`，探针在 `(v,a,b)=(6,0,4)` 暴露后补入；原因是把 `x|8` 错写成 `x=8`。旧的 Eisenstein 不可约路线不适用于一般 `A>1`，新证明绕开它。`A=4,k=2,f=X+1/2` 等例子只说明第一窗口不足；带符号混合展示同样不是原题反例。双窗口不是 NC3 等价式，有限 `v≤96` 或 `v≤180` 回归也不是无限证明。

## 3. 任意重复字块、近周期带与双重复单段

材料：[REPORT](../materials/B-periodic-block-and-double-run-closure/REPORT.md) · [HANDOFF](../materials/B-periodic-block-and-double-run-closure/HANDOFF.md) · [SOURCE_ADOPTION](../materials/B-periodic-block-and-double-run-closure/SOURCE_ADOPTION.md) · [FAILURES](../materials/B-periodic-block-and-double-run-closure/notes/FAILURES.md)

**来源和继承。** 本包唯一采用 signed 包；其新内容不再展开字块的每个数字，而把字块视为任意整数系数。后续 two-neighbor 包的 `SOURCES.md` 明确把本包的周期块和双重复结果作为历史输入。

**目标、范围和新增。** 对 `n=x^k`、`S=(x^k−1)/(x−1)`、`k≥3`，作者声称只要 `j` 或 `n−j` 是 `S` 的整数倍，全部合法 `j` 闭合，字块系数、底数和次数均无界；`j=aS+e` 且 `3e(e−1)<S` 的近周期带也闭合。另给出 `n=2^{2d}` 下两次重复的单段字块全域消费者。它把二幂行的重复次数压到至多一次或两次，并没有处理长非周期字串、任意错位两段或一般两次字块。包内还把 `Z_1,Z_2,Z` 组织成可计算共同奇除子，但特别说明 `Z` 不是原始 gcd。

**证据状态和未控量。** 作者纸面证明、七个三次重复底部状态、另一算法和有限回归；无 Lean、独立数学核验、人审。一般两次任意字块、错位双段、一般奇部、规范缺陷、`F`、`min C_s` 仍无界，R7 不变。此前单段双重复幸存的无限族落在旧 `e=1` 范围，因此本轮的差异是形状分类和低成本消费者，不能重复计作新的未知域消灭。

**失败和纠正。** 等长错位双段只探到 `v≤64`，两次任意字块只探到 `x≤2000`，均非无限证明。双重复时第二窗口商可以随底数无界，不能照搬三次重复的常数商。`(56,11)` 两弱窗口皆过但真实 gcd 为 840，正好说明 `Z=1` 或弱窗口通过都不能推出 NC3；这是检验例，不是原题反例。

## 4. 两邻平方分配、素数幂邻平方和完整重复

材料：[REPORT](../materials/B-two-neighbor-square-and-primitive-block/REPORT.md) · [HANDOFF](../materials/B-two-neighbor-square-and-primitive-block/HANDOFF.md) · [SOURCE_ADOPTION.json](../materials/B-two-neighbor-square-and-primitive-block/SOURCE_ADOPTION.json) · [SOURCES.md](../materials/B-two-neighbor-square-and-primitive-block/SOURCES.md) · [FAILURES](../materials/B-two-neighbor-square-and-primitive-block/notes/FAILURES.md)

**来源和继承。** 包内根 `SOURCE_ADOPTION.md` 缺失；`SOURCE_ADOPTION.json` 和 `SOURCES.md` 明确采用 periodic 包，保留其原 ZIP 和来源哈希。后续 normalized 包又明确把本包作为唯一冻结研究源。这个缺失是原件结构缺口，不能用报告内容猜补成一份来源声明。

**目标、范围和新增。** 核心平方两邻分配定理是：`n=x²` 且 `x−1` 或 `x+1` 整除 `j` 或 `n−j` 时，作者声称全部合法输入有共同奇素数；由此得到全部 `n=(P^a±1)²` 整行。与前包合并后，任意字块重复任意 `k≥2`、以及互补交替字块全族闭合。作者还提出平方 NC3 必须满足 `ω(x−1),ω(x+1)≥2`，故 `ω(n−1)≥4` 的支持下界，并给出不分解大数的充分共同除子 `W`。这是下界/消费者，不是绝对高度，也不等于完整 gcd。

**证据状态和未控量。** 纸面推导、20 个小模状态及 622 次根代入、低端枚举、完整幂回归和作者另一实现；没有 Lean、独立研究者或人审。一般平方行的四块混合、非周期且非互补字串、一般奇部、规范缺陷、`F` 和 `min C_s` 仍无界，R7 不变。展示的 `n=2^48,j=1546574194711` 有复杂重复形状，作者报告共同素数 2351；它的第二窗口失败，所以是作者闭合展示，不是 Π/NC3 见证。

**失败和纠正。** 直接联立四个邻块没有得到保持同一 NC3 的严格下降；初始模 2520 探索被完整周期 36/60 的证书替代。`W` 不能省略与 `C(n,3)` 的 gcd，`(56,11)` 中 `W=21` 而真实 gcd 为 840。辅助模数的阻断不能直接当共同素数。所有这些是方法边界或证据契约，不是真实反例。

## 5. 孤立 3 的归一化邻块与 `3P^a+1` 平方整行

材料：[REPORT](../materials/B-normalized-three-neighbor-and-square-rows/REPORT.md) · [HANDOFF](../materials/B-normalized-three-neighbor-and-square-rows/HANDOFF.md) · [SOURCE_ADOPTION](../materials/B-normalized-three-neighbor-and-square-rows/SOURCE_ADOPTION.md) · [FAILURES](../materials/B-normalized-three-neighbor-and-square-rows/notes/FAILURES.md)

**来源和继承。** 本包采用 two-neighbor 包的平方分配定理、完整素数幂窗口和准确的失败边界。它修补的是邻数中孤立一次 `3` 被 `3!` 取消后，不能把“除去 3 的整块”直接当作旧平方邻数条件的缺口；第六包同时采用本包和更早的数字高度来源。

**目标、范围和新增。** 作者声称全部 `n=(3P^a+1)²`（`P` 为奇素数、`a≥1`）的合法 `j` 闭合，并给出 `v_3(x−1)=1` 或 `v_3(x+1)=1` 时的归一化邻块消费者。其相对约束是 `m²<7b³`（`m` 为平方根奇部，`b` 为规范丢失因子），并以 18 行小模证书、周期 360 覆盖指定 `m,h,ε` 模板。作者还把支持下界加强为在相应 oddpart 条件下 `ω(N)≥4`；这仍是下界而非上界。

**证据状态和未控量。** 作者纸面证明、18 行完整小模证书、520 次根检查、另一模核验和有限真实回归；无 Lean、独立核验、人审。一般平方四块混合、减号整行 `n=(3P^a−1)²` 的全部分支、二幂根归一化、镜像 `m=5`、一般非平方行、缺陷、`F` 与 `min C_s` 仍无界，R7 不变。展示族 `x=7·2^s` 有已确认的旧有理斜率重叠且第二窗口失败，不能当作新的残余核心或 NC3 反例。

**失败和纠正。** `ε=1,m=5,h=1` 的裸三次残量对任意固定模数都有局部高指数状态，但精确残量不为零，且未验证变量模数 `N,K` 的原始整除；这是固定模筛的局部障碍，不是完整弱解。不能因其存在就宣布减号行不可能闭合，也不能把镜像模型当作原题反例。报告保留孤立 `3` 的完整幂和归一化例外，不能把 `3^a` 截成较低幂。

## 6. 奇素数进制两位行与低系数整行

材料：[REPORT](../materials/B-prime-radix-two-digit-row/REPORT.md) · [HANDOFF](../materials/B-prime-radix-two-digit-row/HANDOFF.md) · [SOURCE_ADOPTION](../materials/B-prime-radix-two-digit-row/SOURCE_ADOPTION.md) · [FAILURES](../materials/B-prime-radix-two-digit-row/notes/FAILURES.md)

**来源和继承。** 本包的来源声明采用 normalized 包的规范邻数原件，并另读更早的数字高度/循环证明来重写 `g⁴<3n` 三商链；它没有把 normalized 的平方行结论误写成所有奇素数进制输入的前提。作者明确没有引入 A/D 进行中的成果。

**目标、范围和新增。** 对奇素数 `P` 的两位表示

`n=A P^E+B P^f`，`E>f≥1`，`1≤A<P`，`1≤B<P^{E−f}`，`P∤B`，作者给出无表整行条件 `P^f>3AB+2`；`P=3` 时另要求 `f≥2`。由共享表示 `n=T(AX+B), j=T(uX+v)` 和完整 `d²` 分配，作者声称两位 NC3 行必须 `f≤2,E≤8`，且 `P≥5` 时 `E≤2f+4`。在 `A,B≤min(8,P−1)` 时，543 个参数行、935 个第一窗口余项和底部证书被作者全部排除；单非零位，以及 `P=3,5,7` 的 `P|n`、至多两位行也被列为闭合消费者。这里的 `P` 是表示底数，不必是最后的共同素数。

**证据状态和未控量。** 作者纸面引理、有限参数/素性检查、不同枚举程序和作者第二实现；无 Lean、独立研究者、人审。剩余 `P≥11`、`A` 或 `B≥9` 的低指数模板、一般多位尾块、二幂行、规范缺陷、`F`、`min C_s` 以及“每个 NC3 都有可识别奇素数底数”的入口均未控制，R7 不变。它提供低依赖的稀疏整行前置，不能升级为全题高度。

**失败和纠正。** 双 LOSS 相乘只得到比旧 `g⁴<3n` 更弱的界，Exec 统计脚本的 `IndexError` 也没有产生接受结论。`P=3,f=1` 时不能因进制写法强迫三进位全为零；报告以小基例单独处理。`P=11,A=9,B=5,E=4,f=1,u=1,v=3` 只通过标量大小界，第一窗口余数为 2106，故不是 NC3 反例。有限 `P≤194` 探针和 543 行结果不代表任意尾块或高系数整行。

## 六包合并后的推进顺序和全题缺口

按采用链，六包的实际推进是：先把固定数字复杂度的指数无界性变为有效高度；再把连续段和有符号模板纳入同一高度接口并排空单段；随后把任意重复字块、近周期和双重复单段整族闭合；再处理平方根两邻数分配、素数幂邻平方和任意重复/互补形状；接着修补孤立 `3` 的归一化并闭合 `3P^a+1` 平方整行；最后把共享奇素数两位行的无界指数压到低系数有限尾部。这个顺序由来源采用和“下一判别点”恢复，不能改成按 ZIP 文件名或用户列举顺序解释。

它们共同从 NC3 候选中消灭了若干明确结构：固定数字/段数的高度尾部、完整周期字块、单段与双重复、平方根邻数整块落在一侧、孤立一次 `3` 的若干规范分支、`3P^a+1` 平方整行，以及奇素数进制低系数两位整行。实际前沿仍没有减少到任何新的整指标，`R7={3,4,5,6,7,8,9}` 不变。一般非周期字串、一般二幂行的高数字复杂度、平方四块混合、一般奇部和规范缺陷、`F`、`min C_s` 仍可能无界；有限证书不能替代这些无限量词的证明。

需要保留的纠错口径是：作者给出的“第一窗口通过、第二窗口失败”的族是用于得到共同素数的闭合消费者，不能写成 Π 或 NC3 见证；固定模数局部兼容状态也不是完整窗口解；`(56,11)` 的两个弱窗口和 `gcd=840` 不是反例；`W/Z` 是充分共同除子而非完整 gcd；表示底数 `P`、辅助模数和阻断素数都不自动等于题目见证素数。所有完整素数幂和 `p=i=3` 的端点都必须继续保留。

## 交接给主线程

主线程可按本笔记中的相对链接，从 `intake/20260915-daily-results/materials/B-<slug>/` 接入六包根报告；六个 slug 已按任务指定固定。当前笔记只记录来源、作者声明、适用范围、失败边界和未受控变量；数学接受留给具名独立核验任务，Lean 接受、代码重放、ZIP 提取和 Git 整理由主线程按职责处理。
