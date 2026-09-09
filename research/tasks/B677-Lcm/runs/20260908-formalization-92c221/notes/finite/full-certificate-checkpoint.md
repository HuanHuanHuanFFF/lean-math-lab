# 完整有限证书检查点

目标未变：`∀n m k:ℕ, 0<k → n+k≤m → m<89693 → intervalLcm n k≠intervalLcm m k`。无固定总截止；成本探针时限不是研究截止。Dusart 仍属于主线程的外部解析前提，不进入本有限定理。

完整生成已完成：`lean/finite/certificate/`，89693起点 × 71长度 = 6,368,203窗口，208,608,320字节数据，模数18446744073709551557。生成是未信任输入；每个模值由 Lean 核验初始值和精确 gcd 更新，确定性lookup只核验代表元跨度，无hash单射或概率假设。

`Nat.gcd` 在固定 Lean 4.33.1 中由内核算术实现高效归约（`Init/Data/Nat/Gcd.lean` 明文说明）。先前添加的逆元gcd证书是可调用的已证备用实现，不再是最终检查数据依赖。最终采用直接内核gcd和较大压缩叶块。`1500/5` 的最终样本已通过全部消费者、填充块合并和标准公理守卫，证据在 `experiments/finite/hash-1500-5-20260908T104857372056Z/kernel-cost.json`。

完整生成的线性位移表布局曾停滞。20秒剖析显示超过2100万次探测，原日志在 `experiments/finite/hash-generation-cost-20260908T105412462984Z/`。改成固定种子的分散探测后，k=2全89693数据生成0.438秒；完整71行生成75.279秒。这里只改输入生成的效率，不改变被Lean核验的条件。原部分生成和旧helper按原字节归档。

`split_hash_checks.py` 将检查重新包装为568个独立Part模块，每个最多16384起点，内部保留256起点的kernel证明。完整树的两层以上空白块由通用 `allTree_outside` 证明，全部Part由 `allTree_join` 精确合并；覆盖范围没有缩小。

当前 fresh 验收：`verification/finite/20260908T105847632428Z/evidence.json`。

对象根：`.lake/research-runs/b677-finite-20260908T105847632428Z/olean`。

运行入口：`verification/finite/verify_finite.py --jobs 4 --reserve-gb 5`。实际项目闭包792模块；最多4个Lean编译，可用内存不足5GB时不补满并发。每个成功模块记录源码、依赖、对象及原始日志哈希；`--resume verification/finite/20260908T105847632428Z` 只复用该次新分配目录中哈希全部匹配且依赖未变化的成功块，其他块重新编译。成功对象不能由Python生成结果代替。

最终状态：全部792模块及root已于2026-09-08T12:57:06.859747Z通过，一次attempt、零失败，标准三公理guard与最终完整性核对均通过。完整接受记录见 [acceptance.md](acceptance.md)；原始evidence保持不变。工作区曾出现磁盘余量告警，但此次完整run没有ENOSPC或SIGKILL。对象根交给主线程继续追加解析消费者，清理前须完成其扩展验收。
