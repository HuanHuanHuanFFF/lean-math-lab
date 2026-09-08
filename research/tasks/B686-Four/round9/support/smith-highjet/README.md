# k=5, μ=6, D=8 有限格基诊断

输入由 [highjet-input.json](highjet-input.json) 冻结：四点支持、24×35 精确有理 Taylor 行及 primitive 整数矩阵，SHA-256 为 `63db9af13f8ba9ef2856b4b805ff1ac2c4010d9807986aec87e6c7e63927ebd6`。B 的共同零独立验收源为 `independent/highjet-acceptance/base-locus-audit.json`，SHA-256 为 `42e9dc8304bf096f25c3d4f5f38a558b1ef3bd4092f95359ef19445b693819c2`。

SymPy 的 `smith_normal_decomp` 在 24×35 高阶矩阵上于预算内未完成，运行约 12 分钟后停止；`highjet-diagnostic.json` 保留阶段、PID、资源和未完成状态。图格 HNF `G=[I_35;A]` 的 60 秒尝试也未完成，未把任何中间结果宣称为饱和核。

按主任务收紧后的可用结果是：直接读取 B 已保存的 11 个 primitive Q-kernel 向量做 SymPy `DomainMatrix.lll_transform`。结果见 [lll-subbasis-results.json](lll-subbasis-results.json)，SHA-256 为 `91af40be7947131617dc38a76d2d195c82de3792aea998dc16a0860498ef0bf4`：

- 源向量为整数，rank=11，`A*Kᵀ=0`；
- LLL 变换矩阵整数且 determinant = −1，`reduced = T*source`；
- reduced rank=11，且 `A*reducedᵀ=0`；
- 未约化和约化最大绝对值相同（均为 `110688539894450427485812867756244312051682891414808192746000`）。

这只是 B 已有 Q-span 的整系数子格约化，不是完整 saturated Z-kernel，也不提供最优性声明。B 的共同零 resultant 审计单独负责正点非零性；本目录没有重复执行。
