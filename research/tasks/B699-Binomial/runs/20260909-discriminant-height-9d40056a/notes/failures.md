# 失败诊断与处置

所有失败输出保留原样；失败日志里的 `sorryAx` 来自未完成elaboration，均触发拒绝。成功源码没有占位证明或新公理。

| 尝试 | 实际失败及类别 | 处置与后继证据 |
|---|---|---|
| 系数公式首编 | 默认simp提前拆C和cast乘积，单项系数规则无法匹配；API/化简问题 | 限定simp only；[失败](../verification/dev-20260909T063937752657Z/006-CoefficientContent.log)，[成功](../verification/dev-20260909T064447443898Z/006-CoefficientContent.log) |
| 实际下降恒等式首编 | cast未规范、已是r+1时重写Nat.succ无匹配、默认simp改变首项形式；API/化简问题 | 三项定向修复，statement不变；[失败](../verification/dev-20260909T064447443898Z/009-JacobiIdentity.log)，[成功](../verification/dev-20260909T064656452724Z/006-JacobiIdentity.log) |
| 绝对判别式递推首编 | natAbs乘法和幂不被默认simp展开；API问题 | 显式使用三个natAbs规则；[失败](../verification/dev-20260909T064656452724Z/007-ScaledDiscriminant.log)，[成功](../verification/dev-20260909T064905530253Z/007-ScaledDiscriminant.log) |
| 必要旧轮筛模块公理审计 | 源码编译exit0，但四条#print位于#guard_msgs内，stdout实际为零条；严格审计正确拒绝 | [原始记录](../verification/dev-20260909T064402390996Z/evidence.json)。补充实际打印入口已通过最终fresh验收；不读取注释作为成功输出 |
| Acceptance首编与数值求值 | choose未展开、数值点语法、递归深度和元层decide不能规约有限乘积；接口/求值问题 | [第一次](../verification/dev-20260909T065658270681Z/evidence.json)、[第二次](../verification/dev-20260909T065836539679Z/evidence.json)。显式展开choose、修正括号、提高本文件递归深度；D/V用已证素因数计数等式化简后 `decide +kernel`。全部原定例子保留，[开发成功](../verification/dev-20260909T070029041851Z/evidence.json)，随后fresh成功 |
| 固定包组合导入探针 | -M1536触发Lean interpreter内存阈值；环境资源阈值，不是数学反例 | 后续实际证明流水线使用-M4096；[运行时记录](runtime.md)，未重跑无关大探针 |
| 普通git push | 命令行没有GitHub凭证，未推送成功 | 使用用户已授权的GitHub连接正常推进本人分支，比较相同Git tree，再fetch/ls-remote核对SHA；[报告发布记录](../report.md) |

未发现新数学反例。最终fresh源码闭包、实际消费者、传递公理输出及原题statement核对均已完成，见 [最终验收](../verification/ACCEPTANCE.md)。失败历史不因后继成功而重标为成功。
