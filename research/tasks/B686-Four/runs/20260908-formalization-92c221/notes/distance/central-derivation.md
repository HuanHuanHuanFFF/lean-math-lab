# 中心相邻距离支撑：完整桥的实现推导

采用基线08a8ac6872e8abfd4a2c480496da350a97ecdc13，reflected-sum/b/cofactor-structure-and-pell.md §6.1及其a/offline-audit来源。量词为所有r,n,m∈ℕ，r≥2、n+2r≤m、P_{2r}(m)=4P_{2r}(n)，所有p>2r且p|d=m−n命中n+r或n+r+1。A是d的完整2r-smooth部分。目标严格界d<8A³(2r)³、3m<32A³(2r)⁴，没有增加分组或接触前提。

实现等价调整：R_i=3(n+i)−d，G=rR_rR_{r+1}−4d²。原距离高位置定理识别任意指定粗素数命中位置，给q=p^{v_p(d)}|n+i及q²|R_i。配对积P在左中心z=n+r表示为z(z+r)K(z)，右中心z=n+r+1表示为z(z−r)K(z)，K(z)=∏_{a=1}^{r−1}(z²−a²)。K(z)≡K(0) mod q²，K(0)与q互素。原方程模q³给q³|4d²−3rR_r或q³|4d²+3rR_{r+1}。由于两接触相差3，两个分支都直接给q³|G。因此可直接将全部粗素数幂的立方合并，不需要调用者构造u,v,s,t。

由原大小界(2r)d<2m可得d<n，故两R均>2d；r≥2给G>0。原窗口R<4(2r)d给G<8(2r)³d²。完整分解d=A·D及D³|G推出目标。Lean模块DistanceRoughSupport、CentralPair、CentralConsumer覆盖此链，最终声明original_central_distance_support_bounds是实际可运行消费者。

2026-09-08 UTC定向编译已成功；新输出完整闭包验收已启动，最终状态须以对应evidence.json为准。迭代失败主要是Cast、Int.ModEq乘积归纳、乘法不等式API、以及改写次序；没有发现数学反例，也没有修改原声明范围。失败日志保留verification/development-distance。
