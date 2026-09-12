# i13 实际 5/7 窗口边候选

完整证明文本已准备；尚未运行 Lean。目标短目录 lean/I13FiveSevenEdge，namespace Math.B699.I13FiveSevenEdge。本包只拥有此新实验目录，原 i11 源和全部此前冻结包保持只读。

最终 actual_five_seven_edge 对任意自然数 Y,e,f,A,B，仅保留：Y≥2^65535、A,B≥1、5^e A 与 7^f B 都在 [Y,2Y]、带符号差的绝对值≤24。结论为

    Y^355≤A^1000 ∨ Y^221≤B^1000.

最终没有 G、D 递推、四树、Q/E 标准界、容量、m、数值证书或另一条组件边作为外部假设。差可正、负、零；余因子不要求互素，窗口位置不要求互异。

| 建议验收次序 | 模块 / 短审计 | 内容 |
|---|---|---|
| 1 | Parameters / AParams | 固定 R、Z、M、Y0，正性，比例与同一 leastExponent |
| 2 | Basis / ABasis | 4 个短基、前一项界、两侧全部 rate/base/lookahead |
| 3 | Selector / ASel | 所有 Y 的同一 m、上下约束、两严格指数提取 |
| 4 | Content / AG | 从实际 D0 初值/粗步进得 telescoping；真实 δ1 邻接式给 50 倍下界 |
| 5 | Rates / ARates | 两小有理比和4/32步小幂，不展开826次大比值 |
| 6 | Decay / ADecay | 两个显式二次恒等式，序列归纳递减，统一 m≥826 的小界 |
| 7 | Growth / AGrowth | 真实四树、m1 caps、两 δ 各自内容身份，分别清 E 缩放 |
| 8 | Envelopes / AEnv | 两个符号幂分式恒等式，真实行分式和小于1 |
| 9 | Final / AFinal | 原窗口整数间隙反证；AFinal 显式锁定完整最终类型 |

Audit 导入最后模块并审计全部73个公开声明，其中56个定理。每个短审计有可执行 #check 和 #print axioms；AFinal 另有完整目标类型注解。审计入口尚未执行，不能据此称 std3 已通过。

保留的数学区别：D1=(7m/2)D0 是有理阶乘下界的真实邻接式，不是 G1/G0 的等式。Content 对 δ0 证明 lowerG≤G0，对 δ1 在 m≥15 证明 50·lowerG≤G1。Growth 从各自的真实内容身份清分母：δ1 E 行额外的50由这个较强下界抵消。Q 行再放宽到共同上界。没有比较实际 Q1/Q0 或 E1/E0。

下界 lowerG=(16/3)R^(m−1)/(m+1)^2 由已验实际 factorial step 内部导出。R=387420489/52706752。固定 Z=800066819113475893826133、M=826、Y0=2^65535，四短基最大整数1272bit。没有 D(826) 大阶乘、新树、对数选择器或新的高度搜索。

来源采用冻结 huan-i13-five-seven-height-probe 的完整纸面证明/精确证书。SOURCE_MAP 逐项绑定实际 G、Hom、四树、选择器、Factorial 和 Rat 桥所用源。C311 只作写法参考，本包没有导入其候选或任何不相关组件边；现有 I11FiveSevenFinal.ActualInstance 只供应实际树族，旧 i11 边结论没有被调用。

已做的验证仅为静态与精确有界诊断：短基、m=1..16 的两个新分式缩放等式、真实 factorial 下界/δ 邻接、m15/16 的50倍关系均通过。check_packet.py 可只读重放。它们不替代 Lean 核验，也不是从有限 m 外推全 m；全 m 候选分别写出了 telescoping、二次多项式与 Nat 归纳证明。

待主任务串行验收的主要 elaboration 风险在 Envelopes 的两个 field_simp/ring 身份及 coercion；这不表示已发现数学反例。已显式展开 heightY0 别名，并用短幂指数证书提供容量，避免直接正规化巨大高度幂。若出现真实诊断，应在另授权集成副本定点修复，保留本冻结原稿。

本包若核验通过，将消除这一条 i13 边的强出版 G 输入；不会单独证明完整 i13，更不证明旧8192阈值。其余三个真实强 G 缺口、全图统一高度和有限覆盖仍独立。

开始 2026-09-12 05:35:30 UTC；20分钟检查点05:55:30UTC已交父任务，非总截止。完成主体后仅整理审计与冻结记录。没有 Lean、Git、提交或推送。
