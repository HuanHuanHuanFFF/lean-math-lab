# 统一计数尾比较的独立复核

核验者：`runtime_review`，2026-10-01 15:27 UTC。AI技术审查，不是第二内核或人工同行复审。

接受 `tail/UniformCountTail.lean` 的准确终端：全部自然数n,i，当i≥131072且满足定义中真实 `ρ=π(i−1)/i` 的归一化A时，n<4096i。这里仍显式以A为输入；A已由本轮另一已接受noCommon_normalized_1000实际供应，但本文件不是已编译的共同素数消费者。

证明将完整EC用于实数i，使用 `π(i−1)≤π(i)` 的实际Nat单调性而不偷换inclusive计数。log i至少17log2，导出3项精确有理上界：`ρ≤225/1661`、`ρ log i≤23800/14949`、`3log i/i≤425/1572864`。log b/b单调所需小体依固定 `Log/Monotone` 方法在适当正域与log a≥1假设下直接复证，未假设PNT/RS。

若n≥4096i，则X=n/i≥4096且h=(i−1)/n≤1/4096；A左端系数至少43076229/217710592，log X≥672/81。精确误差界与3项上界给正矛盾裕量。所有乘法/除法正性在证明体中供应，不要求n额外高度界或h≥0；新helper的一般x/rho/EC假设在Nat终端由真实EC与count证明全部供应。

固定source SHA256和object以 `tail/verification/20261001T151446065Z/evidence.json` 为准。source/snapshot/object/receipt/stdout五hash已独立核对全匹配；真实exit0、23.617秒、树WS1651.64MiB，M3132/WS1792、Native0x2030/commit0。3个实际根全标准三公理，无占位证明或额外项目axiom。

这完成了i≥131072的统一A→线性高度路线。4883≤i<131072的计数比较、i≥131072时n<4096i区域及Gap/终端仍待工作；所有i/n/j未因此全有界。把N与此根接到原题已准备但尚需最终消费者实际编译/公理/独立接受，不能仅因逻辑接线短就提前登记新原题素数区域或完整指标。
