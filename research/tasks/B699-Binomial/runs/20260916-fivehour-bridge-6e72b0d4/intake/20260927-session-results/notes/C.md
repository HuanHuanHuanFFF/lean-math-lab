# C：20260927 原生 i6 会话 R1--R10

## 口径与来源

本记录整理 `B699-C-session-all-evidence-zips-20260927.zip` 的 10 个直接阶段包。外包[INDEX.md](../objects/49/49758d8a8e652ad1479a555b1ac30b87915fef3467a293d5989578b5382916cc.md)和逐包 `REPORT/PROOFS/HANDOFF` 见[ROUND_INDEX](../ROUND_INDEX.md)。这一路是原生 i6，和 D 的 i3 同一原输入平衡核心分开登记。

本轮不执行作者脚本、证书或回放，不核验 BFT/外部定理适用性；没有 Lean 或外部独立审读。阶段包数不等于新定理数或原题候选数。

## 10 个阶段

外包清单对应：R1 `q4-character-routing`；R2 `central-norm-lift`；R3 `first-source-deficit`；R4 `negative-support-return5`；R5 `R5-primitive-resonance`；R6 `unitary-fifth-contact`；R7 `global-integral-recovery`；R8 `global-gap-factor`；R9 `central-core15-pair-source`；R10 `pair-pell-obstruction`。每阶段的原包哈希、成员和来源链接以 `ROUND_INDEX.md` 为准。

C 的直接外包成员有 10 个；其中 `q4-character-routing` 与 `central-norm-lift` 的字节也作为前序 `PREVIOUS_ROUND.zip` 出现在嵌套来源链中。恢复时必须同时保留它们在外包中的原路径和嵌套父路径，按 SHA-256 映射到同一普通对象，不能把字节去重误记成缺包或新阶段。

## 最新作者前沿

R10 在同一真实普通因子对上排除四个有效平方自由核对 `{6,65}`、`{6,185}`、`{10,71}`、`{10,159}`，并给出一个系数可无界的普通范数条件族。作者明确登记“认证历史净删域=0”；`R7={3,4,5,6,7,8,9}`、`B-RES10`、`E4` 平方残支均未闭，也没有全条件普通整数模型。[R10 报告](../objects/b0/b008ba60b07ec6f663d45a361b307780b58c503b460437e88007dedcc2badd83.md) · [R10 交接](../objects/2c/2c6386b1ad4b6d28f4d1f9c8b9815c55afc2e24842b1a54fbfe3d4d987042502.md)。

下一桥梁是把范数轨道中的 `x=gz,w` 接回实际 `α=3^a`、因子对、真实 gcd、`q2/q3/q4/C` 分配和同一原输入；辅助范数点不构成恢复的 `(n,j)`，也不构成反例。所有平方部、指数、粗素数支持、原 `n,j` 及范数轨道参数仍可能无界。[R10 失败边界](../objects/b1/b13b5b832d3d35730c12de506833e912af021fa12fdd5214daba99befa9d3010.md)。

## 归档字段

来源恢复继续保留外层根、直接阶段、嵌套 `PREVIOUS_ROUND.zip` 的 `archive_sha256`、原始成员路径、成员大小与 SHA-256、`kind`、`retained_path` 和父容器 `parent/member`。本批是相对前一 intake 的独立快照，不替换旧批次；共享字节只按映射复用，不能据此合并历史前沿。
