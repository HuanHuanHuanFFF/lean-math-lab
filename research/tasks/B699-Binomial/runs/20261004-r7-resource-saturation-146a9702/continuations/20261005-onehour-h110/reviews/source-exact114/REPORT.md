# SOURCE-EXACT114：全部21源精确阶及首jet单射独立验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh。固定基线dfed05f112279e5cd55dc1dff2371680d66f735b，唯一写入本目录。固定候选notes/a/05-source-exact114-candidate.md SHAbf6d31d17b0133bf421159cdb76d001f0e067812000e511d71fa58dfea63bc9c。原截止19:09:35 UTC，不延长；无Lean或新颖性验收。

## 1. 全21完整零核接受

固定summary SHAab7e733f177955010d1811737fbf49096f7979b8df818695baa3fac1f0e51be2。独立逐份核input头(114,305,11,0,21)，其21个整数源行恰原表仅对应第i源阶加1，其余20不变；input/trace与summary各hash相同。不以summary的all_zero或一组给定向量代替验证。

使用已独立接受p11完整接收器，21份trace全部实际接收：所有condition/point/jet/pivot及完整模更新、每个最终115项weight数组都与作者对应JSON一致；每个D305截面维0、最小weight306。全部记录在 [independent-result.json](independent-result.json) 和各receive-XX.json。接收器的前驱闭合/weak-Popov完整基不变量沿原验收成立，Fp11矩阵无需阶乘逆；没有额外transported jets或数学剪枝。

恢复后的接收/核对阶段576.15秒（另复用此前首份已成功的完整实跑）、最终exit0；原首份完整接收已成功，但driver比较旧字段conditions与新source_conditions时报KeyError，修正metadata映射后复用固定首份结果并完整接收其余20。初始错误日志保留，不是数学或trace拒绝。

任一有理非零源G若某源实际ν≥L+1，清分母除内容后模11仍非零，次数不增、整数Hasse零条件保持，将落入对应零核，矛盾。因此任意非零Q G，q≤114、D≤305、满足原21源时，所有实际普通/中心权阶恰等于原下阶。此无条件源命题不依赖z、E≤1、DP或NC9消费者，不声称Q源存在。

## 2. 因子首jet映射与纯源结构：接受

实际H|G的源保持W_H有其q/D界和全部实际ν_P(H)下界。若某源首形式jet为0的非零U∈W_H存在，正权阶整数性给ν_P(U)≥ν_P(H)+1；非零G'=(G/H)U的q/D不增加、其余源不变弱，却把原G在该源的精确L再升1，矛盾。故每个首jet线性映射都单射。

因此dimW_H≤m_H+1（各off普通源），及dimW_H≤floor(w_H/2)+1（各中心权源）。不在某源消失的H必dimW=1；非刚性因子必通过全部21源，中心w至少2。

对非竖Q不可约H，H(8,X)非零，否则N−8整除H而H竖直。r8五点互异，四off根重数至少dimW−1，中心根重数至少ceil(w/2)≥dimW−1。故q_H≥5(dimW_H−1)。这是特化根重数，不把中心普通阶无根据改成等号。

采用已验几何下降预算，几何可约轨道数d>1给dimW≥d+1，因此q_H≥5d≥10。本源域中全部q_H≤9的非竖Q不可约实际因子绝对不可约。这个结论不要求可载或NC9。

## 3. 明确条件消费者

另外条件采用七可载E≤1给D_H≤2q_H+1，及已验一维Hasse小权次l1<2^1564/旧NC9小系数消费者（合法400|n、同一(n,J)，历史回传不升级）。可载q≤4不能通过r8五点，W一维、D≤9，故被条件消费者排除，得到可载q≥5。

若假设可载q5存在，D≤11又迫使W非一维，q≥5(dimW−1)给dimW=2；它必z21、绝对不可约。r8五个特化根的总次数恰5，每个根仅一重，故全部实际普通阶1；中心w≥2且w≤2m=2，所以w2、kappa8=0。这只是必要形态，不分类或构造q5曲线，也不证明一般q5不存在。本轮独立SYZYGY114可另消去该条件族，本签件不靠它。

## 4. 固定与范围

[receive_all.py](receive_all.py) 独立接21完整trace，input/trace/JSON全63文件逐hash固定；原summary及候选另绑定。临时exe仅D盘、操作串行，未改作者或旧签件，未新增子代理。纯源精确阶/低次数几何限制不减少R7或COVER；原n/j/g、模板/完整粗支持与指数及源桥仍保留原开放/条件采用等级，无Lean、完整原题解或新颖性声明。
