# B686 一般与对称两位置距离消费者：独立数学读审

审查人：B677 bounds/finite 子任务；由主线程请求，在完整有限证书运行期间进行。2026-09-08 UTC。这里只写本子任务拥有的记录，供主线程链接归账。

结论：所读实际源码与采用纸面 `20260908-reflected-sum-9bad0b9/b/cofactor-structure-and-pell.md` §§5–6 一致，未发现数学错误或消费者范围缩水。此为独立源码与数学对照；本记录不冒充额外 fresh Lean 构建，编译与传递公理验收以主线程专项证据为准。

## 核对的实际消费者

- `original_general_two_position_bounds`：原方程、`k≥40`、`n+k≤m`、`1≤i<j≤k` 及所有距离粗素数只命中这两位置，给 `d<324 q_i q_j A^5 k^4`、`m<432 q_i q_j A^5 k^5`。
- `original_general_center_band_height`：同一原方程与支持条件；约分后的实际分母满足 `q_l≤k^{|k+1−2l|}`，给 `m<432 A^5 k^{rho_i+rho_j+5}`。
- `original_symmetric_two_position_bounds`：再加 `i+j=k+1`，给约分分母版 `d<16 q A^3 k^2`、`3m<64 q A^3 k^3`，及 `h=j−i` 的两项固定间距指数版。保留所有满足位置整数条件的两种长度奇偶；没有错误声称同一个 h 可以搭配两种 k 奇偶。

## 关键数学检查

1. `rootCofactor` 是实际整系数乘积，常数项为所有非零偏移的积，线性/常数比确等于完整带符号倒数和 `H_{k−i}−H_{i−1}`。因此分母是 Lean `Rat.den` 的最简正分母，零中心自动是0/1；未假定或约去调和分子。
2. 对 `p>k≥40`，常数项所有偏移绝对值都小于 p，故可约去常数项。完整赋值和平方接触先从原方程的唯一高位置推出，再复用全整数 `cubic_cofactor`，没有把根展开、接触或局部单位证书变成最终前提。
3. 定义 `G_i=q_i R_i R_j−4(j−i)p_i d²`；自身命中位置给完整 `p^{3v_p(d)}`，另一位置给 `p^{2v_p(d)}`。于是全粗距离的 `D^5|G_iG_j`，不需额外 s,t 分组证书。交换位置的符号与纸面 X_j 正号一致。
4. `|H_i|≤k/2`、`|j−i|≤k−1` 与 `2R_l>(3k−8)d` 给严格正性。关键多项式差为 `(3k−8)^2−8k(k−1)=k(k−40)+64>0`，边界 k=40 没有遗漏。再由 `R_l<4kd` 得 `0<G_l<18q_l k²d²`，没有零辅助式除法。
5. 对称反射满足 `H_j=−H_i`、`q_j=q_i`、`G_j=G_i`；i<j 强制 H_i>0，改进为 `D³|G_i` 且 `G_i<16q_i k²d²`。随后约去 d 的正幂合法，因为原分离与 k≥40 保证 d>0。
6. 光滑部分 A 与粗部分 D 是 d 的实际全素数幂乘积，A>0 且 AD=d。324/432 和16/64常数分别由五次/三次整除以及原条带 `3m<4kd` 得到；后者保留 `3m` 避免取整歧义。
7. 分母界的倒数差恰含 `rho=|k+1−2i|` 项，递推 `den(x+y)|den(x)den(y)` 给 `q≤k^rho`。对称时 rho=j−i，符号、自然数减法与零偏移三种边界均由原位置条件控制。

## 仍须保持的结论边界

这些是采用纸面路线的形式化，不是新增全题排除。一般位置或不受控的 A 仍可能使界非多项式；没有证明全部原题候选必须落入有限中心带或两个支持位置。本审查不覆盖 Pell 放松族、矩阵路线或解析四分之一次根部分。

## 已读源码 SHA-256

路径均相对 `research/tasks/B686-Four/runs/20260908-formalization-92c221/`。

| 源码 | SHA-256 |
|---|---|
| lean/distance/PairBounds.lean | 87a6a1e992c422d012ba5b34c0182827e34f0f13bf20263ccd6a056072c09fc8 |
| lean/distance/SymmetricConsumer.lean | c0bfd12e1da3da91adb430d8b2c27848922e3376020701e9e9c0f8a673c34514 |
| lean/distance/PairAuxiliary.lean | e617183740d979a2de92416cb7915be627eeddfd2ed4d340002623a21912757b |
| lean/distance/HarmonicContact.lean | c32f613bf3e81dff2f780a987901f5bf1898db13e78ae254c07fb53a8a72ac31 |
| lean/distance/HarmonicSum.lean | 0331ac5411b73fced3db86108e7664b3fa96551d5012a512843cb07f24257c20 |
| lean/distance/HarmonicDenominator.lean | 7f08b476a0a698e45be1709fa65f2ecc99edcd9b4154191be8749e09f144ce6c |
| lean/distance/DistanceRoughSupport.lean | 02bbe29abe8e8649604399561979a4fa3acea24459a97928f886e414ab486f9b |
| lean/reflected/DistancePrimePower.lean | cbbabb6f3cc627245018148c42955617955b8dbeeb664c5bd94235d1f92bc86c |
