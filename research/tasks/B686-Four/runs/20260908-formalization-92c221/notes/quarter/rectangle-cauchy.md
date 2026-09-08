# 两半平面矩形 Cauchy 桥（主线程）

写入范围仅 lean/quarter/RectangleCauchy.lean 与本文；其余quarter由Astra负责。该步骤用于F686-06的实际割线表示，不替代最终原题消费者。

已定向编译：任意R>0，方形1/w边界积分=2πi，直接来自实 arctan 积分和四边代数；对闭上/下半平面连续、开半平面全纯的fu/fl及Im z>0，正则化 dslope fu z 与(fl−fu z)/(w−z)分别应用mathlib矩形Goursat，相加得到实轴jump加混合外边界=0。z处使用可去连续性，Goursat允许单点微分例外，无新公理。

下一步：由半平面cobounded趋0证明混合边界趋−2πi fu(z)；实轴jump仅支撑[-R0,R0]时缩小积分，再在z>R0的实点连续取极限。主线程负责通用jump公式，Astra负责实际平方根分支/低次数多项式衰减及后续误差应用。

失败属于Lean API/代数正规化：复数域field_simp归一化乘法顺序后未匹配非零证明，改用显式div_eq_div_iff；区间积记号和lambda beta还原补齐。未发现该通用陈述的数学反例。定向开发日志另存，最终接受仍需fresh闭包及guard。

完整 jump_representation_upper 与 jump_representation_real 均已定向通过、3个传递公理guard仅标准三项。实点延拓以clamp保持参数被积函数全域连续，从上半平面趋到z>R0，不额外假设割线公式。

最终状态（2026-09-08）：独立fresh verification/20260908T111750Z/evidence.json成功；随后又实际被quarter/Consumer消费，包含于23源完整fresh verification/quarter/20260908T114117928142Z。通用桥的所有原声明及完整原题消费者均只有标准三项传递公理。上文“下一步”“待验收”为保留的开发检查点，已由此次记录关闭；原始失败日志保存在verification/quarter/rectangle-cauchy/development，不作为成功证据。
