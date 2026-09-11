# 实际成本与覆盖登记

本表记录本环境已经执行的接收，不预测Lean耗时。旧content有限块本轮未重跑。

|实际接收阶段|记录秒数|
|---|---:|
|frozen-inputs-and-C-alignment|2.823|
|inherited-graph-DAG-receiving|1.448|
|compile-independent-graph-grid|1.641|
|inherited-graph-independent-grid|0.767|
|C-minimal-common-divisor-bridge|10.929|
|tightened-cut-height-two-exact-paths|7.624|
|new-universal-lemma-finite-regressions|1.592|
|compile-GMP-block-receiver|1.818|
|all-i14-large-exponent-blocks|459.160|
|i14-direct-local-CRT-complete-union|4.791|
|i14-every-candidate-all-j|1.602|
|i9-two-profiles-and-finite-blocks|1.739|
|i9-direct-local-CRT-complete-union|6.455|
|i9-every-finite-range-candidate-all-j|1.515|
|i9-exact-method-boundary|1.521|
|current-route-negative-tests|7.889|
|alternate-check_crt|9.675|
|alternate-check_candidates|2.741|
|alternate-check_terminal|6.767|
|alternate-negative_tests|2.919|
|完整串行驱动总耗时（含替代路线）|535.565|

另在干净目录从暂存ZIP解压后实际执行 --quick，54.683 秒通过。该次明确跳过大整数i14块，不登记为第二次大块全验。

## 首选路线的完备检查量

|对象|覆盖|
|---|---|
|i14 exponent blocks|全部15对，1,924块，51,948个带符号余数|
|i14 direct CRT|96,737幂对，2,611,899带符号分支，3,820可行项|
|i14 terminal|6,270候选，全部合法j，残余0|
|i9 finite blocks|18流，839块，14,263余数，显式前提n<2^4096|
|i9 direct CRT|204,917幂对，3,483,589分支，1,136可行项|
|i9 terminal|1,303候选，全部合法j，残余0|
|C minimal bridge|2,923行，609,501个素数幂记录|

发现构造与完备接受分别有代码和日志。旧约2.38×10^19的M-CRT符号项没有实际展开。当前主路线不要求枚举所有n或j。

未测量：Lean内核时间、Lean内存、形式化开发工时、独立外部人工审读工时。不得把GMP重放秒数当作这些数据。
