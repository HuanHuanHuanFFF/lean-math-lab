# 短间隙及固定间隙完整验收

设P_k(n)=∏_{i=1}^k(n+i)，原题H为自然数k,n,m、k≥2、n+k≤m及P_k(m)=4P_k(n)。本批不改原题，也不把外部定理加入假设。

`lean/shortgap/Consumer.lean` 的 `B686ShortGapConsumer.original_gap_ge_eight` 从H直接给m≥n+k+8。已采用最新全长度距离界给k²<64d；若d=k+h且h≤7，k≥71会使k²≥71k>64k+448，故k≤70。历史k=2..21全n证书加本批k=22..70、h=0..7的392组双严格相邻符号，由同一交叉相乘单调性处理每个自然数n。Python生成器只提供待核验cutoff数据，所有严格符号由`decide +kernel`证明；没有搜索起点截断或概率哈希前提。

完整fresh证据：[20260908T120354Z/evidence.json](../../verification/20260908T120354Z/evidence.json)，14项目源码从空对象根重编、3最终公理guard通过，仅标准三项。源码与有限覆盖的独立审查为[shortgap-independent-review.md](../../reviews/shortgap-independent-review.md)。

`lean/shortgap/FixedGap.lean` 的 `B686FixedGap.original_fixed_gap_bounds` 保留旧报告精确常数：s=⌊(4h+7)/3⌋、p_r为第r个素数、B(h)=max(293,h+8,p_{s+1}−1)。对所有自然h,k,n，k≥2及P_k(n+k+h)=4P_k(n)推出2k+h≤B(h)、k≤⌊(B(h)−h)/2⌋、n<B(h)²；`fixed_gap_solutions_finite` 给每个固定h的全部原解三元组集合有限。

新证明只需三个大于3的递增素数首尾差至少6：若差小于6，三数为a,a+2,a+4，其中一个被3整除。由此零基第j个素数满足3j≤p_j+2，推出B(h)≥max(293,4h+2)。反设2k+h>B(h)迫使k≥111及3h+2<2k，与k²<64(k+h)矛盾。最后用旧GapBounds的原题起点界，无任何大素因子计数前提。

完整fresh证据：[20260908T120826Z/evidence.json](../../verification/20260908T120826Z/evidence.json)，13项目源码、3最终标准公理guard通过。独立审查为[fixedgap-independent-review.md](../../reviews/fixedgap-independent-review.md)。

此前SmallGapBridge和DeletedSquareBridge完成的外部条件应用桥只保留为替代路线记录，不计作最终消费者的前提。MS2004未因此被声称Lean化。本批另移植的Sylvester–Schur由其独立验收记录说明；这两项当前证明不依赖它。方法调整增强了既有已报告结论的形式可靠性，未新排除h≥8的全部区域。

失败记录保留于verification/shortgap/development。FixedGap首次失败为模余数算术需要显式有限分支和Nat乘积/三元组投影规范化，不是数学反例；改用显式余数1/2分类后通过。首次短间隙原题消费者直接编译成功。
