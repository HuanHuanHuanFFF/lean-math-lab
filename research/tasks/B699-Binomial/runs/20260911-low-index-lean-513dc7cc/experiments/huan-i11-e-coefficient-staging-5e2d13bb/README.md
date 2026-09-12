# ThreeTwo E 初值分层探针（仅 δ=0，未运行 Lean）

本包保留原目标 actualE 23 15 0 1 (1/9)=13515592997264/1594323。它只改变证明组织，不改变系数、m、δ、λ、上界或高度阈值。全部文件位于本独占实验目录，原失败源码与已验源均未修改。

已读取的真实失败证据为 verification/20260912T000041034985Z/evidence.json：ClosedEval 去掉 actualE 后，1536 MiB 仍在 12.752 秒内报 kernel excessive memory，产生 sorryAx 因而严格未接受。这个事实排除了 actualE 桥接是唯一原因，尚不能单独归因于 Polynomial、系数或 Rat 实现。主任务另报告原具体求值在3072 MiB也失败；本包不把增加内存作为方案。

八个真实整数系数依次为 12620256、−44170896、68264112、−60233040、32697936、−10899312、2062032、−170544。它们最大27位；组合数与阶乘商独立计算一致。按9^r除后求和为13515592997264/1594323；共同分母9^7=4782969下的整数分子是40546778991792。以上是精确有限Python检查，不是Lean接受。

按以下顺序串行验收，能区分瓶颈；短目标映射见 SOURCE_MAP：

1. Coeff0Audit：只核验第0个实际整数系数，导入已验ChooseFast。
2. EvalBridgeAudit：先对符号n、a、f、z证明coefficientPolynomial求值等于系数和；再只展开八项求和，系数函数仍是符号。最后证明带八个系数等式输入的通用代入步骤。
3. CoefficientsAudit：另七个实际整数系数各有单独定理。
4. RatSumAudit：独立文件仅含八个字面整数映到Rat、1/9的小幂与加法，直接导入Rat/NormNum，不直接导入Polynomial或Padé模块。
5. ClosedEvalAudit：给通用代入步骤实际提供全部八个已证系数，再以Eq.trans连接纯Rat和。对具体Polynomial目标不运行rw、simp或norm_num。
6. ActualEvalAudit：以已验actualE_eq_fast和Eq.trans还原原目标，包含精确类型断言。
7. Audit：全部15个公开根、14条定理的打印审计。audit_axioms.py拒绝缺根、错误、sorryAx及额外公理；audit-selftest只使用合成日志。

FIRST_PROBE_FREEZE的Coeff0和EvalBridge前缀已先行冻结；全包保留其同字节源码。所有候选均有完整证明文本，无sorry、axiom、native_decide，不用系数或求值假设替代最终实际常数。

本轮没有运行Lean，也没有实际内存收益数据。若Coeff0失败，应先解决单系数归约；若EvalBridge失败，应解决符号求值API；若RatSum失败，问题已被隔离到纯Rat小表达式；若前四层都通过而ClosedEval失败，则继续诊断泛型特化时的definitional equality。不要把任一未验层标为通过。

本包仅δ0；δ1九项初值与两δ实际cap接合仍须完成。原i11边、初始高度和B原题的接受状态由主任务的完整验收决定，本包的有限检查不增加原题覆盖。
