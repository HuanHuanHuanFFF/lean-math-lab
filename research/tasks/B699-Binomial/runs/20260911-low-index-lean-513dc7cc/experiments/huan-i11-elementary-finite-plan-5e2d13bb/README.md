# i11 初等 G 有限参数计划（进行中）

负责人 `/root/pade_construction`；唯一写入本目录，不改旧源，不运行 Lean/Git。输入是已冻结 `huan-G-rational-ratio-search-5e2d13bb/joint-candidates.json` 中 i11 的五行共同候选。目标是选有余量的共同权重、精确有理 L_target/L_mid、证明真实 D 的后续统一递推，给有限 m0/height 与覆盖成本估计。用户无总时限，本轮以具体有限阈值方案作检查点；任何失败或代价过大均保留，不把渐近正余量计入原题。

已确定的精确归约：设 b=c-d，q=1（b偶）或2（b奇），m=qk+rho，其中q=1只取rho=0，q=2取rho=0/1。u=dq*k+d*rho-delta，v=bq*k+b*rho+delta-1，f=(bq/2)*k+floor((b*rho+delta-1)/2)。D=(u+f)!f!/(u!v!)。每步k->k+1的比是明确整数线性因子乘积 N(k)/T(k)，不是递推假设。

计划先检验一个粗但全程的下界 N/T >= R_inf*((k+1)/(k+2))^J（优先J=2，否则小范围J=3/4），以仅m=1/2的小阶乘得到 D 的多项式损失下界。再找较小 K，使 N/T >= L_mid^(d*q) 的差多项式在x=k-K上全非负。前者可在K处给一个仅有小幂与(K+1)^J的初始常数，避免展开D(K)的巨大阶乘。

若初始 D/L_target^(dm) >= 2^(-T)，令R=(L_mid/L_target)^(dq)>1，选固定B使B*(R-1)>=1；Bernoulli给R^B>=2。再走(T+1)B步可得到严格D>L_target^(dm)，形成显式m0，无需展开巨大块次幂。

另需对新(9,5),(23,15),(11,7)重新生成实际Factorial正系数前置，并对全部五行重新计算Q/E Bernstein树及两delta的K*moment(weight)/lambda常数；数值证书不替代这些Lean义务。旧高度全局检查为 B*Delta > 1000*lambda*factorial_bit_upper + lambda*(1000+S)，来自原refine_height_profiles.py；须保留其公式及源hash。

最终检查点：B_n=15360、B_Y=15359，五行权重248/252、60/330、226/268、354/228、352/216，m0=141/224/160/129/149，S640、Delta40、全局整数余量310360。308个D系数独立重建通过，D正式基础项最大18!；81个QE叶独立通过。详情见 REPORT.md、FINAL_PLAN.json 和 LEAN_OBLIGATIONS.json。覆盖仍估计10,243,569,714朴素步骤，未执行；原题仍未完成。旧统一6降权方案保留，最终只改变联合权重与高度。
