# 显式theta输入：有界来源调查

动机：i18修正G界仍需要有来源且可形式化的显式theta误差。先找已有可靠证明，避免把大批基础接口当成完整输入。此次仅只读调查，不增加依赖或验收数。

固定mathlib0df444a3的NumberTheory/Chebyshev.lean提供theta≤log(4)x和theta≥n log2-log(n+1)-2sqrt(n)log(n)，以及若干渐近关系。这些已找到的定理明显弱于本路线所需的显式小相对误差；不据此断言整个生态没有合适结果。

沿该文件引用的官方PNT+仓库检查当前main提交a5154676af9aa3095150ee410cdda80555aa0642，工具链4.32.2，与本任务固定4.33.1不同。有限取回Dusart和RosserSchoenfeld相关文件，保存每文件SHA与literal-sorry位置。直接相关Dusart.theorem4_2以及theta有限数值lemma4_1当前正文仍为by sorry，不能采用为已证输入。RosserSchoenfeldPrime中的一般PNT大O/存在常数也不能自动代替数值误差界。

这只是有界检查，没有声称全仓无可用结果；含其他sorry的文件也不代表其中每个独立定理都有sorry依赖。若后续找到强度/阈值合适的具体定理，仍需追溯其精确依赖、移植固定版本并实际审计transitive axioms，不能凭README、CI绿灯或closed PR接受。未下载整库、未改变九个pins、未构建或执行外部源。

下一检查：结合i18下游数学审读，锁定实际所需theta界和阈值；再定点检查对应完成的具体定理，或形式化原出版论证/选择前提较轻且仍足够的G界。当前G的Lean前置缺口仍在。
