# 有限端点与相对链：独立对应核对

核验者 `/root/tail90_verification`，源审读；实际编译/AX/checker/source-object-raw绑定前不升格为 Lean 接受。固定字节列表与准确 literal 见 [程序](review_candidates.py) 产生的 [审读清单](CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json)。

`EndpointLegacy.common_of_tail_chain_endpoint` 改进的惟一数值条件为 `4095*K≤U`。低比例分支仍是严格 `n<4096*i`。`n<U` 用原 chain；`U≤n` 用同一个已接受末素数 U，而 `i≤K` 给 `4095*i≤U`，因此 `n<4096*i≤U+i`，得到 `n-i<U`。`p=U≤n` 的整数右端包含等号，没有漏 `n=U`。原 top-prime 消费者保证同实际 prime、双完整 choose 整除和原全部合法 j。

新 `RatioPrimeChain` 的 step 是 `p<q`、实际 `p.Prime`、`4095*q≤4096*p`、下一段 chain；singleton 自带实际最后 prime。每段采用半开 `[lo,hi)`，输出 `p.Prime ∧ p≤n ∧ 4095*n<4096*p`。严格性来自 `n<q`，即使 ratio edge 等号也不丢失。singleton 域为空，由 `lo≤n<lo` 排除；在整个尾部消费者内末端 hi 另走 final-prime 分支，所以没有缺 hi 端点。

`top_of_ratio` 不改变 Nat 减法：`p≤n` 确保差值正常；若 `n-i≥p`，则 `n≥p+i`，将 `n<4096*i` 与 `4095*n<4096*p` 联立即矛盾。因此严格 `n-i<p`。这段只涉及固定整数系数的线性算术，不引入新的分布假设。

`RatioEndpointLegacy.common_of_ratio_tail_endpoint` 依次处理 `n≥4096*i` 的旧比例全域、`n<20000093` 的旧完整链、`20000093≤n<20482069` 的旧tail5000链、`20482069≤n<U` 的新相对链、`U≤n<4096*i` 的末prime。所有边界覆盖，consumer保持 `4883≤i≤K`、全部 Nat n/j、`i<j≤n/2`，没有 Gap、chain、primality 或高度作为最终 literal 的外部输入。helper参数不是闭合结论；其具体输入必须由新编链真实消去。

独立字面目标固定为单 K 与闭区间 `[4883,K]`，K依次5001、6000、10000。生成器或 Python integer edge 检查不证明 `Nat.Prime`，各实际 prime声明及所有 chain/helper/consumer/literal均需新编、传递 AX、normalchecker。这里没有原创新颖性主张；这是既有原题消费者的初等有限接线候选。

若K=6000或10000通过，消去有限 i 区间，n/j仍完整无界；真 Gap 的无界 y，以及更大 i 的低比例 n/j、低23与 R7保留。
