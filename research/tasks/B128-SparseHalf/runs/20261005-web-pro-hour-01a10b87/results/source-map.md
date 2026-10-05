# 来源映射与依赖审计

核对日期：2026-10-05。这里只登记实际读取的来源与使用范围；不把外部数学定理说成在本环境重新验过的 Lean 结果。

## A. 用户指定附件与原始题面

输入：`Erdos-156-25-128-Web6Pro-1h-20261005-v1.zip`。完整 ZIP 的 SHA-256 与本路选取文件的字节数/哈希在 `data/input-provenance.json`。所复制的六个输入文件逐一与原附件 `MANIFEST.json` 匹配。

- `input-context/TASKS/B128.md`：本路任务、原题与交付合同。
- `input-context/COMMON.md`：60 分钟、20 分钟首检、最后整理、不得夸大有限结果等规则。
- `input-context/FIXED-TARGETS.json`：平台固定目标记录；本路只使用 `Erdos128.erdos_128`。
- `input-context/SOURCES/B128/FormalConjectures-128-current.lean`：原始阅读副本。包含 `answer(sorry)` 与证明末尾 `sorry`，是待证明题面，不是已有解答。

平台锁定源码提交记录：`6a786f997e18e8f095762a2830d191b7e25e505e`。输入的阅读副本来自 `89294ea02bd7cd678d59984add52cb4baef3dbf4`，不是锁定构建输入。Lean `v4.33.1` 与 mathlib `0df444a360eaa60ab8c11dca51a86af692955474` 仅是附件中的冻结调查信息，本轮没有复建。

原始 FormalConjectures 文件保留 Apache-2.0 版权头与完整许可证；其他论文 PDF 未随成果包再分发。

## B. 主要数学来源：Razborov

Alexander Razborov, **More about sparse halves in triangle-free graphs**, arXiv:2104.09406v2。

- 固定版本 PDF：https://arxiv.org/pdf/2104.09406v2
- 摘要与版本入口：https://arxiv.org/abs/2104.09406
- 作者版入口：https://people.cs.uchicago.edu/~razborov/files/halves.pdf
- 作者附加证书入口：https://people.cs.uchicago.edu/~razborov/files/halves.zip

实际核对 PDF 正文及必要截图；以下“印刷页”从 1 起，PDF 页索引从 0 起。

| 使用内容 | 精确位置 | 本轮用途 |
|---|---|---|
| 半权重、β、ρ、有放回 C4 | §2，印刷第5页，PDF索引4 | 归一化与有限图含重复顶点 |
| R1：C4≥3ρ²/2−81ρ/256 | §4.1 式(3)，印刷第8页，PDF索引7 | 基本版与强化版的外部输入 |
| R2：C4+2M4≥3ρ²/2−6ρ/25 | §4.1 式(4)，同页 | 无额外图类限制；保留2M4项 |
| 作者的有理PSD证书说明 | §4.1，印刷第8–9页 | 确认是精确有理计算路线，不把浮点SDP当证明 |
| 原三块边平均法 | Proposition1.1、§4.2 | 本轮明确从此增加剩余块对称扰动 |
| R3：α≥3/8时β≤α(1/2−α)/2 | Theorem3.6，印刷第7页，PDF索引6 | 强化版先排除最大度≥3n/8的已有分支 |
| 27/1024一般界；强正则、无诱导2K2、围长≥5、α≥2/5等类别 | Theorems3.2、3.3、3.5、3.8，Corollary3.7 | 公开前沿校准，不冒充本轮新解类别 |

R1/R2 的作者附加 Maple ZIP 没有成功获取，未重放作者矩阵。本轮新的精确证书是剩余图和平均化的非负恒等式、Clebsch 的整数 Gram 矩阵；它们不能冒充作者原始 flag-algebra 证书的完整复算。

## C. 前沿条件与舍入：Norin–Yepremyan

Sergey Norin and Liana Yepremyan, **Sparse halves in dense triangle-free graphs**, arXiv:1311.5818v2，2015-02-10。

- 固定版本入口：https://arxiv.org/abs/1311.5818v2
- PDF：https://arxiv.org/pdf/1311.5818

核对摘要、Theorems1.1–1.2 以及 Lemma2.1。其最小度条件为 `δ(G)≥5n/14`；高密度条件是某个绝对 γ>0 下的 `m≥(1/5−γ)n²`，不是把最小度、平均度和边数的常数互换。论文还处理 Petersen 的适当编辑距离邻域。本轮不依赖这些特殊类定理来产生新一般常数。

奇数向下取整及由半权重舍入到整数集的思想属于已有工具；本轮重新写出完整初等舍入推导，只为对接原题，不宣称该舍入引理新颖。

## D. 平台目标与资格

- 任务页：https://conjectures.io/problems/erdos128-erdos-128
- 条款：https://conjectures.io/terms

实际网页核对的目标仍显示 `True ↔ ... 2*|S|+1≥n ... 50e>n² ... ¬CliqueFree 3`。页面源码类型哈希为 `518df97285e368db18acc8ca5d7543fc963a45d1f8337310a350c045df8e6a46`；任务ID为 `fc-6a786f99-erdos128-erdos-128-9fc1657f9a-formalized-v1`。字节文件哈希不等于此类型哈希。

读取时页面尚未列出该题已发布贡献或尝试；这仅是平台页面状态，不证明全世界没有解答。2026-08-13 生效的条款明确区分精确机器验证、新颖性、数学接受和付款；展示赏金不保证支付，还须满足有效的资格、验证、审查、署名和支付条件。本轮无任何提交或外部联系。

## E. 检索边界与失败访问

开头进行了定向公开检索，后在出现一般改进候选时补作一次针对 sparse halves/27/1024/perturbation 的检索。主要仍定位到上述原始论文；返回的 K4-free、最大割等邻近问题没有被误当成 Erdős128 的完整解答。没有完成穷尽式新颖性调查。

`erdosproblems.com/128` 的直接读取失败；作者附加 ZIP 和容器直接下载 PDF 未成功。但指定用户附件本身完整可读，关键论文公式已通过网页 PDF 阅读和截图核对，因此工具障碍没有被掩盖或升级为虚构实验结果。成果包不包含未成功下载的 PDF 或 Maple ZIP。
