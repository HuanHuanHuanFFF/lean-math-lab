# F677-02：有限证明链义务与初始证书路线

最终有限目标已完成；完整验收见 [acceptance.md](acceptance.md)。本文保留初始选路记录。最终采用的精确模 LCM / 确定性代表元证书及其完整覆盖检查点见
[full-certificate-checkpoint.md](full-certificate-checkpoint.md)，各次成本诊断见
[cost-routes.md](cost-routes.md)。下面的加权 prime-power 签名与排序方案未作为最终依赖。

主线程于本轮追加此任务。目标不缩小：

```lean
∀ n m k : ℕ, 0 < k → n + k ≤ m → m < 89693 →
  B677.intervalLcm n k ≠ B677.intervalLcm m k
```

本子任务新拥有 `lean/finite/`、`notes/finite/`、`verification/finite/`、`experiments/finite/`。不写共享账本或原始有限记录，不新增固定截止，不 spawn。已完成的初等 bounds 模块保持冻结。最终 `8/369` 全链另需主线程的 Dusart 衔接。

## 已有依据与证据边界

前批 `primary/finite_check.py` 实测查询 6,368,203 个区间（`0≤m<89693`、`1≤k≤71`），按精确 LCM 的最早起点排除了全部不相交相等；prime-gap 72 证书把所有候选长度限制到 71。该 Python 结果是选路与输入生成依据，不是本任务的 Lean 证明。

## 可证的签名路线：先测成本

对固定长度 `k`，选择有限 prime-power 集 `Q` 和自然数权重 `w(q)`，定义

```text
signature(n,k) = Σ_{x=n+1}^{n+k} Σ_{q∈Q, q>k, q∣x} w(q).
```

因 `q>k`，任一窗口至多含一个 `q` 的倍数；因 `q` 是素数幂，`q∣LCM` 当且仅当窗口中有 `q` 的倍数。因此 LCM 相等必签名相等。不同 LCM 的签名偶然相等只会令证书失败，不会损伤推理健全性。

第一项判别实验取 `w(q)=q^5`，比较可重算加法筛/前缀和与直接区间定义的小样本、搜索不相交签名碰撞、估计排序索引证书大小。排序证书拟包括每个签名组的首个起点和每个起点到组的索引：检查组签名严格递增、每个起点的签名与组相同且处于 `[first,first+k)`。这同时证明所有起点被覆盖、同签名跨度严格小于 k，不枚举所有起点对。

Lean 计算将使用普通 `decide`/内核可归约证书，不允许 `native_decide`、占位证明或新公理。先在小范围检查 kernel 实际成本，再据诊断选择完整生成或调整证书结构。此文件初始记录不声称任何新有限消费者已被证明。
