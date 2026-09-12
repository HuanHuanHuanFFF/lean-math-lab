# C2 actual common-divisor candidate

本目录把 ProC R2 的显式 C2 直接整除接口接到本 run 已验收的实际 Padé 系数定义。当前状态是 **冻结候选，尚未编译**。接续过程没有启动 Lean，没有提交、推送、下载或安装。此件不新增 B 原题指标。

负责人：`/root/c2_divisor_resume`；原候选负责人 `/root/pade_construction` 已停止写入，由主任务确认交接。写入范围仅为本实验目录。接续首个时间读数为 `2026-09-12T07:44:18Z`，20 分钟检查点为 `08:04:18Z`；本轮没有总时间限额。当前 worktree HEAD 为 `f0b0cc10fbab9db7133aae9914178caf0b4c587b`。沿用 `20260911-low-index-lean-513dc7cc` 的身份；共享 README/frontier 由主任务更新。

## 准确声明

设 `x,y,z≥1`，`δ∈{0,1}`，`S=x+y+z`。实现中的实际自然数为

- `layer(x,y,z,q) = [x mod q+y mod q+z mod q ≥ 2q+1]`；
- `E_p = Σ_{1≤h<log_p(S)+1} layer(x,y,z,p^h)`；
- `N = Π_{p prime, p≤S} p^E_p`。

`layer_support` 给出贡献层必满足 `2q+1≤S`。`layer_zero_outside` 与 `exponent_zero_of_large_prime` 在内部证明所有截去的幂层、素数贡献为零。因此固定的有限实现对应源接口的全部素数幂；没有外部截断假设、用户给定因子表或逐层选取不同系数。

取 `A=x−δ`、`B=z−1+δ`、`C=y−δ`，均为自然数。实际采用的源定义是

`qMagnitude(A,B,C,r) = choose(A+C−r,C) choose(B+r,r)`，

`qCoefficient(A,B,C,r) = (−1)^C qMagnitude(A,B,C,r)`，

`pCoefficient(A,B,C,k) = (−1)^(C+k) choose(A+B+C+1,k) choose(A+C−k,A)`。

候选证明：任意 `r≤A`，`N` 整除实际 `qMagnitude` 与整数 `qCoefficient`；`N` 整除 `qContent(A,B,C)`，并有 `N≤qContent`。任意 `k≤C`，`N` 整除实际整数 `pCoefficient`。对所有多项式系数下标成立相应整除关系，超出次数界时系数为零。

`Normalization.lean` 定义实际整数商系数、商多项式和齐次整数值，并证明乘回 `N` 恢复原对象。`Family.lean` 代入 `x=e*m,y=d*m,z=f*m`，对全部 `e,d,f,m≥1`、两种 `δ` 给出上述共同因子及 `∃P Q:ℤ[X]` 的实际规范化结论。没有 `e=d` 或 `A=C` 假设。

## 数学路线与复用边界

| 模块 | 当前候选承担的步骤 |
|---|---|
| Finite | 实际全幂乘积、内部尾部消失、正性、交换 x/y 的 C2 对称性 |
| Layers | 两次无进位会使实际三余数和至多 2q−2；源掩码及 δ 移位迫使至少一次进位 |
| Valuation | 复用 mathlib 的二项式 Kummer 计数，在同一个任意 Q 系数上累加全部层 |
| Divisor | 复用 distinct-prime-power 乘积整除工具，得到实际 Q 和 qContent 的整除 |
| Convolution | 把已验收的 multichoose 卷积推广为一般 A/C 的 swapped-Q 幅值卷积 |
| PDivisor | C2 对称性加 swapped-Q 卷积得到一般实际 P 整除 |
| Normalization | 明确定义商系数，构造整数多项式与整数齐次值 |
| Family | 正参数 e,d,f,m 的原接口，含自然数截断和两种 δ |

已验收的 `Pade.Content.qContent_dvd_pCoefficient` 只覆盖 `A=C`；本件只复用其中无该限制的 `multichoose_convolution`，没有将对角结论当作一般结论。源材料中的精确 G、运输表、共同内容 gcd 等式、G 对称性、θ 估计和有效增长均未成为本件的假设或结果。

预期作用是在后续通过 Lean 后，为 i13 的实际大共同因子 `N` 提供可用整数规范化入口。实际原题未知范围未缩小：`log N>g*m` 的有效下界、具体 Q/E 增长适配及其全域图消费者仍独立缺失。没有新的数学原创性或外部审读结论。

## 当前检查与风险

[HIGH_POWER_CHECK.json](HIGH_POWER_CHECK.json) 是本次实际重跑的有界整数计算：复现 432 个小参数 δ 行、3456 个实际 Q/P 系数及 1728 个非对称卷积；新增 68 个压力行、10032 个 Q/P 系数、36347 次直接整除估值、2106 个同一系数的活跃幂层检查，另有 307580 个局部无进位检查。压力集包含 `p^h=2^8,3^5,5^3,7^2,11^2` 及显式正参数族。所有系数在给定压力行内遍历；较大卷积仅取记录中的七类边界/中点下标。

控制例 `(6,6,6)` 的 `N=14`；2 只在 `h=3` 贡献，首层乘积仅为 7。两种 δ 的实际 Q content 分别为 42、14。`δ=2` 的反例 `x=y=z=3,r=1` 给出 `N=2` 而实际 Q 幅值为 5；省略 `r≤A` 也有保留的反例。它们只诊断抄录与适用边界，不能替代通用 Lean 证明。

[AUDIT_ROOTS.json](AUDIT_ROOTS.json) 列出 60 个公开根的完整显式类型。八个模块审计及汇总 `Audit.lean` 对每个根执行 typed `#check`、`#print axioms`，并打印 14 个定义的本体。`check_audit_log.py` 要求 Lean 实际退出码为 0、所有所需根存在且不重复、公理只在 `propext/Classical.choice/Quot.sound` 内；缺根、重复、非标准公理、失败退出码、Lean 错误和 sorryAx 六种变异已被拒绝，见 [AUDIT_GUARD_CHECK.json](AUDIT_GUARD_CHECK.json)。该记录是门禁测试，不是 Lean 审计成功。

仍有编译/库 API 适配风险，重点为 `Nat.factorization_choose` 的布尔和重写、估值乘积重写、自然数截断别名、一般卷积及整数 cast/多项式系数化简。静态核对未发现数学反例，但只在主任务实际串行编译并完成传递公理审计后，才能把通用声明提升为 Lean 接受。

## 来源、冻结与主任务接入

[SOURCE_MAP.json](SOURCE_MAP.json) 固定 ProC 接口、实际 Padé 源、所查 mathlib API、前后导入路径和逐模块哈希；[DEPENDENCY_BINDINGS.json](DEPENDENCY_BINDINGS.json) 重新核对了 11 个来源/API 文件及三个现存已验收依赖的源码、旧日志、对象哈希。工具链 `Lean v4.33.1`，mathlib pin `0df444a360eaa60ab8c11dca51a86af692955474`。三个可复用证据分别是 `20260911T035339927527Z` 的 PadeInteger、`20260911T071912344266Z` 的 Pade.Content、`20260911T004440769454Z` 的 PrimePowerTransfer；它们只接受旧依赖，不接受当前新增根。

接续前原始字节保存在 [resume-originals](resume-originals/)，相应 SHA 见 [RESUME_BASELINE.json](RESUME_BASELINE.json)。八个实现只调整了预期导入路径和行尾，证明语句与证明主体未改；审计文件已扩充。所有新导入都指向本 run 的 `lean/C2DirectDivisor/`；声明命名空间继续使用 `Math.B699.C2Direct`，没有写入目标目录。

主任务先用 [INTEGRATION_PLAN.json](INTEGRATION_PLAN.json) 核对 17 个待复制源文件及 SHA，再按计划接入 `lean/C2DirectDivisor/`。八个模块审计按顺序作为根逐次串行运行，每次只复用哈希核对成功的旧依赖和前一成功阶段，最后编译汇总 `Audit.lean` 并检查全部 60 根。计划采用当前 run 的 `verification/runner/verify_huan.py`，包路径与资源预算沿用主任务现有设置，不另起并行 Lean。

[PACKAGE_SHA256.json](PACKAGE_SHA256.json) 冻结本目录全部文件（除该清单自身）；清单自身的 SHA 在交接消息中给出。`check_package.py` 默认只读核对冻结清单、导入映射、原件与当前实现的差异、公开审计覆盖及禁用占位规则，不启动 Lean。恢复诊断时不覆盖已存结果：`diagnostics.py` 不带 `--output` 重跑只输出摘要，或为 `--output` 指定本目录内的新文件名。冻结后新增文件会使严格文件集检查失败，应另保留验证目录并由主任务记录新快照。
