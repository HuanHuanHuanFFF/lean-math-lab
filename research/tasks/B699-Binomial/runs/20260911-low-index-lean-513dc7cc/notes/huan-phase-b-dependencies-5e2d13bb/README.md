# 阶段B固定19项：逆向依赖导航

本目录是基线 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67` 下的有界准备清单。目标集合是 `{11,13,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,33,34}`。当前目标状态表仍为阶段B `0/19`；本文件和同目录 JSON 不增加任何Lean接受数，也不表示主线程已经进入阶段B。

机器可读主表：[phase-b-dependencies.json](phase-b-dependencies.json)。它把每个最终原题消费者向后拆成来源、纸面前置、有限证书、Lean接口和最小下一项义务。

## 共享接口的真实边界

阶段A/共享前置在 `verification/20260911T004440769454Z/evidence.json` 中有26个源码闭包的实际编译和公理审计记录。可复用部分包括：完整素数幂定位与 `avoidingPart` 转移、三窗口/实际避免部分、`LargeDivisorWitness` 与 `GapBridge` 的顶端素数和大除子消费者、`IntervalCover`/`FiniteCover` 的检查器，以及本轮已验的分块组件。

这些源码没有消费任何阶段B证书。`HeightCertificateData`/`RegisteredHeights` 的固定表是阶段A数据；阶段B的Padé、Matveev、BFT种子、位置加权、指数分块和CRT数值不能写成 `HeightValid` 后直接计完成。下一次必须新增源对齐的B数据、证明其算术条件、绑定证书字节，再编译每个完整 `common_i…` 原题根。

## 六条消费者路线

| 路线 | 指标 | 最终纸面消费者 | 关键外部输入 | 当前证据状态 |
|---|---:|---|---|---|
| Padé三项 | 11、16、21 | Padé三项报告 §8 的顶端素数、大除子和 `i=11,n=330` 分段 | BFT Lemma 4.1/Prop. 5.1；冻结非对称Padé高度 | 纸面＋精确有限证书；无Lean |
| i13闭合 | 13 | i13报告 §8，含 `n=126` 的50个j | BFT Lemma 4.1/Prop. 5.1；自有Padé式11边 | 纸面＋精确有限证书；无Lean |
| 四项闭合 | 19、22、24、25 | 四项报告 §5 的完整末端 | BFT Theorem 2.1、Lemmas 3.1/3.2/4.1、Prop. 5.1；三组种子 | 纸面＋精确有限证书；无Lean |
| 七项闭合 | 17、23、26、27、30、32、33 | 七项报告 §4 的顶端素数/大除子消费者 | BFT Theorem 2.1 与既有三窗口高度 | 纸面＋精确有限证书；无Lean |
| 零边界 | 28、31、34 | `zero-boundary/candidate-chain.md` 的完整候选行 | Matveev 2000 Cor. 2.3；无Padé | 纸面＋精确有限证书；Matveev/Lean桥未验 |
| i18修正待审 | 18 | i18原包的顶端素数/大除子末端 | BFT公式(5.14)/(5.15)、Lemma 4.1/5.4、Prop. 5.1；10条Padé | 原theta常数有10倍转录错误；补丁未应用，第二审读未完成 |

## 来源与风险要点

- Padé三项的初始高度来自 `20260910-asymmetric-pade-022987af`，该报告明确说BFT Lemma 4.1/Proposition 5.1仍是外部纸面输入；本轮避免 Matveev、Dusart 和短区间素数供应，但这不等于BFT被形式化。
- i13在 `delivery/notes/PROOFS.md` 中显式说明不使用 Matveev、Dusart 或 EEES；其2048个方向、7/10桥、块和CRT均是纸面加精确证书。
- 四项路线使用BFT Theorem 2.1、Lemmas 3.1/3.2/4.1和Prop. 5.1的三组显式种子，未把旧的未具体化 `C₀`、Matveev或Dusart当作数值完成。
- 七项路线的新压缩本身只用初等整数不等式、完整赋值定位、CRT和区间并；其初始高度仍依赖BFT Theorem 2.1和既有三窗口纸面结果。
- 28、31、34是独立的Matveev零边界路线：`M64-certificates.json`、`20260909T090620Z/certificate.json` 和 `20260909T092400Z/certificate.json` 已有精确记录，候选行无未解决项，但Matveev对数下界、实数桥和行装配仍未Lean化。
- i18的第一位独立核验者发现BFT Lemma 5.4 的正确相对误差为 `213/10^6`，原件使用了 `213/10^7`。`CORRECTION.md` 和两个 corrected theta JSON 是修正候选；补丁尚未应用到原件，也没有替第二位独立核验者接受。

每项的证书文件、数量和最小Lean义务见 JSON 的 `groups`。完成阶段B时，顺序应是“固定来源/新哈希 → 证明外部数学前置或明确形式化接口 → 证书字节绑定 → 适配有限消费者 → 编译完整原题根 → 公理审计”，而不是把通用检查器或假设高度当作最终结果。
