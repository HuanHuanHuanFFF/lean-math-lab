# 三个临界指标的实际初始高度候选

本报告接续本目录原 README.md 与 route.json。主任务于 2026-09-12 09:26:09 UTC 将本目录写入权移交给 `/root/two_five_gap33`；原两文件保持原字节，PRESERVED_INPUTS.json 保存交接时哈希。20 分钟检查点为 09:46:09 UTC，无总时限。新代理不改已接受/排队源码，不运行 Lean，不操作 Git。

## 准确结论

候选命名空间 Math.B699.CriticalPadeHeight，建议集成至 lean/CriticalPadeHeight。

对 i=28、31、34，最终 actual_i28_below_15360、actual_i31_below_15360、actual_i34_below_15360 均只接受自然数 n,j 及三项条件：i<j、j≤n/2、¬B699LargePrimeStructure.Common n i j；结论为 n<2^15360。

Common 是现有原接口：存在素数 p≥i，同时整除两项完整 binomial 的 gcd。TypedAudit 另外把三个 Common 全部展开成这个存在命题，核对包括 p=i 的边界。primeComponent 直接定义为 p^((n.choose i).factorization p)，没有截断指数或替换 binomial。接口不留下高度输入、树、G、数值证书、实际边、窗口或高度有效性假设。

若候选验收，消除的是三个原指标的无界 n 尾段，剩余 n<2^15360 的全部合法 j 仍须完成有限压缩、CRT 和终端覆盖。本包没有声称完成三个原题指标；新增完整 B 结果为 0，未作新颖性判断。

## 证明链及取消方向

固定参数为 (i,t,r,s)=(28,9,8,18)、(31,10,9,20)、(34,11,10,22)。三者都有 2s−r=i、windowDegree=(i−t)i、smallPrimeCount=t。degree 分别为 532、651、782。

1. Structure 从已接受 noCommon_bernoulli_size 取实际不等式。由 window_constant_pos 得 K≥1，只舍弃 K；将 n^(i²) 写成 n^((i−t)i)·(n^t)^i，消去正的第一项，再取 i 次幂的单调逆，得到 n^t≤(2i!)U。没有计算 K，没有使用旧 M=1 证书。
2. Components 从 binomial_prime_power_localization 直接取一个 a<i。它先给实际 v_p(binomial)+v_p(i) 的整除；用 pow_dvd_pow 只删去额外 index 指数，保留完整 binomial 分量。C>0 来自 n≥i>a 与 n−a=component·C。这里没有导入 WinAssign。
3. Windows 在 n≥2^15360 下先经 1122≤2^11 得 1122≤n，并由既有 ceilHalf_power_lower 得 Y=(n+1)/2≥2^15359。任意 a<34 都满足 Y≤n−a≤2Y，任意两个位置的整数绝对差≤33。位置可以相同，差可正、负、零。真实 p=2、5 两窗口供应全部弱边条件。
4. 冻结 gap33 的实际弱边给出 Y^10≤A^1000 或 Y^10≤C^1000。对应 component 与 cofactor 的乘积≤n，故选中的 component^1000·Y^10≤n^1000。用 Finset.erase 分出选中素数，其余完整分量由 Nat.pow_factorization_choose_le 逐一≤n，得到 U^1000·Y^10≤n^(1000t)。所有 p<i 都进入原 U，指数为零的因子也是 1。
5. Structure 将 n^t≤(2i!)U 提升至 1000 次幂，与上项按同一方向串接后消去正的 U^1000，得到 Y^10≤(2i!)^1000。Components 单独证明 U>0，不把 positivity 作为最终输入。
6. Constants 只决定 2·34!≤2^129，由 factorial_le 推至所有 i≤34，再保持大幂为符号得到 Y^10≤2^129000。高度给出 2^153590≤Y^10，与 129000<153590 的幂单调性矛盾。Final 消去假定的大高度，得到严格 n<2^15360。

所有大指数均通过 pow_mul、pow_add、单调性和正数取消处理；不执行 n^百万级指数的闭项决定，也不生成 K^1000 的数值。

## 来源、冻结与证据等级

SOURCE_MAP.json 逐项绑定 72 个输入源码，其中 69 个已有源码以当前字节对应旧成功验收及成功日志，另外 3 个是先前冻结的 gap33 实现源码。gap33 的原 FREEZE 哈希和所有冻结文件逐项核对；它的新内核接受状态仍由主任务串行验收决定。本候选不因导入完整候选而自动变为已接受。

采用的成功收据为 i11-two-five-actual-instance、i11-actual-cubic-bridge、i11-small-prime-localization、i11-component-ceil-half。它们的根、证据、当前 source-before/source-after 哈希和相关成功日志均重新核对；编译对象字节再验由主验证器完成。本子任务没有编译新文件，也没有把静态检查当作内核接受。

依赖仍使用既有 lean-toolchain 与 lake-manifest.json。旧源码、原路线记录、先前 gap33 冻结包和 Git 均未更改。原 README 中“尚无 Lean 证明”的语句是交接时历史状态，未被本报告抹去；当前是完整候选证明文本，仍没有新的 Lean 验收。

## 有界诊断

exact-checks.json 保存以下实际通过的精确检查，属于诊断，不替代无界证明：

- 三组 lambda、degree、smallPrimeCount 和全部小素数集合；31 本身不进入 i31 的 U，而 31 进入 i34 的 U。
- 2·34!≤2^129；该决定的最大整数 130 位；1122≤2^11 与 129000<153590。
- n=66..300、a=0..33 的 7990 项共同窗口检查。
- n=0..100、a,b=0..33 的 116756 项差值检查，包含自然数减法截断、同位置与差值±33。
- 三个 i、n=i..160、所有 p≤37 素数的 4680 项完整 binomial+index 局部化检查；包含 2017 个 binomial valuation=0 和 130 个 p=i 的实例，输出摘要有顺序哈希。

## 验收入口与可复现操作

五个实现模块：Structure、Components、Windows、Constants、Final。共 24 条公开定理和 1 个定义；五个逐层 Audit，加 TypedAudit 与统一 Audit，总共 12 个 Lean 文件。TypedAudit 包含所有定理的显式完整类型、component 定义等式、三个展开原 Common 的最终接口，共 28 项；统一 Audit 打印 25 个传递公理根。

prepare_candidate.py 只用 Python314 -B 运行，生成检查资料或在已有 FREEZE 时只读核对。--log <统一 Audit 日志> 检查全 25 根公理，白名单仅 propext、Classical.choice、Quot.sound；五项自测分别拒绝缺根、重复根、sorryAx、自定义公理和编译错误。--freeze 是本包冻结动作，不运行 Lean。

建议主任务先验 ConstantsAudit、StructureAudit、ComponentsAudit，再在 gap33 接受后验 WindowsAudit、FinalAudit、TypedAudit、Audit。SOURCE_MAP 的映射保留 namespace 和声明名称，只将本目录相互导入前缀改为 lean.CriticalPadeHeight，并把 gap33 的实验前缀改为 lean.TwoFiveGap33。所有其他导入沿用既有原路径。

下一决定点是这批候选的串行内核验收；若发现 API/ elaboration 问题，保留诊断并在新修订中修复，不回写已冻结或已接受源。完整有限闭包仍由后继任务承担。
