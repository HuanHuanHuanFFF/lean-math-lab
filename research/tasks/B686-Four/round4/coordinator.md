# B686 / Four 第四轮协作记录

用户目标：新的 Astra max 子任务与主任务共同研究两小时。主任务负责发散、文献、环境与讨论；子任务负责检验和推进可行路线。不要求阶段性成果；各种失败和尝试需随时记录。

## 时间与所有权

- 协调开始：2026-09-07T08:48:35Z。
- 停止开新路线：10:43 UTC；硬截止：10:48:35 UTC（北京时间18:48:35）。
- 子任务 Hubble：01a07b0f-47fe-71b1-8980-b1e8acad8099；显式 gpt-6-astra / max，fresh context。
- 子任务拥有 round4/worker/；主任务拥有本文件、round4/report.md、round4/main/ 及共享入口。
- 原题始终是自然 k≥2、n≥0、m≥n+k，P_k(m)=4P_k(n)。d=m−n、h=d−k、K=d+k、N=n+1。
- 基线为第三轮远端提交 df0d98a。上一轮工具调研笔记及 README/coordinator 修改尚未提交，全部保留。
- 当前不是赏金平台提交或发表任务。新颖性、纸面数学、计算证据、Lean 验证各自记录。

## 08:48–08:51 UTC：启动和首个问题

子任务先读仓库研究工作流、第三轮报告及工具调研，独立审计
d 整除 3P_k(n) 与实数条带的组合。首个可检验问题：
单个大素数幂位移的有效界，能否扩展到多个不同大素因子的位移？

主任务同步研究两个方向：

1. 多个互素位移因子分配到不同位置后，CRT、连分数及小差方程能提供什么；
2. 各类先进工具的真实适用条件，尤其不能把小素数支持、有限模数筛或实数逼近误当作整数等式。

已向子任务交接的关键旧障碍：固定 h 有效判定但 h 无界；偶数 k 的个别阈值不等于全局无解；k=5 特定 genus-2 商绝对简单且 rank≥2；原曲线剩余 Prym 未知；旧诊断(5,182,241)已被便宜的位移整除筛拒绝。

待研究路线允许随证据调整，不以用满时间或制造“成功”作为目标。每次改变判断需记录具体原因。

## 08:53 UTC：二阶同余及两个位置

主任务提出并发给 Hubble 审计：若 q=p^a 整除 d，p>k、p≠3，原式使 q 集中整除
某项 n+i。删除这一项的乘积 R 与 q 互素。模 q² 比较原式，可以得到
q² 整除 E_i=3(n+i)−d，强于第一阶位移整除。

若 d 的大素数幂全部分配到至多两个位置，则 d² 整除 E_i*E_j（同位置可重复）。
另一方面 E_i/d 趋于 c=3*beta_k−1，因此 E_i*E_j/d² 是逼近 c² 的整数。
对固定 k≥3，c² 非有理，可能得到有效位移界。子任务已独立确认纸面链并开始给 k=5
构造精确有理尾部界。主任务负责二阶同余的 Lean 桥；子任务负责尾部与有限余段。

## 08:55 UTC：用户强调 Lean 验证

最新要求是“主要验证还是通过lean进行”。已立即同步给子任务：
以接回原题的 Lean 内核证明为主要验收；纸面结果和计算不自动升级。
主任务新增 main/ShiftCongruence.lean，子任务新增 worker/K5TwoPosition.lean。
保留自然/整数强制转换、公理审计以及缺失桥的明确状态。

## 08:56–09:03 UTC：工具条件与初次编译

主任务读 Samuel Le Fourn 的 Tubular approaches to Baker's method for curves and varieties，
https://arxiv.org/html/1812.06306v2 ，重点是 Corollary 1.2 的极点函数条件及有限赋值数限制。
其界依赖 S-unit regulator，不能由“至多两个位置”直接当作“至多两个素数位置”套用。
本次保留为未来线索，没有宣称满足定理假设。

补建固定 mathlib 的 RingTheory.Coprime.Basic / Lemmas 成功，版本未变。
ShiftCongruence 首次编译在3处将整除命题直接交给 ring 的地方失败；改用显式整数恒等式，
不改数学假设。等待第二次编译。失败输出是开发过程，不计入已验证结论。

多位置的初步障碍：简单相乘 r 个 E_i 得到大小约 d^r，但已知整除模数只有 d²。
r=2 时商趋于常数，r≥3 时这个直接的“附近整数”论证失去作用，需要新消项。
更高阶局部展开会同时增加表达式次数，不能仅凭模数变大就声称改善。

## 09:12 UTC：主任务同余桥已通过内核

main/ShiftCongruence.lean 的 shift_divides、slot_square、prime_power_position、
large_prime_power_square、two_prime_power_positions 均已编译通过，五个公理 guard
只允许 propext、Classical.choice、Quot.sound。prime 条件已放宽至 p≥k 且 p≠3。
prime-power 存在位置结论从原自然数乘积等式推出，不是假设所需位置已经存在。

两素数桥首次添加时，convert 产生了 Int.instDvd 与 semigroupDvd 的实例相等子目标；
改成显式分母恒等式重写后通过。未修改定义或删除假设检查以绕过错误。

可导入模块已原位编译为 olean，使用 LEAN_PATH=.。已交给子任务连接其有限段和尾部，
以形成自然 n,m 原题中的真实位移子类排除定理。

后续主任务探索：一般二阶乘积恒等式、小素数缺失因子的精确代数界，以及原 k=5
曲线剩余 Prym 的有限域诊断。后者仅作方向选择，几何结论如未形式化必须单独标明。

## 09:21–09:26 UTC：通用二阶条件与 Prym 诊断

UniversalSquare.lean 已成功编译。universal_identity、universal_square、
slot_with_cofactor、universal_square_original 的四个公理 guard 通过。
普遍结论为 d² | ∏(3(n+i)−d)，且任意删项余积 R 满足 d² | 3(3(n+i)−d)R²。
首次编译只有一条无效的 tactic 风格警告，改成显式恒等式；第二次日志为空，exit 0。

worker/K5PrimeClasses.lean 已完成自然 n,m 原题桥：长度5、位移 p^a 或 p^a q^b、
p,q≥5 为素数（允许相同）、指数正，全部 n,m 排除。已读其定理声明和证明，未发现
将位移范围限制到有限搜索。子任务在研究2-adic精确归一化以加入素数2。

主任务的 prym_probe.py 在 p=7,11、扩域次数1至6精确点数，Newton、互反及
P_C=P_D P_Prym 全部一致。模11得到八次式
X8+8X7+33X6+134X5+523X4+1474X3+3993X2+10648X+14641，
模7、41、43不可约。模7处的另一条 Frobenius 式没有找到小模不可约证书，
这不意味着它在有理数上可约。无浮点数参与点数。

Howe–Zhu 原论文 Proposition 3 / Lemma 5 给一般维数的检验路径，不能套其仅适用
二维的 Theorem 6。八次式 X7 系数非零；若最小降域指数 d 存在，则须 φ(d)|8。
13个可能指数的模7 Frobenius轨道检查均为8。正在把有限域代数证书送入Lean；
曲线光滑性、Jacobian/Prym 与点数理论仍属于纸面/外部理论，不能称全Lean证明。

## 09:30–09:45 UTC：对称三位置与两个位置的进一步推广

子任务提出五个局部三阶校正及两个对称三位置消项。主任务独立核对全部系数，
并在 main/K5CubicSlots.lean 证明 cubic_cofactor、cubic_slot、prime_power_cubic_position。
第三次编译exit 0，三条公理guard通过。初次错误为pow_succ简化未补pow_zero、
未显式标Nat导致存在量词推断为Int，以及未导入divisors API；采用基本prime整除
2³·3论证替代divisors枚举。第二次只缺err定义展开，第三次修复后通过。

子任务随后找到更短的全局zUV恒等式，故其对称三位置证明不需要导入局部三阶
文件。这是独立交叉核对，不强行增加正式依赖。

主任务独立用Fraction插值复算全部10个三位置集和5个四位置集：最低总次数的
三阶模板仅两组对称三位置通过；四阶模板全失败，唯一通过二阶部分的四位置集
{1,2,4,5}在三阶校正要求C=(25/9)z³+75z，总次数升至6。结论仅限制这个模板。
子任务已独立发现同一障碍，由其保存完整audit，主任务不重复落盘脚本。

main/K5TwoPositionSupport.lean 第二次编译exit 0，两个guard标准三公理。
给任意i≠j∈1..5，只需位移d与3倍其余三项乘积互素，即可从通用平方整除条件
取消其他三项，接K5Combined排除原自然n,m。此结论不限制d的素因子数。
第一次错误只是Finset.dvd_prod_of_mem的lambda索引遗漏Nat类型。

几何诊断的Lean不可约证书仍开发中：已补建固定mathlib依赖，首个120秒依赖构建
超时后接续360秒构建成功。发现reduce_mod_char不自动展开类型别名，改为局部
notation；不用native_decide或新axiom替代。FrobeniusCertificate尚未通过，不列成果。

## 09:53 UTC：用户延长研究窗口

用户新指示：可以研究到7点，特别接近或重要时还可延长。沿用北京时间，更新检查点
为2026-09-07 19:00（UTC 11:00）。这条授权替代开头10:48:35的旧硬截止。
10:55开始收束；若11:00仍有特别接近闭合或重要的具体工作，主任务可小段延长，
须记录理由、剩余工作及下一检查点，不因泛泛还有想法而无限延长。已同步Hubble。

## 10:04–10:18 UTC：全部素数底数的两素因子类闭合

main/CrossMatching.lean 已完成任意 k、实际跨段公因子的二阶必要条件：
若 q 同时整除 n+i 与 m+j，则 q² 整除 4C_i(n+i)−C_j(m+j)，
C_i=∏_{r≠i}(r−i)。原自然数 gcd 桥及两个公理 guard 通过。
该条件不能仅由 q 整除两项差推出，实际共同整除假设不可省略。

main/FrobeniusCertificate.lean 第10次开发编译exit0，得到八次 Frobenius
候选式在 F7、Z、Q 上不可约。main/FrobeniusPowerObstruction.lean 第3次
编译exit0，利用阶为1201的元素，证明其根 α 的每个 1≤d<1201 次幂均不在
F7^4 中。公理检查均只含标准三项。点数、几何识别、Howe–Zhu 与特化桥仍是
独立的计算/纸面层级，详见 main/prym-route.md；没有全Lean绝对简单性声明。

main/CentralFifth.lean 第2次编译exit0：q|d、q³|z、IsCoprime q 36、原等式
推出 q⁵|9z+25d³。第1次只是恒等式公理注释漏写 Classical.choice，guard 拒绝；
按实际传递依赖修正，未增加非标准公理。worker随后发现中心 q³<9d，故大参数下
q²<d，阻断了原先希望 q>sqrt(d) 以压住四次辅助式的机制，正在形式化该障碍。

worker 的2-adic无损平方条件和3-adic损失9条件均已通过，后者没有保留原先粗糙
损失27。600≤d<3000的新有限段通过12个 Fin200 的内核 decide 证书完成；第一次
240秒超时是长列表归约成本，改为精确核对过的紧凑cutoff后通过，不改变覆盖范围。
K5AllPrimeClasses 对所有素数 p,q（包括2、3，允许相同）、所有正指数 a,b，
排除原自然数 k=5、d=p^a q^b。K5PrimeSupport 第2次编译exit0，进一步证明
任何原解必须 3≤d.primeFactors.card。因子的数量指不同素数，不是含重数的数量。

10:18主任务已读上述原题声明，确认没有 n、m、指数上界和隐藏的大素数限制。
最终统一验证脚本已建立；只读预审当前24个Lean文件、48条公理guard通过，尚未
把预审当作完整依赖重编译。计划在源码稳定后按依赖顺序重新编译并保存源哈希。

## 10:21 UTC：有界剩余因子的具体新路线

主任务把两素数幂位移推广为 d=sM，M=p^a q^b。如果两底数都非3，已有无损局部
条件给 M²|E_iE_j，因而 d²|s²E_iE_j。s=3时正好使用已经完成的损失9尾部和
有限段，不需扩大枚举；p或q等于3时 d=3p^a q^b 本来就只有至多两个底数。
已交worker优先尝试完整 d=3p^a q^b 类。s=2且两底数≥5时，现有误差上下界还给
281d²<4E_iE_j<282d²，可用同一有限段闭合。此处是交给子任务的方案，尚未计为成果。

## 10:25–10:32 UTC：第三素因子扩展接受，开始统一验证

K5ScaledPrimeClasses 第1次编译exit0：原题排除 d=3p^a q^b，所有素数底数、
所有正指数，包括底数3及重复。K5EvenScaledClasses 第1次exit0：原题排除
d=2p^a q^b，底数均非3，允许底数2及重复。两者都复用5≤d<3000的同一有限段，
没有扩大搜索。worker的 K5CentralHeight 第1次exit0，形式化了中心主导模数失败。

main/K5OriginalConditions 第1次exit0，复用上一轮 TargetBridge 的原题有理数
比值桥，统一给出 d≥3000、至少三个不同素因子、两项互素性障碍和通用平方条件。
统一验证脚本因此改为递归重编译所有研究依赖，包含前轮 TargetBridge，防止只
依据旧 olean 接受本轮成果。

main/AsymptoticSlope 第3次exit0：c 的五次式
c⁵−40c³−200c²−420c−340 在素数5处 Eisenstein，故有理数上不可约；若其任意
实根 c 的平方 t 有理，则 c(t²−40t−420)=200t+340 将使 c 有理，矛盾。
Lean 已检查不可约、平方非有理及 (c+4)⁵=4(c+1)⁵ 的恒等式桥。
这为固定小余因子的整数间隙提供代数基础，尚无对变化余因子 s 的统一有效界。
第1次导入路径写成不存在的 Data.Int.Prime；查源改为 Data.Nat.Prime.Int。
第2次缺少 coeff_X 化简，guard检测到未闭合证明并拒绝；第3次补充该化简后通过。

10:32启动 verify_round4.py：10个主任务新模块、18个子任务模块和旧 TargetBridge
共29个模块，依赖按顺序重编译，公理guard与源哈希一起记录。此刻仍在运行，
预审或单文件成功不能替代最终整体报告。源码已与worker协商冻结，笔记可继续完善。

## 10:35 UTC：统一重编译通过

verify_round4.py 正常退出0，success=true，耗时151.334秒。
29个研究模块和63条公理guard全部通过，验证期间没有源哈希变化。
其中28个是本轮文件，1个是前轮原题桥；这些数字不是独立数学成果数量。
失败开发日志与最终验证日志分目录保留。后续仅完善笔记，不作无风险依据的重复测试。

## 10:36–10:43 UTC：二次 Chabauty 条件审查

主任务注意到现有模7商曲线Frobenius式恰好是
(T²+3T+7)(T²+5T+7)。两个ordinary椭圆因子的几何自同态域分别为Q√−19和Q√−3，
互不同源；结合前轮模11绝对简单性与几何自同态特化单射，给出特征零商Jacobian
的 End⁰=Q、几何和有理Picard数均1的纸面论证。已交Astra独立核对实际假设，
主任务重读Balakrishnan–Dogra原文Lemma3.2、Theorem1.1和Milne的Rosati命题。

商的rank≥2使 r<g+ρ−1 的有理点充分条件失效，但不能宣布所有二次/高阶方法失败。
整点版本适用域不同，t=(m+3)/(n+3)的变化分母不能无根据地抹去。
原genus6曲线有Q上2维+4维分解，故ρ_Q≥2；若以后证明总rank≤6，则二次方法
的充分条件可成立。当前总rank未知。完整条件说明见main/quadratic-chabauty.md，
明确不纳入63条Lean验证所覆盖的几何结论。

## 10:50 UTC：本轮结束并关闭子任务

worker于10:48:18记录最终交接，随后完成；主任务已读取 final-handoff.md、
remaining-configurations.md、residual-norm-draft.md 及独立QC审计，并关闭Hubble。
不存在需要追加时段的近乎完整证明，未使用19:00以后的延长授权。
新范数界仅保留为未Lean草稿；不为多一个结果临时改变已验证源码。

10:49在临时目录重运行Frobenius证书生成器，输出Lean源码及JSON均与当前
已验收文件逐字节一致，没有覆盖源码。10:50:52再次核对最终源哈希，29个模块
均与整体编译快照一致。工作历时122.29分钟，最终状态保存于handoff.json。
本轮没有commit/push或平台提交；仓库工作区保存全部源码、日志、证据与报告。
