# Four intervals into actual C2 — frozen candidate

本目录只完成增长路线冻结接口的步骤 1、2：把四区间素数积接到实际完整幂 `Math.B699.C2Direct.c2 (4*m) (4*m) m`。状态是 **完整 Lean 候选，尚未编译**。没有引入另一个 N、Chebyshev、素数供给假设或数值供给表；没有运行 Lean。

负责人 `/root/c2_divisor_resume`，独占本目录；主任务负责后续 `lean/C2FourIntervals` 的接入、编译和共享 frontier。开始 `2026-09-12T08:05:20Z`，20 分钟检查点 `08:25:20Z`，本轮无总时限。先前 C2 冻结目录已再次只读核验，字节保持不变。

## 准确结论

`Intervals.lean` 以全部自然数 `m,q,j` 为对象，在 `m≥3`、`1≤j≤4`、`4m<jq`、`2jq≤9m−2` 下证明请求的

`2q+1 ≤ 2*((4m)%q)+m%q`。

证明先得 `m<q` 与 `(j−1)q≤4m<jq`，再用实际自然数除法证明 `(4m)/q=j−1`。商余恒等式给出贡献阈值；同一 q 的商唯一，也给出四区间两两不交。所有自然数减法侧条件留在证明内。

`Product.lean` 定义实际区间素数集

`intervalPrimes(m,j) = {p∈C2Direct.primeSet(4m,4m,m) | 4m<jp ∧ 2jp≤9m−2}`，

四个集合的有限并集 `fourPrimes(m)`，以及其无重数乘积 `p4(m)=∏p∈fourPrimes(m),p`。`mem_intervalPrimes_iff` 对任意 `j≥1` 去掉内部有限 cap，精确得到“p 为素数且满足原区间两不等式”；cap 没有暗中删掉源区间中的素数。

在 `m≥3` 下，候选证明集合两两不交、`p4` 等于四个区间乘积的乘积、每个成员在实际 C2 的 `h=1` 层贡献 1。`first_layer_mem_cutoff` 使用实际 `Nat.log` cap 证明首层确实在 `Finset.Ico 1 cutoff` 内。然后 `1≤actual exponent`，把 p 整除相应完整 `p^E_p` 的结论在有限集合上相乘，再嵌入完整 C2 乘积，得到

`p4(m) ∣ C2Direct.c2 (4*m) (4*m) m`。

所有其他首层素数与高次幂继续保留在实际 N 中。`p4>0` 和实际 `C2>0` 对所有自然数 m 成立；`p4≤C2` 的范围为 `m≥3`。

`LogBridge.lean` 定义 `l4(m)=Σp∈fourPrimes(m),Real.log(p)`，证明其对所有 m 等于 `log(p4(m))`；在 `m≥3` 下，又等于四个区间各自的 log 素数和，并有

`l4(m)=log(p4(m))≤log(C2Direct.c2 (4*m) (4*m) m)`。

这里只有有限 log 求和、对数乘积式与对正数的单调性。尚未将区间和识别成 theta 差，更没有声称有效素数供给、正指数增长、i13 高度或新的 B 原题覆盖。

## 证据与实际风险

[ARITHMETIC_DIAGNOSTIC.json](ARITHMETIC_DIAGNOSTIC.json) 是有界抄录诊断：`3≤m≤128`、`1≤q≤9m`、`1≤j≤4` 共 297108 个三元组，其中 8190 个满足区间条件，全部通过商余、贡献阈值、索引唯一性及首层 cap 检查。没有枚举素数，没有生成素数供给表。右端控制 `(m,q,j)=(4,17,1)` 被包含；左端 `(4,16,1)` 被排除；若把 `9m−2` 放宽为 `9m`，`(4,18,1)` 会使通用贡献结论失败。此诊断不替代通用 Lean 证明。

三个模块和四个审计共有 26 个公开根，全部有显式类型 `#check` 与 `#print axioms`。四个新定义打印本体；`AProduct` 与汇总 `Audit` 还直接打印采用的实际 C2 的 `layer/cutoff/exponent/primeSet/c2` 五个定义。公理日志门禁已拒绝缺根、重复、非标准公理、失败退出码、Lean 错误和 sorryAx 六类变异；这只是门禁自检。

源码层的数学路线闭合，未发现具体数学障碍。仍有待主任务编译确认的库/tactic 适配风险，主要在有限集合展开、`sum_biUnion/prod_biUnion`、单项求和下界与 cast 重写。所有新增根及上游实际 C2 模块都必须在最终接入源码上编译和审计；旧包来源哈希不是新根的接受证据。

## 交接与冻结

[SOURCE_MAP.json](SOURCE_MAP.json) 绑定冻结的增长路线接口/报告、唯一 C2 定义和所查库接口，共 13 项。上游 `Finite.lean` SHA 为 `a2ec9f3b4bd3f44128723fadd07bc7dd7a748780307f12bd96a8f77540854bd9`；其包清单 SHA 为 `9323b7470f2bc985f76dcb807ac5afc37625088c538da1c28b7854aea3bdd957`。工具链 `Lean v4.33.1`，mathlib pin `0df444a360eaa60ab8c11dca51a86af692955474`。

[INTEGRATION_PLAN.json](INTEGRATION_PLAN.json) 给出 7 个源文件的 SHA 和 `lean/C2FourIntervals` 路径映射。主任务顺序运行 `AIntervals`、`AProduct`、`ALog`，最后运行汇总 `Audit`；其中第一阶段不依赖 C2，第二阶段开始使用实际 `C2DirectDivisor.Finite`。全程沿用主任务串行验证器和资源门禁。若需要修复，在接入副本保留新 SHA 和新证据，保持此冻结包不变。

`check_package.py` 只读核对来源、审计覆盖、实际 N 绑定与包内文件 SHA。`check_audit_log.py` 检查后续实际 Lean 日志的 26 根与允许的标准公理；还必须由本 run 的验证器绑定源、对象、命令和真正退出状态。`PACKAGE_SHA256.json` 覆盖本目录所有文件，清单自身除外；清单自身 SHA 在最终交接给出。

预期局部作用：为有效四区间素数供给提供通向实际共同因子的无条件结构桥。实际全题未知范围保持不变；有效 theta/其他素数供给与完整 Padé 高度图仍待后继完成。研究状态为候选包冻结，Lean 证明接受待定，AI 编写与静态检查不等于同行评审，新颖性未主张，未提交或推送。
