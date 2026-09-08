# 实际分支的割线积分消费者

主线程独占 lean/quarter/JumpIntegral.lean 与本文。采用原批 quarter-runge-bound.md 的Cauchy表示与t=u²换元；当前通用RectangleCauchy已通过fresh verification/20260908T111750Z/evidence.json（3 guards，实际源码闭合）。

精确目标：∀s≥1,z>(4s+1)²，upperRemainder s z = −(1/π)∑j<s(−1)^(s−1−j) cutIntegral s j 1 z。这里upperRemainder是实际根乘积减整数q，cutIntegral是[4j+1,4j+3]上的真实2u√|B(u²)|/(z−u²)积分；无外部表示前提。

已写完整证明路径：实例化generic jump；左部无jump，rootLocations之间切成2s段；奇编号间隔jump=0，偶编号为±2iρ；用导数2u的平方换元得到已有CutIntegrals接口，再有限交错和及π系数约分。首次运行所有AnalyticRemainder依赖已过，BoundaryValues出现局部名字遮蔽，交由其owner修复。最终consumer仍待定向与fresh验收。

最终状态（2026-09-08）：BoundaryValues遮蔽已由owner修复；本文件平方换元的HasDerivAt实例和函数eta规范化通过显式convert解决，attempt4完整定向通过。随后该精确声明及其实际依赖进入quarter最终23源fresh验证，verification/quarter/20260908T114117928142Z/verification.json成功，18项完整传递公理审计包含本声明。真实整数q评估桥RealError及原题Consumer已实际导入本文件并闭合最终高度界。所有源码冻结，未额外假设Cauchy表示、符号或积分估计；开发失败仅为名字/Lean规范化，未发现原声明数学错误。
