# F677-02 完整有限范围最终验收

状态：已完成。2026-09-08 的同一次 fresh 分配从源码重建全部 792 个项目模块，两个最终消费者均成功编译；随后完整性核对通过。有限目标本身不含 Dusart 前提。

## 可调用的精确消费者

```lean
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.Consumer

B677FiniteConsumer.interval_lcm_ne_below_89693 :
  ∀ n m k : ℕ, 0 < k → n + k ≤ m → m < 89693 →
    B677.intervalLcm n k ≠ B677.intervalLcm m k
```

覆盖全部自然数起点和全部正长度；没有 `m+k<89693` 附加条件。最终根源码 SHA-256：`17a27dc5422bfa1e8b5f5d838cc7b960d3ec168db990fae53747e02626bfff9f`。

## 实际证明链

71 行数据覆盖 `89693×71=6,368,203` 个窗口。精确 gcd 反射引理把下一长度的 LCM 递推化为已知初始 LCM 与新端点的 gcd；全部模值逐点由内核检查连接到真实区间 LCM。确定性代表元只需满足 `r≤n<r+k`，相同 LCM 导致同一查表结果，立即排除相距至少 k 的两个起点。没有哈希单射或概率前提。

每行 8 个 Part 的深度 14 树通过通用拼接引理组合为深度 17；第 6 个 Part 包含最后一个有效起点及其后填充点，最后两个 Part 完全位于范围之外。最终命题量化全部 `n<89693`，填充点的省略不缩小范围。初始长度和全部 70 次精确更新、71 组代表元跨度均经过内核检查。

对 `k≥72`，1372 个已核验素数见证及全部相邻跨度给出 `m<p≤m+72`，由分离条件排除前后区间 LCM 相等。最终 `k≤71` / `k≥72` 分支覆盖所有正自然数长度。

全部直接值计算使用 `decide +kernel`。Python 仅生成未信任数据和安排编译；没有 `native_decide`、`sorry`、`admit` 或新公理。初始加权素数幂/排序路线与逆元 gcd 数据并非最终所需数学假设，诊断和未采用的路线原样保留。

## 证据与固定依赖

- 完整证据：`verification/finite/20260908T105847632428Z/evidence.json`。
- 证据 SHA-256：`4adef04687e5b3ca2835fb72ea8db3a5dae13163a6f2946f35f523fad036b2f8`。
- 完整性结果：同目录 `acceptance-check.json`，SHA-256 `ae31c97b60f3ffbf6a2d293ef8f61a66bfff100c17c33a2935462274c1b5a770`。
- 一次完整 attempt：`2026-09-08T10:58:47.635845Z` 至 `2026-09-08T12:57:06.859747Z`，7099.224 秒，792 次编译全部退出 0。最终源哈希与启动前全部相同。
- 根有 1 个可失败的传递公理 guard，唯一允许的公理为 `propext`、`Classical.choice`、`Quot.sound`，实际编译通过。完整项目源策略扫描通过。
- 固定 Lean `4.33.1`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，其余 8 个 package revision 也全部与原锁一致。项目对象全部由此次分配中的源码编译得到；固定包/工具链对象按既有允许的缓存机制使用。
- `check_acceptance.py` 再核对全部 792 份源码、项目对象、原始编译日志和依赖哈希，以及实际 verifier/helper 字节、工具链日志、pins、根 guard 与 4 个直接外部对象。该步骤没有重编 Lean，也没有用 Python 代替数学证明。

原始 attempt 日志完整保留。此完整 run 没有失败、SIGKILL 或 ENOSPC；此前磁盘余量告警及资源竞争不冒充实际失败，较早成本探针的失败另见 `cost-routes.md`。最多 4 个编译器，内存不足 5 GB 时减少后续并发；不把成本探针的时限当作全任务截止。

数据来源记录为 `lean/finite/certificate/generation.json`；其中 Check 的哈希指重新包装前版本。`packaging.json` 明确映射各行包装前后 Check 哈希，并给出当前 Pred/Part 哈希。最终接受的源码以 fresh evidence 的完整哈希表为准，生成记录不承担证明作用。

## 独立审查与交接

`reviews/finite-independent-review.md` 的只读独立数学/覆盖审查未发现实质问题，SHA-256：`af415ec7e29005ff6911456bbc61361dcdcb5275e34b2ded4190b5521376aee8`。审查覆盖精确 gcd 递推、查表条件的充分性、71 行与 1136 个分块目标的编号、完整树覆盖及最终两分支量词；其早期运行快照明确保留 pending，当时没有提前宣称完整编译成功。完整编译与最终 guard 的接受由上述最终证据另行提供。

对象根：`.lake/research-runs/b677-finite-20260908T105847632428Z/olean`。本子任务现在交给主线程在同次 fresh 分配中追加解析消费者所需的新项目源，并另写扩展 manifest；原有限 evidence 与本完整性结果保持不变，不再复跑 792 个模块。

本结果关闭有限范围 F677-02。大范围 `8/369` 区域结论由主线程另接已经完成的初等界和显式 `DusartPrimeInterval`；Dusart 本身仍是单独外部形式化义务，不因本有限证书完成而被宣称闭合。
