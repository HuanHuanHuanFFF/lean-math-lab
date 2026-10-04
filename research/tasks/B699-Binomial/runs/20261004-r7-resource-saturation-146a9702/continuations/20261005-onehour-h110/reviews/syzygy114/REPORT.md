# SYZYGY114：q≤7因子源保持空间刚性独立验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh；固定基线dfed05f112279e5cd55dc1dff2371680d66f735b。固定候选notes/main/04-syzygy-rigidity114-candidate.md SHA0941b872ff50ea87a056a86b2c299c2581754a3ad45fadccf92fe4604fd09124。纸面与精确Fp11矩阵验收，无Lean或新颖性。原截止19:09:35 UTC不延长。

**接受：实际非零Q G满足原21源、q≤114/D≤305时，任何非恒定Q因子H且q_H≤7，其实际源保持W_H维数恰1。** 不依赖SOURCE-EXACT114的21增源计算，也不反推Q上G存在。

## 1. 完整14维源入口及原N0乘法矩阵

重新独立接收原源input/完整trace，结果 [receive-e114.json](receive-e114.json)：23476条件、22066非冗余，14项weight305、101项306，D305维14，D304截面零。input头(114,305,11,0,21)且全部源与已验原表一致。14个原TSV各由独立双Horner直接核23476个Hasse jets全零。

从原TSV只取N指数0项得到f_i(0,X)，与固定eval0逐系数一致；不信作者秩JSON。独立组列X^k f_i，14×8=112列、122行，精确Fp11消元秩112，并明确112阶行子式det5 mod11。见 [matrix-result.json](matrix-result.json) 与 [check_matrix.py](check_matrix.py)。它也保证14个f_i本身及N0像独立，配合完整维14，确是全源空间基。其它四个c和q5子矩阵不作为依赖。

## 2. 原源评价单射

c0与所有源r3…8模11不同。若非零f∈K114却f(0,X)=0，则N|f；N在各源局部是单位，除N仍保留全部源条件、q不增、权次减1≤304，与D304零截面矛盾。因此整个K114的N0评价单射，不只是14份向量的数值测试。

## 3. 饱和整格与非零tensor：接受

假设dim_Q W_H≥2，使用L=W_H∩Z^M，而不是任意有理基降模。L饱和（av∈L⇒v∈L）；Z^M/L有限生成无挠故自由，短正合列分裂。L的整数基可补成Z^M基，模11仍独立。取其中U1/U2。

G/H选primitive整数相伴R，Gauss保证Rbar非零；Fp11[N,X]整环中乘Rbar保持两Ubar独立。源阶与q/D可加，所以R Ui是原整数源空间的成员，其非零降模S_i∈K114。N0评价单射使s1/s2仍独立，且共同因子Rbar(0,X)必非零，否则都为0。

设a_i=Ubar_i(0,X)，非零、degree≤q_H≤7。有s1 a2−s2 a1=0，却s1⊗a2−s2⊗a1是非零tensor：对span{ s1,s2 }取线性泛函保留s1、杀s2后得非零a2。它位于已核乘法单射的核，矛盾。故dimW≤1；H本身非零属于W，维恰1。

这处理mod碰撞、退度及任意R/H整数归一化；没有假设原随意基mod独立，也没有先假设R在N0非零，均由饱和格/全源评价单射证明。

## 4. 条件原题应用

另采用七可载E≤1，则q≤5时D≤11；一维核既有Hadamard界给primitive l1<2^1564，满足旧NC9消费者D≤11/l1≤2^24980条件。保留合法400|n、同一(n,J)与历史回传等级，条件推出loadable q≥6。这里没有COVER6、原题闭合、额外DP状态删除或R7减少；q6/7仅得到源空间刚性，不宣称不可载。

SOURCE-EXACT114的纯源精确阶/低q绝对不可约是另一独立工具，两签件不互相替代。旧签件、作者文件、依赖及他人进程均未修改；所有临时二进制仅D盘，原n/j/g与完整指数/模板尺度仍无界。
