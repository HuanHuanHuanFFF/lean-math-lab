# CRT 幂对上界候选：完整参数化与线性证书

状态：证明文本已冻结，尚未运行 Lean。只写本实验目录；没有运行固定旧 CRT 程序，没有生成全量 CRT 数据，没有修改已验库或 Git。原题 B 仍为 0/19。

这条前置准备把未来 `n < 2^109` 后的 CRT 下降变成完整可核验消费者。它本身不证明初始高度，也不把旧报告的数值下降当成已验结论。

## 精确范围与接口

所有 `P,Q,v,capA,capC,w,A,C,n : Nat`，`d,lo,hi : Int`。检查器要求 `P,Q ≥ 2`、`(P*v)%Q = 1` 和 `-w ≤ d ≤ w`。不假设 A、C 互素，不要求位移非零，也没有 n 或另一个指数的先验有限上界。cap 可以为 0。

直接采用已验的 `Math.B699.CubicExponentBlock.positiveResidue Q v d`。令

```
rho = positiveResidue Q v d         -- 零余数取 Q
C0 = (P*rho-d)/Q                    -- Int 精确商，允许负值
A(t) = rho+Q*t
C(t) = C0+P*t
U(t) = min(P*A(t),Q*C(t))+w
```

`seed_equation` 从实际余数和模逆推出 `P*rho-Q*C0=d`，不把种子方程设为最终假设。`solution_parameterization` 对每个正自然数 A 和满足方程的自然数 C 给出唯一非负整数 t。`progression_equation` 证明任意整数 t 的仿射坐标满足原方程；`feasible_parameter_gives_solution` 再把正且在 cap 内的坐标转换成实际自然数解。

数值证书 `BoundsDatum` **只有**两个字段 `lo hi : Int`。检查器检查以下线性事实：

```
lo ≤ 0 OR C(lo-1) < 1
capA < A(hi+1) OR capC < C(hi+1)
```

因此每个正、受 cap 约束的实际解都有 `lo ≤ t ≤ hi`。最终接口：

- `pairBoundCheck_empty`：检查通过且 `hi < lo`，则不存在实际正 cofactor 解。
- `pairBoundCheck_upper_int`：检查通过且 `n ≤ min(P*A,Q*C)+w`，则 `n ≤ U(hi)`（Int）。
- `pairBoundCheck_upper_nat`：同样前提得到 `n ≤ U(hi).toNat`。

U 是定义直接计算的值，证书没有“最大值正确”字段。参数界可以宽松；`lo ≤ hi` 本身不表示实际解存在，也不表示 U(hi) 可达。若需要取到真正最大值，还应检查端点坐标正且在 cap 内，使用已给的 converse。当前交付只保证完整的最大值**上界**，不隐藏可达性假设。

## 为什么不漏解

取整数 `z = (P*v)/Q`，模逆给出 `P*v-Q*z=1`。对任一实际解令 `D=A-rho`、`E=C-C0`。实际方程与种子方程给出 `P*D=Q*E`，故 `D=Q*(v*E-z*D)`。这给出整数参数 t；已验 `inverse_positiveResidue_le` 保证 rho≤A，所以 t≥0。再消去非零 Q 得到 C=C0+P*t。整个过程没有假设 CRT 搜索穷尽性。

A(t)、C(t) 以及 U(t) 随整数 t 单调。若 t<lo，前一步 C(lo-1)<1 会与 C(t)≥1 冲突；若 t>hi，下一步违反 cap 会与实际 cap 冲突。空区间立即排除解；非空时，实际窗口 n 的上界随 t 不减，所以由 hi 算出的 U(hi) 覆盖所有解。

可供证书生成器使用的一组紧参数是

```
lo = max(0, ceil((1-C0)/P))
hi = min(floor((capA-rho)/Q), floor((capC-C0)/P))
```

候选消费者不依赖这些 floor 公式的 Lean 正确性，只核验它们最终应满足的前一步/下一步严格线性条件。数字生成器算错时必须在检查器处拒绝，不能把生成器输出作为公理。

## 固定来源与符号对应

固定旧 commit：`5c37f257401952ed85ddd104de8e56a4f2024031`。报告 `REPORT.md` §6（260–289 行）是高度依赖的双色幂族归约；真正的 CRT 参数化在 §7（291–324 行），不是 §6。`vendor/crt_bound_probe.py` 50–65 行和 `vendor/crt_fast.py` 55–68 行实现一般 CRT 分支。全部只读，未执行。SHA 与行对应见 `SOURCE_MAP.json`。

旧程序把两个幂记作 Q、R，本候选分别记作 P、Q。旧程序选 `a0 ∈ [0,Q-1]`；这里选最小正代表。若 a0=0，则 `rho=Q`、`C0_new=C0_old+P`、`t_new=t_old-1`，不是删除 d=0。非零余数时两套坐标相同。旧 `base+w-max(d,0)+P*Q*t_old` 正好等于这里的 `min(P*A,Q*C)+w`。

本候选没有形式化旧程序的所有快捷分支、[S0,H-1] 裁剪或完整幂族枚举。数值 cap 可先包含 `floor((H-1)/P)` 与 `floor((H-1)/Q)`；调用者仍须把低分支 S0-1、已有的 n≤H-1 和所有 pair/位移的上界正确组合。这些是下一层工作，不能由当前单 pair 定理自动视为完成。

## 当前验证证据

`bounded_check.py` 是本目录新写的独立小整数程序，不导入旧程序。精确范围是 P,Q=2..9 的互素组合；模逆同时测试标准代表与加 Q 的代表；d=-5..5；capA、capC 分别取 0,1,2,4,8。共 20,900 组，16,284 组为空；覆盖 4,300 组零余数、100 组负 C0，逐个核对 4,908 个正 cofactor 解的正向/反向参数化和上界，全部通过。输出为 `bounded-check.json`。

另外保留四个边界：零位移且 capA<rho；C0=-2 的非空区间；相同负种子但 capC=0 的空区间；负位移 d=-3。也保留一个宽松 lo≤hi 但无实际解的例子，说明通用证书没有存在性结论。

这些是有界数值诊断，不能证明无界定理。`audit-selftest.json` 也只是审计器合成输入自测：能拒绝 sorry、缺失 print、自定义公理与编译错误；没有真实 Lean 公理输出。

## 模块与验收入口

1. `Parameterization.lean` 仅从当前已验 `lean/CubicBlock/Residues.lean` 起步；最小检查入口 `ParameterizationAudit.lean`，7 个定理。
2. `Bounds.lean` 接参数化；加入坐标定义、单调性、参数界和 converse。
3. `Consumer.lean` 定义证书与最终上界消费者。
4. `Audit.lean` 对全链 16 个公开定理及 5 个定义执行 `#print axioms`。期望仅 std3：propext、Classical.choice、Quot.sound。

`GENERIC_FREEZE.json` 绑定 5 个 Lean 文件的确切字节。主任务可只改集成副本的 imports，保留原候选，并由统一串行验证器编译实际模块闭包。实际日志可交给 `python -B audit_axioms.py <log>`；它不是 Lean 的替代品。若真实编译失败，由主任务给出诊断及新的明确修改权，再修集成副本或新版本。

本轮开始于 2026-09-11 16:31:36 UTC；20 分钟检查点是 16:51:36 UTC，已向主任务报告完整证明文本及剩余记录工作。该检查点不是总时限。Lean 源在 16:54:58 UTC 冻结，后续只补数值诊断和文档。

## 下一检查与前沿边界

下一步先真实编译最小参数化前缀，然后串行核验 Bounds/Consumer 与全量公理入口。即使接受，也仍需实际双色幂族归约、全量 pair/位移证书和聚合器，之后才能复现有限 CRT 高度下降。初始无界高度、最终有限消去均独立未完成；该单 pair 前置当前不增加原题覆盖。
