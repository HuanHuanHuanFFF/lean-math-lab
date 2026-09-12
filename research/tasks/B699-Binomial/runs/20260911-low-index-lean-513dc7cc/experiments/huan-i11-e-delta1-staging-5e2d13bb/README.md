# ThreeTwo δ1 求值与双行初值界候选

本包完整保留 δ1 的真实参数 A=C=14、B=8、z=1/9、m=1，以及原目标 actualE 23 15 1 1 (1/9)=117258057456010/4782969。另给两δ的实际初值界与Bool行消费者，五个原公共接口可由主任务按 LEGACY_ADAPTER 对接。没有修改既有δ0冻结包或主线源码。

已复用的数学定义和符号eval_sum桥都是实际源。主任务已报告δ0的全部整数系数、Rat和、closed值、actualE值在1536 MiB下通过；报告时总审计仍在运行。这个进展支持分层路线，本包新增δ1和cap源仍未运行Lean，不能把它们当作已接受。

九个系数为38608020、−154432080、278974080、−296409960、202097700、−90349560、25814160、−4302360、319770，最大29位。组合数公式与阶乘商独立计算一致。精确有理和为原目标；共同分母9^8=43046721下的分子为1055322517104090。两个实际目标值都满足2|E|≤原eBase，全部精确分数和余量见exact-checks.json。没有改β、eLambda或高度阈值。

分层顺序及短审计入口：Coeff0/ZeroAudit（单系数），Eval/EvalAudit（复用已验eval_sum，符号a/f/z九项展开与代入），Coeffs/CoeffAudit（另八系数），RatSum/RatAudit（仅字面Rat和），Closed/ClosedAudit（带全部实际系数证明的泛型特化与Eq.trans），Actual/ActualAudit（actualE_eq_fast和Eq.trans），CapNums/NumAudit（原eBase下纯Rat两界），Caps/CapAudit（congrArg转接实际对象并合成Bool行）。Audit检查全部21公开根、20定理及五个原接口的完整类型。目标路径统一为lean/I11EOne，最长审计名仅ClosedAudit。

rowDelta false=1、true=0；Caps的false分支使用δ1，true分支使用δ0。末端不存在外部系数/求值/cap/增长树假设。泛型代入的九个等式输入均由本包实际整数证书供给。CapNums与Caps均不导入当前失败ThreeTwo模块，避免环；仅GrowthInputs提供原eBase。

这次只做轻量精确Python检查和审计器合成日志自测，没有调用Lean。实际速度、内存和公理闭包仍由主任务逐层验收。若本包通过，将补齐最后ThreeTwo边的两行m=1 E界；仍须主任务对别名、SmallCertificates、FixedEdge及原题消费者做完整后继验收，不能仅凭本包宣布i11或B原题完成。
