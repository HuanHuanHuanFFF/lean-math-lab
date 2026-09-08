# 一般两位置路线的任意根接触

目标为采用cofactor-structure-and-pell.md §§5–6的完整一般/对称两位置高度消费者；中心相邻子项已闭合。先构造rootCofactor=∏_{a≠i}(X+a−i)，从实际coeff0,coeff1定义最简有理harmonicRatio；X²整除去掉常数和一次项后的多项式给真实整系数Taylor余项。复用既有K5CubicSlots.cubic_cofactor的全整数通用定理（其语句没有k=5限制），接本批distance_rough_contact，得到原题任意粗命中处p^{3v_p(d)}|3den(H)R_i−4num(H)d²。

HarmonicContact.lean已定向编译并通过final声明guard。尚待证明harmonicRatio确等于纸面∑_{a≠i}1/(a−i)、分母界、完整支撑分组及辅助式非零/高度，不能以当前中间定理关闭一般两位置目标。下一步先证sum接口与调和绝对值界，再接两个原题最终消费者。

2026-09-08后续闭合：HarmonicSum已证构造H确为完整有符号倒数和，H=harmonic(k−i)−harmonic(i−1)，|H|≤k/2。HarmonicDenominator由差分递推和最简分母整除证q≤k^{|k+1−2i|}，包含正、负与零三种中心偏移。PairAuxiliary定义G_i=q_i R_iR_j−4(j−i)p_i d²，G_j=q_j R_iR_j+4(j−i)p_j d²。每个粗幂q在自身命中位置给q³整除相应G，同时q²整除另一G，因此粗距离D⁵整除G_iG_j，不需要显式u,v,A分组证书。原条带及调和界在k≥40给0<G_i<18q_i k²d²，得到d<324q_iq_jA⁵k⁴、m<432q_iq_jA⁵k⁵。PairBounds最终原题消费者已通过fresh 20260908T103044Z。

对称i+j=k+1时已证H_j=−H_i且H_i>0，G_j=G_i，所以D³整除G_i，并有0<G_i<16q_i k²d²。SymmetricConsumer已定向编译成功，保留所有k≥40、i<j以及两种k奇偶，给d<16qA³k²、3m<64qA³k³，同时用q≤k^{j−i}给纸面固定间距的两项指数界。它还给完整一般中心带m<432A⁵k^{rho_i+rho_j+5}。新fresh验收运行中。

以上是采用纸面证明的等价整除实现，未新排除纸面之外的原题参数。全部间接接触/分母/分组算术输入现已从原方程推导；最终消费者只保留纸面明确要求的粗素数二位置支持。
