# 来源、署名与复用边界

本批接收用户提供的 `external-research/deliverables/Erdos-686-677-699-report.md` 与同名 evidence ZIP，来源会话目录为 `/workspace/scratch/c6b148d48b6d`。完整来源链、固定版本、原许可证文件和实验边界在原 ZIP 的清单、README 和各题 findings 中。本批不替来源作者补写身份或许可证。

| 来源 | 本批使用方式与边界 |
|---|---|
| Kuber Mehta / [Kuberwastaken/c5-k4](https://github.com/Kuberwastaken/c5-k4/tree/5c6aae7e9550838a582178eb9320a658314396cc) | 保留 divisor-run 动机归属和固定提交。未核得明确代码许可，不直接复制 C5-K4 的程序。接入的 `DivisorRunAudit.lean` 是外部审计独立撰写的 Lean，保留其原注释。 |
| 外部审计的 `bridge-lean/DivisorTransfer.lean` | 独立形式化标准二项式恒等式与互素消去；未声称数学首次发现。Price 是二手来源线索，不宣称恢复了其原稿或代码。 |
| E. F. Ecklund Jr., R. B. Eggleton, P. Erdős, J. L. Selfridge (1978) | 原报告记录的论文 *On the prime factorization of binomial coefficients*, J. Austral. Math. Soc. (Series A) 26, 257–269，[DOI](https://doi.org/10.1017/S1446788700011770)。论文版权不等于代码许可；本批没有移植 EEES 的 Lean 基础理论。 |
| Will Blair，固定 `aff1d30b3b1c6bd705810fa4d588b03940fb31df` | 原 ZIP 保留 MIT 来源与许可材料；本批没有新增复制其 provider 源码。项目此前接受的 provider 切片、API 适配及许可见对应 B686 批次。 |
| qrdlgit/erdos677 | 来源快照未核得明确许可，且旧 Sylvester–Schur 占位声明不能作为已证明依赖；本次不接入其代码。 |
| Atlas、Cong Lu、lean-genius 及匿名历史稿 | 仅保留原报告的固定来源和诊断证据。Cong Lu 来源声明 MIT OR Apache-2.0；本次不新增移植其 Rust 程序。匿名 PDF 的作者身份不作推断，各历史版本分别解释。 |

原 ZIP 作为一次性证据快照保留，包括原始许可证、外部切片、旧日志和二进制；归档不意味着采用其中的程序。实际接入编译的外部文件只有两份独立新写的 Lean 源文件。各题消费者及新验证由本仓主线程完成，独立静态数学审查由 Astra Max 完成，跨版本状态审查由 Luna Max 完成；AI 审查与 Lean 内核验收分别记录。
