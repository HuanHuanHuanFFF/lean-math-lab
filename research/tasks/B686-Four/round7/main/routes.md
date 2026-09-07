# 主任务探索与交叉核验（持续记录）

起点2026-09-07 17:55:22 UTC，原截止18:15:22 UTC。第二Astra分支创建两次因agent thread limit reached失败；旧辅助中断也未释放可新增线程，因此主任务承担替代路线，Luna旧任务复用为有限计算支持，不声称有独立B。

## M7-1：素因子支持变换

原式比例4且k≥2，两段均有偶数，故两段乘积素因子集合相同。尝试连接BSW1989《On the maximal length ... same prime divisors》。原文§4指数距离界要求每一对应位置的支持相同，原题只给整段支持相同，不能套用；§5才适用，给起点多项式下界和另一端关于起点的有效上界，但本题比值4已强迫两端接近且n大于约k²/2，这些工具暂未强化当前全局路线。Luna正在精确搜索整段支持相同而逐位置不同的样本，作为该条件替换不成立的诊断。

来源：https://webusers.imj-prg.fr/~michel.waldschmidt/articles/pdf/Balasubramanian1989_Article_OnTheMaximalLengthOfTwoSequenc.pdf ，§1区分(1.1)/(1.6)，§5 Proposition5.2/5.7。原文指数OCR模糊处暂不作为定量结论。

## M7-2：多项式/二项式变换的边界

Pk(t)=k! binom(t+k,k)，转写不丢条件，但搜索到的Hajdu–Tijdeman2023一般f(x)=g(y)理论与Theorem10.1主要处理固定多项式/有界块长；Theorem10.1还有不同度数k<ell及k不整除2ell条件，同长度比值4不能直接套用。保留文献入口，不声称新有效全k截断。

来源：https://math.unideb.hu/sites/default/files/inline-files/htep_revised_final.pdf ，Theorem1.1、9.1、10.1。

## M7-3：大素数幂匹配与显式二次界

主任务首先从gcd矩阵思路观察：p>k时每段至多一项被p整除，完整p幂在两段相同，必整除某个d+j−i。单纯取这些差的乘积有次数浪费。与A沟通后，选择阈值2k−1，可将分母(2k−1)!消去，所有大素数部分整除binom(d+k−1,2k−1)。这是本轮原文Erdős方法与主任务匹配思路的交汇；不是独立首次发现声明。

小素数部分逐p删最大赋值后余下至多v_p((k−1)!)；用k!宽界。设m<k³，则n+k≤m<k³，最大p幂≤k³，所以小素数部分≤k! k^{3π(2k−1)}。用Rosser–Schoenfeld显式π上界可变为常数的k次幂。主任务额外简化：对d≥k，(d+k−1)/(2k−1)≤d/k，故binom(d+k−1,2k−1)≤(ed/k)^{2k−1}<(ed/k)^{2k}。这比先用d+k≤2d节省固定因子。

另一分支m≥k³，由1/4=∏(1−d/(m+i))≥1−Σd/(m+i)，得到d>3m/(4k)≥3k²/4。待核验显式常数及源定理。暂未写Lean。
