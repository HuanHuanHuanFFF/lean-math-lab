# Delta0：闭合求值与原式桥接隔离

仅准备ThreeTwo delta0，精确参数A15、B7、C15、z1/9，数值仍为13515592997264/1594323。没有改变原命题、常数、旧冻结源或主任务源；没有运行Lean，没有扩到delta1。

ClosedEval.lean的目标只含coefficientPolynomial、fastECoefficient、eval₂和固定有理数。文件正文不含actualE或Nat.choose；先单独norm_num计算8项阶乘商多项式。该模块只复用已验ChooseFast定义，不导入失败的ThreeTwo值定理。

Bridge.lean再显式给出actualE_eq_fast 23 15 0 1 (1/9)的特化类型，右边直接是A15/B7/C15的同一闭合多项式；最终只使用Eq.trans hfast closed_e_delta0。该文件没有rw或norm_num，不在原actualE目标中重跑数值计算。

两个公开根是Math.B699.I11InitialCapRevision.closed_e_delta0与actual_e_delta0_trans。各自有独立typed/#print入口，总Audit也显式打印两根。建议先真正验证ClosedEvalAudit，再在其成功结果上验证BridgeAudit；目标路径及源码SHA在INTEGRATION_MAP.json。

这只是有界诊断候选。若ClosedEval仍失败，快算本身或闭合多项式求值仍有资源问题，不能归罪于原式桥接；若其通过而Bridge失败，才有证据继续定位特化/转换；若两者都通过，则得到可用的delta0分层计算方式，但仍未测试delta1。主3072MiB原版重验若先通过，本包只保留为诊断备选，不扩展框架。

ChooseFast已验回执i11-choose-fast的5根及当前原字节已只读匹配，evidence20260911T233436323255Z，18.017秒。旧直接rw→norm_num版本在1536MiB失败，evidence20260911T233527324941Z；其kernel excessive memory和约14.3秒来自主任务实测回报，失败状态/预算已从evidence重核。该变化区别于更早5M whnf心跳耗尽，不能把通用等价已通过误当具体数值已通过。

独立有限检查重算8个整数系数，并以阶乘商、comb和Horner有理求值交叉核对，得到同一精确值；检查两个源的结构隔离与typed审计，原冻结15文件逐个SHA未变。细节见checks.json及SOURCE_MAP.json。新revision外没有写入。

开始2026-09-11 23:44:34 UTC；20分钟检查点2026-09-12 00:04:34 UTC，非截止。任务在检查点前封包。当前只提供未编译诊断候选，B原题新增0/19。
