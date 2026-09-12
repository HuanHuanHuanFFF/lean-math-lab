# B677 外部证明回收与适用性审计

日期：2026-09-08。负责人：B677 外部研究子任务。现有 lean-math-lab 目录保持只读；没有在其内运行 Lake、编译或任何 Git 写操作。

基线：`HuanHuanHuanFFF/lean-math-lab@08a8ac6872e8abfd4a2c480496da350a97ecdc13`。实际读过 AGENTS、STRUCTURE、lean-research skill、题目入口、前沿、完整纸面报告、独立数学验收及正式 `Math/B677/IntervalLcm.lean`。未因未跟踪 formalization 文件存在而把其结论升格为正式接受结果。

## 第一结论

恢复了一个可证明的 **固定 `(n,k)` 后排除全部 `m` 的有限证书接口**，并已独立 Lean 检查。它没有消去仍无界的 `n,k`，也没有扩大基线已知的无碰撞区域。

外部 `c5-k4` 的约数串搜索是正确的必要条件搜索；其正命中分支没有检查 LCM 相等，不能直接当作反例。原脚本的零命中有限范围本次真实复跑完成，故本次结论不依赖其不充分的默认超时汇总。

新找到的 `qrdlgit/erdos677` 确有 Aristotle Lean 源码；固定版本复核因磁盘空间不足阻断，不能采用 README 的“全部标准公理”声明替代实际重编。其 Sylvester–Schur 主定理明确含 `sorry`。

## 锁定原题及已知基线

`n,m,k : ℕ`，`k>0`，`n+k≤m`，`M(n,k)=lcm(n+1,…,n+k)`。目标为 `M(n,k)≠M(m,k)`。平台现行类型保留 `m≥n+k`；某些原文或日志讨论 `m>n+k`，不得互换。

正式模块源码 SHA256：`1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44`。

基线已接受的正式结构：

- `equal_interval_lcm_dvd_gap`：所有素数幂合并后，`M(n,k) | lcm(d-k+1,…,d+k-1)`，其中 `d=m-n≥k`。
- `equal_interval_lcm_dvd_prefix`：上述推出 `M(n,k)|lcm(1,…,d+k-1)`。
- `interval_lcm_ne_of_later_prime`：后区间 `(m,m+k]` 含素数即可排除相等。

基线纸面/精确计算与 AI 审阅支持 `d≤8k` 或 `n≤369k` 的无限区域排除，尚不可称全题 Lean 证明。尚余 `n>369k,d>8k,m≥89693` 等无界区域。补读的运行中初等形式化验收只用作导航，未重新接受其状态。

## C5-K4 来源、回放及代码审计

- 来源：<https://github.com/Kuberwastaken/c5-k4>，完整历史克隆，HEAD `5c6aae7e9550838a582178eb9320a658314396cc`，2115 个 main 可达提交。
- 文件：`results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py`；报告 `erdos-hunt.md` 的 D4 节。
- 文件引入提交：`9ade6e11f0266e7d6c0a95e977b4103dac31f66e`，作者 Kuber Mehta，2026-08-15 07:57:28 UTC。相关报告后来由 `9f6079adc866e20f1affdbc24f3d190f9d5189ea` 修改。
- 许可：GitHub API `license:null`，HEAD 未找到 LICENSE/COPYING/NOTICE 文件。只建议回收数学思想与重新实现证书接口；不把源码当作已获宽松开源许可的可直接合入代码。
- 只读 GitHub API：forks 列表 `[]`，全部状态 issues 列表 `[]`。完整本地历史及分支搜索未发现 B677 Lean 文件；`lean/Equation677ColumnBridge.lean` 研究的是 magma 的 Equation 677→Equation 255，与 Erdős #677 无关。

实际命令：

```text
python3 -B repos/c5-k4/results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py 200000 12
```

输出保存在 `source-evidence/replay-200000-12.log`。退出 0；第一阶段 3.7 秒完成，`k=1..12,n=0..200000` 零反例；第二阶段连同第一阶段 49.3 秒完成，在 52 秒软限前完成全部 `41×22=902` 对 `n=0..40,k=3..24`，无跳过、无超时、无约数串。这里只复核既有范围，没有扩大搜索。

独立静态审计：

1. 第一阶段保留每个 LCM 值的最小起点，足以检测间距至少 `k` 的重复；整型值字典不会把概率指纹当相等。
2. `factor(V)` 是完全试除；`divisors(f,V)` 枚举每个素因子指数的笛卡尔积，恰好得到全部正约数，不要求排序。`d-1` 是每个后区间首项对应的唯一起点。
3. 零约数串 ⇒ 零相等。这一方向无需反向整除。
4. 正约数串只得到 `M(m,k)|V`；脚本直接打印 `COUNTEREXAMPLE(divisor-run)` 的名字过强，必须补验 `M(m,k)=V` 或 `V|M(m,k)`。尚未给出满足原题分离条件的伪命中，故这里是缺失证明义务，不声称已发现原题范围内的程序误报。
5. 超时检测发生在每个 `(n,k)` 开头；`n=NS+1` 后 `break` 只跳出内层循环，不能停止外层 for。`divisors` 也可能返回 `None`，最后仍打印整个范围。因此别的复跑必须显式审计跳过/超时；本次完整日志没有这些情况。

902 对的结论已由基线 `n≤369k` 纸面区域覆盖；数学前沿没有因复跑而扩张。

## 精确归约与独立 Lean 验收

令 `V=M(n,k)>0`。令 `Run(V,m,k)` 表示后区间每个整数整除 `V`。

| 原题假设 → 现有事实 | 外部/独立构造假设 | 得到的结论 | 仍需完成 |
|---|---|---|---|
| 相等，`k>0` → 每个后区间项整除 `V` | `V≠0` | `m+k≤V`，从而 `m≤V-k` | 这只对固定 `(n,k)` 有界；`V` 本身无统一上界 |
| 相等 → `m+1|V` | 设 `d=m+1`，`d∈divisors(V)`，`n+k<d` | 有限候选集合完整覆盖全部合法 `m` | 每个候选须验相等或用充分的排除条件 |
| 约数串 | 全部 `m+1,…,m+k` 整除 `V` | **等价于** `M(m,k)|V` | 正反例须另验 `V|M(m,k)` |
| 固定 `(n,k)` | 对每个 `d∈divisors(V)` 且 `n+k<d`，均有 `M(d-1,k)≠V` | 对全部合法 `m` 排除碰撞 | 统一控制全部 `n,k` 或用其他定理先界定二者 |
| 固定 `(n,k)` | 对上述每个 `d`，存在一个后区间项不整除 `V` | 同样对全部合法 `m` 排除碰撞 | 此证书比原题非相等更强，可能拒绝本可排除的候选 |

精确等价式：

```text
(∃ m, n+k≤m ∧ M(m,k)=M(n,k))
 ↔ ∃ d∈divisors(M(n,k)), n+k<d ∧ M(d-1,k)=M(n,k).
```

证明首项整除使用 `k>0`；去掉此条件会失效，因为空区间的 LCM 为 1，所有 `m` 都碰撞。自然数减法 `d-1` 由 `n+k<d` 保证无端点问题。`V≠0` 由每个区间成员正得到，空区间同样非零。

新写的独立审计文件：`lean/DivisorRunAudit.lean`。它没有复制 C5-K4 代码，也没有把假设重命名为全题证明。对照例 `M(13,6)=1627920`、`M(14,6)=232560` 说明实际 LCM 窗口可以有真整除约数串；例子是重叠窗口，仅用于测试丢失方向，不能冒称原题反例。

运行：`python3 -B support/verify_audit.py`。成功证据：`verification/20260908T105102259127Z/evidence.json`。

- Lean 4.33.1；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；所有 manifest 包实际 HEAD 核对，受跟踪源码 clean。
- 只从固定包缓存读取依赖；复制的基线模块和新增审计模块均在全新 scratch olean 根编译，没有使用既有项目 olean。
- 七个导出审计定理的准确传递公理均为 `[propext, Classical.choice, Quot.sound]`，脚本逐个断言；无 `sorryAx`、新 axiom 或 `native_decide`。
- 没有第二个独立 Lean 内核检查。
- 保留第一次失败：单个演示例未展开定义，Lean 无法合成 `Decidable divisorRun`；七个一般定理均已通过。改用已证整除等价式化简该例后全量重新编译通过。
- 普通编译器初次启动报 `failed to locate application`；原因符合既有 procfs 环境不匹配。复制既有 `lean-proc-self.c` 到本任务隔离目录并编译，进程局部 shim 仅重试自身 executable 路径；未修改编译器、权限、依赖 pins 或主仓库工具目录。

## 其他可追踪来源

`qrdlgit/erdos677@d64211ecdc02693a11a7bf0468be10f06b6ec48d`：唯一提交，2026-03-31；作者 qrdlgit，README 明示 Aristotle 编辑。固定 Lean 4.28.0、mathlib `8f9d9cff6bd728b17a24e163c9402775d9e6a365`。API 同样 `license:null`、forks `[]`、所有状态 issues `[]`；不得假设其代码已获宽松复用许可。`Finiteness.lean` 的实际证明核心是 `(n+1)|d(d+1)…(d+k-1)`，故固定 `d,k` 有限；文件前段长注释有多条已放弃错误推测，不能当作正式证明。`Smoothing.lean` 给出 `p>k` 时两窗口乘积的 p-adic valuation 相同；`Bridge.lean` 限于 `p>k` 的差值见证弱于基线所有素数幂合并的 gap theorem。一般 Sylvester–Schur 使用 `sorry`，其后 `windowLcm_has_large_prime` 也受传递污染。

| 原题 → 现有事实 | qrdlgit 准确输入 | 输出及适用性 | 剩余义务 / 证据 |
|---|---|---|---|
| 令 `d=m-n`，由分离得 `d≥k>0` | `fixed_gap_finite k d hk hd`，LCM 定义为 `Icc(n+1,n+k)` | 固定 d,k 的 n 有限；允许重叠的版本更广，但原题范围已有 gap theorem 支持固定 d,k 有限性 | 仍无界 d,k；纸面独立重建通过，原版 Lean 尚未复编 |
| LCM 相等 | `p.Prime, k<p, k>0, d>0` | 两窗口乘积的 `multiplicity p` 相同；可用作固定 k 平滑比值方程接口 | 需整体小素因子指数、真实区间与相等条件；未产出全题区域排除 |
| LCM 相等、后区间成员 | `no_prime_in_second_window` 要求 `k≤d` | 后区间无素数 | 基线 later-prime 已覆盖；没有新增前沿 |
| LCM 相等及共同 p^a 因子 | `prime_power_divides_difference` 只要求 `d>0`，未要求 `d≥k` | `δ∈[d-(k-1),d+k-1]` 且 `p^a|δ` | 若 d<k，δ 可以为0，不能推出 `p^a≤d+k-1`；在原题 d≥k 才是正差 |
| 想用任意 n≥k 区间含大素因子 | `sylvester_schur` | 声明存在，但证明为 `sorry` | 不接受此 theorem 及其下游为回收证明 |

边界实证：`n=13,d=2,k=6,p=17,a=1` 时两个重叠窗口 LCM 相等，共同项17可给 `δ=0`，而 `17>d+k-1=7`。因此缺少分离时的零差不是技术小节，而是阻止错误大小上界的关键。

原版重编尝试：独立设置 `ELAN_HOME=.../b677/support/elan`，执行已有 elan 二进制 `toolchain install leanprover/lean4:v4.28.0`。官方压缩包下载成功，展开到 `libleanshared.so` 时报 `No space left on device (os error 28)`；当时系统 32GB 已满，未能运行4.28编译器，也未开始下载4.28 mathlib缓存。只清理了本任务的失败临时目录，释放约1.7GB文件，未动主仓库或同伴环境。不把这称作数学失败、成功复编或独立公理审核。原始错误摘要保存在 `verification/qrdlgit-v428-install-failure.txt`。继续复现的确切条件是足够独立磁盘空间及4.28固定包缓存；无需重搜题面。

`vibemathing/problem-um-ep-677-erd-s-problem-677-65469972@8d3874fbe30277abb85b4b8d671daf1a60f42ee9`：完整克隆两提交；研究候选、evidence、result 记录为空，仅有 admission/harness 与 `2+2=4` 的 Lean fixture。不是 B677 证明来源。

Patrick White + Claude 的公开研究页 <https://www.erdosproblemaday.com/day/677-lcm-bridge> 本次通过主页链接成功读取；页面摘要声称固定小 `k` 分类及 prime-routing 的不充分性。链接的两个原始 ChatGPT 交流，一个读取为零行，一个仅返回登录外壳；没有拿到所需完整论证/证书，故不接受为已恢复证明。其 1975 年参考可定位至 Tharmambikai Ponnudurai，*The Diophantine Equation Y(Y+1)(Y+2)(Y+3)=3X(X+1)(X+2)(X+3)*，JLMS s2-10(2),232–240，DOI `10.1112/jlms/s2-10.2.232`；出版社只读元数据可见，完整定理未读，不据摘要采用分类。

网页访问限制：erdosproblems.com/677 及其 forum 通过 web open 和无凭证 urllib 均 403。搜索索引能读到讨论摘要；不把索引当完整证明。Conjectures.io 的当前完整 Lean 类型可读且与基线一致。

## 当前交接

最有价值的实际回收是：完整候选集与可检查的所有-m消费者，以及外部程序正负证书差异的明确审计。扩大此处小范围搜索不能关闭无界前沿。下一项决策应是能否用结构定理统一控制约数串/饱和条件，或先限制 `n,k`，不是仅把枚举上限加大。

qrdlgit 当前证据等级为“源码核查 + 独立纸面证明，原版 Lean 尚未重现”。完整推导和证书规格见 `proof-notes.md`。本次没有完整 B677 桥接、统一 n,k 上界或新颖性主张。
