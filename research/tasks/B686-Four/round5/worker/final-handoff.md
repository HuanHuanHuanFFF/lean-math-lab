# 第五轮 worker 交接

**已完成原指定缺口 `{1,2,4}` 的排除，并扩大到全部非中心位置支持类。原始 B686/Four 及全 k=5 仍未解决；新颖性未确认。**

## 数学交付

自然数 n,m，m≥n+5，d=m−n；P₅(t)=∏ᵢ₌₁⁵(t+i)。下列结果均以原始有理比值 4=P₅(m)/P₅(n) 或等价自然数乘积为入口。

| 结果 | 精确范围 | 入口 |
|---|---|---|
| 三位置排除 | d=PQR，P,Q,R两两互素且各与6互素；P∣n+1、Q∣n+2、R∣n+4 | `ThreePosition124.not_four_three_positions_ratio`（namespace `B686Round5Positions`） |
| 原指定三大素数幂子类 | p,q,r互异素数≥5，a,b,c>0，d=pᵃqᵇrᶜ，依次占位1,2,4；全部n,m及指数 | 同模块 `not_four_prime_power_positions` |
| 四非中心位置排除 | d=PQRS，与6互素，四组两两互素，分别整除n+1,n+2,n+4,n+5；不限制素因子个数 | `FourPosition1245.not_four_four_positions_ratio`（namespace `B686Round5FourPositions`） |
| 无显式分组的支持类 | gcd(d,6)=1 且 d∣(n+1)(n+2)(n+4)(n+5) | worker `NoncentralSupport.not_four_noncentral_support`（namespace `B686Round5WorkerSupport`）；main 有同结论的整合入口 |
| 原题必要条件 | 原解且gcd(d,6)=1 ⇒ gcd(d,n+3)>1，以 `¬ Nat.Coprime d (n+3)` 表述 | worker `solution_requires_center_factor`；main `solution_has_central_factor` |
| 统一余因子界 | 原解，d=s(PQR)，s>0；P,Q,R两两互素、各与6互素，分别占位1,2,4 ⇒ d<20000s⁶ | `ResidualPositionBound.residual_position_bound`（namespace `B686Round5Residual`） |

三位置结果已被更强的非中心支持结论包含，不能将二者算作互不重叠的成果。worker/main 两份 NoncentralSupport 是同时写出的同一整合结论，也不能算作两项突破。

## 核心论证与协作来源

三个主要阶段的来源如下：

1. 启动时继承第四轮 worker 的对称 residual norm 草稿，原拟验证160000s⁵界；主任务提出更高阶接触后暂停。该草稿及其常数不算本轮新证明。
2. 主任务提出三简单分支的 D5/R6 接触空间、完成精确线代和核饱和及局部证书；worker 选择11G₀−32G₁，完成整数精细条带、符号/高度、有限段与原题桥。
3. 主任务发现四非中心分支 D8/R9 及 D10/R11 空间，选出−77G₀+4G₁并完成十一阶接触证书；worker复用条带与有限段完成尾部及原题桥，主任务另补不显式分组的分解与必要条件接口。

主任务提出越过旧 monic cubic 模板：在 d=0 的指定简单分支施加更高阶接触。主任务用精确 Fraction 线代、整数核饱和求得辅助式，并提供局部整数恒等式、清分母互素消去、原乘积到曲线桥与非中心因子分组桥。

worker 在主任务的两维三位置基中选择 H=11G₀−32G₁，并将精确实数条带证明为整数不等式：d≥20000 的原解满足

`83894387*d ≤ 10000000*(3(n+3)−d) ≤ 83894390*d`。

`ContactTail.lean` 证明 −20000d⁵<H<0；主任务证明 d⁶∣H，产生尾部矛盾。主任务随后发现四非中心位置的 D10/R11 组合 −77G₀+4G₁；worker `FourContactTail.lean` 证明 −20000d¹⁰<H₄<0，配合主任务 d¹¹∣H₄，再次排除同一尾部。所有高度判断是 Lean 有序环证明，没有把数值根近似作为假设。

剩余 5≤d<20000 对全部自然 n 已由 `ContactFinite.lean` 排除。新增3000≤d<20000的17000个位移各有两个相邻符号，符号由内核 `decide` 检查，并复用旧严格单调性覆盖全部n。原始五因子乘积和组合数算法逐个独立核对生成值。取整公式在3636、4545两处需修正，源码明确列出；首次生成失败日志保留。

`LocalContact.lean` 保存通用局部 ideal 整除接口；本轮具体局部证明采用主任务更直接的代入恒等式。该接口是基础设施，不另称数学突破。

## 验收证据

13个worker Lean模块均已逐个编译通过，含21个可失败传递公理guard，仅使用标准 `propext / Classical.choice / Quot.sound`。依赖先行的重编译记录、源码SHA256、完整实际命令、退出码、日志与逐声明公理列表见 `acceptance-manifest.json`。其中 worker/NoncentralSupport 的最终记录由 `namespace-fix-manifest.json` 覆盖。

固定Lean4.33.1；命令形式为 `LEAN_PATH=<仓库绝对根> bash scripts/lean-work.sh lake env lean <file> -o <file.olean>`。总入口是 `verify_worker.py`，接受清单生成器是 `make_acceptance_manifest.py`。无sorry/admit、自加axiom或native_decide。旧研究依赖只读；允许的忽略构建产物重新生成。主任务整合验证与独立顺序扫描有独立记录，不冒称其尚未完成的检查。

主任务实际联合导入复现了重复声明 `B686Round5Support.not_four_noncentral_support`（`main/import-collision-check.log`）。按指令仅将 worker 模块 namespace/end/guards 改为 `B686Round5WorkerSupport`，单文件重编译通过。此前 worker 全依赖构建已自然结束，其快照属于改名前版本；没有再启动全量重建。此集成失败及修复单独留证，不以旧全绿记录冒充最终联合环境验收。

新源码仅在本目录；没有commit、push、外部消息、工具链/依赖修改或新子线程。当前没有send_input能力；主任务确认轮询 `to-main.md`，重要提案与回应均有记录。早期估算时标超前已在日志明确更正；以实际命令日志和JSON UTC为准。

## 剩余缺口与下一步

- 原解若d与6互素，现已被迫在中心占位，但没有排除所有中心参与的非对称分布。中心局部高阶条件及第四轮中心上界仍是可用输入。
- 未尝试中心参与的四个非对称三位置集 `{1,2,3}`, `{1,3,4}`, `{2,3,5}`, `{3,4,5}` 的完整高阶组合/高度闭合；主任务已保存相应接触空间。下一检查是能否选出小整数线性组合，使严格符号与有效阈值同时成立，而非重新扫描原参数。
- 五个位置同时占据、一般含2/3的位移，以及其他奇k未闭合。新的清分母消去明确依赖与6互素，不可省略。
- 余因子界d<20000s⁶不限制无界s。旧对称范数d≤160000s⁵本轮暂停，未Lean化，不计入成果。
- 非中心反射或交换上下段不能直接视为保持自然数域及四倍方向的对称，未使用此捷径。

全部路线动机、失败诊断、暂停/未试标记、来源和交流决策见 `exploration.md`。按用户后续指令，约12:29 UTC后停止数学新路线，只做验收与交接；无延时请求。

最终worker交接UTC：2026-09-07T12:37:07.924800+00:00。接受清单已生成；27模块依赖构建属于改名前快照，随后仅重编译命名空间修正文件，记录已经合并。worker无运行中命令，主任务最终联合验收待其报告。
