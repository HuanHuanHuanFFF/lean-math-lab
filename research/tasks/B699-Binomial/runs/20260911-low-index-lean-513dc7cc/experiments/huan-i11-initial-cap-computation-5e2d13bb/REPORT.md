# 实际m=1 E上界的等价快算候选

保留两份实际SmallCertificates的原命题：ThreeTwo为2*|actualE23 15(rowDelta row)1(1/9)|≤原eBase；FiveSeven为2*|actualE11 7(rowDelta row)1(1/50)|≤原eBase。两种Bool全部保留，实际rowDelta是true→0、false→1。没有改变lambda/beta/eBase、m0、M或增长率，也没有导入或假设旧E cap。

本包尚未运行Lean。主任务已报告ThreeTwo在3072MiB及5,000,000 heartbeats重验仍于SmallCertificates第22行whnf耗尽心跳，约230.7秒；失败evidence20260911T230618611985Z已逐字绑定，其success=false、exit1、memory3072已只读核对。这里没有提高候选的heartbeats、recDepth或内存限制。

具体改写在ChooseFast.lean完成：chooseFast n k在k≤n时为n!/(k!*(n-k)!)，越界为0。choose_eq_fast直接用固定mathlib的choose_eq_factorial_div_factorial与choose_eq_zero_of_lt证明全n,k相等。继而在r尚为符号时证明整个实际eCoefficient函数等于fastECoefficient，再证明actualE_eq_fast。具体E初值先使用该通用等式，再展开有限多项式；因此数值norm_num不再含Nat.choose，不依赖在已经开始递归的表达式中临时换lemma。

已有Mathlib.Tactic.NormNum.NatFactorial缓存负责阶乘计算，来源/olean字节均在SOURCE_MAP.json。本地Nat.choose定义是Pascal递归（Choose/Basic第50-53行），旧proof显式把Nat.choose列入norm_num展开列表。新的源级路径消除了这处递归，但没有运行profile，不能宣称它是唯一耗时来源或保证新路径在默认预算成功。

| 固定行 | delta | 实际Bool | actualE精确值 | 项数 |
|---|---:|---|---|---:|
| ThreeTwo | 0 | true | 13515592997264/1594323 | 8 |
| ThreeTwo | 1 | false | 117258057456010/4782969 | 9 |
| FiveSeven | 0 | true | 2474307/3125 | 4 |
| FiveSeven | 1 | false | 1428944881/625000 | 5 |

四值分别由实际整数系数公式的有理和及Horner重算一致；全部满足原2|E|≤eBase且有严格正slack，exact-values.json记录完整系数、原beta/lambda/eBase及差值。独立检查共26项、52个实际choose因子，并交叉检查n=0..44、k=0..47的2160个choose值。去掉越界guard并不正确：n0,k1的未保护阶乘商为1，实际choose为0。

最大阶乘38!只有149bit；显式公式乘积和最终交叉乘积最大265bit。这是有限算术数据尺度，未测量Lean内部项的内存。原始无共享Pascal递归树模型给ThreeTwo两行约4.40e12和2.47e12节点，该数用小型动态规划计算，并未真的枚举这些节点；它不是Lean实测步数，简化缓存/共享可能改变实际成本。

候选结构：ChooseFast提供5个定义/恒等式根；ThreeTwo及FiveSeven各给两个实际E精确值、两个原上界和一个全Bool包装，共15公共根。7个Lean文件包含各层typed/#print与总Audit；每份源均不使用占位或非内核数值接受捷径。完整路径与SHA在INTEGRATION_MAP.json。

建议主任务先实际验ChooseFastAudit，再ThreeTwoAudit，随后FiveSevenAudit。旧SmallCertificates暂不改；仅当对应新cap真实验收后，主任务可在集成副本用该明确同型根替换原proof，并记录差异。没有运行证据前保持未编译。更高预算若已使原版某行成功，这份有限候选只保留作诊断/备选，不再扩到Q或其它系数。

该工作只针对actual_e_growth_of_tree与standard_bounds_from_fixed_trees所需的固定初值输入。它不单独建立所有增长树、初始高度或原题结论，当前B新增仍0/19。
