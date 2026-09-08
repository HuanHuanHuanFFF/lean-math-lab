# B677 有限核验代码审计

审计时间：2026-09-08（Asia/Shanghai）。审计对象为 `primary/finite_check.py`、`explorer/check_finite_cones.py`、`explorer/check_bounded_start.py` 及其已保存 JSON / log。审计只检查程序覆盖、边界、滑窗、素数筛、计数、hash 和公开材料卫生；不重新运行三份长计算，不审查外部解析定理的数学正确性。

## 结论

未发现阻断性的代码覆盖或边界缺陷。三个程序都以完整 Python 整数作为 LCM 值；`dict` / `Counter` 的键没有截断、取模或短 hash。现有结果足以支持各自声明的有限范围内“未发现碰撞”，但不能升级为无限范围结论、Dusart/论文链条已证实，或 Lean kernel 已接受。

## 实际覆盖

### primary/finite_check.py

- `--limit` 是 later start `m` 的 exclusive bound（第 7 行）；当前 JSON 为 `m=0,...,89692`。
- `nextp` 与 `min(m, nextp[m]-m-1)`（第 24--27 行）给出 `k<=71`。`k<=m` 来自 `n>=0` 且 `n+k<=m`；`nextp[m]-m-1` 来自 later interval 不能含素数。素数表先用 sieve 生成，再用 trial division 重建到首个 `p>=89693` 并逐项相等断言（第 11--22 行）。证书为 `89753`、`8689` 个素数。
- 稀疏表 `query`（第 30--35 行）用两个覆盖并可重叠的二次幂块求完整区间 LCM；第 38--43 行在 `n<=100`、`k<=71`（当前 max k）做直接定义交叉检查，并保留了非凸 fibre 的例子。
- sweep 遍历 `k=1..71` 和每个 `m=0..89692`（第 45--60 行）。`seen` 保留每个完整整数 LCM 的最早 start；只有 `m-earliest>=k` 才报告合法 disjoint collision，因此覆盖所有 `n+k<=m`，而重叠重复只计入 `overlap_equal_hits`。
- JSON 一致性：71 行、每行 `89693` later starts，合计 `6368203`，`witness=null`；独立算术检查与这些计数一致。

### explorer/check_finite_cones.py

- `LIMIT=89693`、`CONES=(4,8)`（第 12--13 行）；每个 `k=1..71`，每个 later `m=k..89692`。
- `LcmQueue` 的双栈聚合在 push/pop 后表示从 `n+1` 到 `n+k` 的完整 LCM；直接定义交叉检查为 `0<=n<=200, 1<=k<=15`（第 24--50 行）。
- 对每个 `m` 先加入 `n=m-k`，移除 `expired=m-C*k-1`（第 69--77 行），所以 active 恰为 `[max(0,m-C*k), m-k]`。later 区间含素数时按第 78 行跳过；在合法 disjoint 条件下，该素数大于 `m>=n+k`，不可能整除 earlier LCM，因此这个过滤不漏碰撞。
- 对 prime-free `(m,k)`，`lo`/`hi`（第 82--88 行）覆盖 C=4、C=8 的全部 earlier starts；Counter membership 使用完整整数，命中后再对整个 `[lo,hi]` 做原始 `math.lcm` 复核。
- JSON 结果：prime-free 查询 `691093`；C=4 覆盖 `17567901` 个 cone triples，C=8 覆盖 `40070219` 个；两者 `collisions=[]`。

### explorer/check_bounded_start.py

- 第二份 sieve 覆盖到 `SIEVE_END=179387`，并对每个候选 bit 用完整 trial division 复核（第 11--21 行）。`next_p` 的赋值顺序使它是严格大于 `m` 的下一素数；当前 `K=71`。
- 对固定 `k`，`earlier` 从 `n=0` 逐步加入，保留到 `n<=369*k`（第 51--57 行）；later `m` 遍历 `k..89692`。prime-free 时 `n_max=min(m-k,369*k)`（第 58--66 行），恰覆盖 `0<=n<=369*k` 且 `n+k<=m`。
- JSON 结果为 `691093` 个 prime-free `(m,k)`、`2061156211` 个声明覆盖的 bounded-start triples、`collisions=[]`。独立只用 sieve 和边界公式复算出完全相同的 `K=71`、`691093`、`2061156211`。

## Hash、计数和证据边界

当前文件 SHA256 与保存结果一致：

| 文件 | 结果字段 | 当前 / 记录 SHA256 |
|---|---|---|
| `primary/finite_check.py` | `script_sha256` | `9e52793725c388235332fef8412d0db165f8e76fe26133ead539665e1d28d338` |
| `explorer/check_finite_cones.py` | `source_sha256` | `f8a88eab194503657e292154dd891bc6880f32fb00b8ce32e47fb34bd650c19d` |
| `explorer/check_bounded_start.py` | `source_sha256` | `4794f8e27382eb835f413c0a80cbc9c4fcf32c8160f0a5fc6cf337e3e1b1a305` |

审计使用的主要命令包括：

```powershell
rg --files research/tasks/B677-Lcm
Get-Content <script-or-result>
Get-FileHash -Algorithm SHA256 <script>
ConvertFrom-Json <result>; check rows, k bounds, collisions and sums
python -c <independent sieve-and-boundary-count only; no LCM sweep>
```

独立计数输出为：`max_k=71`、`prime_free_queries=691093`、`cone_triples={4:17567901,8:40070219}`、`bounded_start_triples=2061156211`。

以下是非阻断的记录改进项：

1. `full_integer_triples_checked_via_exact_lcm_lookup` 和 `integer_triples_compared_via_exact_counter` 是 Counter 精确 membership 对所有 earlier starts 的覆盖计数；无碰撞时并没有对每个三元组逐次调用原始 `math.lcm`。公开表述应改成“由完整整数值集合覆盖/查询”，避免把覆盖计数读成逐三元组直接比较。
2. `check_finite_cones.py` 自身只执行 sieve，没有像 primary 或 `check_bounded_start.py` 那样对每个素数 bit 做 trial-division 复核；两个独立实现已经提供了交叉证据，但该脚本单独运行时应保留这一限制。
3. primary 使用 `script_sha256`，explorer 使用 `source_sha256`，字段名不统一；当前值均与源文件一致。
4. primary 有 `finite-check-89693.log`；两份 explorer 的运行细节主要保存在 JSON（Python/platform、elapsed、hash），没有单独的 stdout log。若需可复现发布，应保存原始运行输出或明确 JSON 是结果摘要。

## 外部来源与公开材料卫生

本地来源缓存均位于：`WORKTREE\research\tasks\B677-Lcm\explorer\sources\`。已核得：

- `WORKTREE\research\tasks\B677-Lcm\explorer\sources\dusart-2018-correctif.pdf`，187496 bytes，SHA256 `bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d`。
- `WORKTREE\research\tasks\B677-Lcm\explorer\sources\dusart-2018-explicit-estimates.pdf`，502346 bytes，SHA256 `fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc`。
- `WORKTREE\research\tasks\B677-Lcm\explorer\sources\dusart-p242.png`，216911 bytes，SHA256 `29e78916ff3251ca1cc5b6a4577eb7cd89c5c926c4fc5b3a265b4f55d7c17ff7`；文件名表明它是第 242 页截图，页码仍应由来源 manifest 明确记录。
- 本地提取脚本 `extract_dusart.py`（SHA256 `1b29bee5055ceff3596973e8fb76709ff830b957baf2d8983de9bcefa817da58`）和 `extract_dusart_proof.py`（SHA256 `6b496ac713b057d8602ddf260176c6bc6a6d11e042aa06ed609ac592e8e365de`）只引用相对路径读取第二份 PDF 并打印选定页，不含凭据。

完整论文 PDF 和整页 PNG 应继续作为本地来源缓存保留；公开分支应优先保留来源 URL、页码、SHA256 与必要短引文，避免重新分发完整出版物。本审计没有删除或移动这些文件。文本、代码、JSON、log、Lean 文件的 secret-marker 扫描无命中；发现的公开卫生项是 README 中的工作区/裸仓绝对路径，以及 explorer JSON 中的 Python 版本和 Windows platform 字段，它们属于本地机器元数据，不是 secret，公开前应按需要清理或改为可复现环境描述。PDF 页数工具在本机因 Poppler 数据路径编码问题未能独立给出页数，未据此作额外结论。

## 最终边界

这些程序只排除了其 JSON 明示的有限 later-start、C=4/C=8 displacement cone 和 `n<=369*k` 区域。它们不验证外部 prime-gap/Dusart 定理、不验证由论文推导的 `m<89693` 归约、不覆盖 `n>369*k` 且 `m-n>8*k` 的剩余无界区域，也不是 Lean kernel 证明。当前审计没有发现需要阻断 primary 后续工作的代码缺陷。
