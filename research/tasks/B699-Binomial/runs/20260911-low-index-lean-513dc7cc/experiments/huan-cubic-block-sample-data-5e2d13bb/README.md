# Cubic block sample data

本目录选取旧 delivery 的最小完整 block：results/block_11_2_3.json 第 0 条，p=2、q=3、u=45、L=1、b0=18、w=10、v=0xa65ff23（十进制 174456611）。原 block 只存 K/L/B/inverse；本候选独立补出完整 21 个 d、rho、u、b0、L 和边界常量。

独立标准库检查验证了 (P*v) % Q = 1、Q^3 ≤ (P-w)^2 < q^(3*(b0+1))、全部 d=-10..10 的 rho^2 > p^(u+3L)，并确认 d=0 的最小正代表是 Q。v+1 逆元篡改和 L+1 边界篡改均被拒绝。

Lean 候选是 candidate/CubicBlockSample.lean，只含 Nat/Int 常量、norm_num/decide 候选证明和 21 项枚举接口；未运行 Lean。与 pade_construction 的接口为 p,q,u,L,b0,w,v，P=p^u、Q=q^b0、rho 使用 Int.toNat 的有符号余数并将 0 映射为 Q。

原 block_targets.py、check_targets.py 和六对 i=11 结果文件的 SHA 保存在 sample.json/source-map.json。生成耗时 0.002320 秒，候选大小 3505 bytes。
