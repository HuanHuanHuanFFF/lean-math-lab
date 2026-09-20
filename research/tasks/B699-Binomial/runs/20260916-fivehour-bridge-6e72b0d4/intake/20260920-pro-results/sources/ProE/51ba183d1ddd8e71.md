# 来源采用、依赖层级与未重验项

## 输入与写入边界

完整读取当前上下文给出的Overview全部335行，并读取上轮variable-modulus的HANDOFF/PROOFS及其ZIP中的FAILURES/SOURCE_ADOPTION；定向读取旧低比值PROOFS与h13交接。没有查询个人记忆、重建其他会话或修改仓库。只在/mnt/data新交付目录写入；没有Lean或外部发布。

## 固定采用表

| 原件 | 实际采用 | 证据边界 |
|---|---|---|
| sources/OVERVIEW2026-9-26.md §1、§2、§3A E、§3B E | NC3、α、4|n、g=λ=w=1/b=2r的完整源分配与同输入窗口，P,Q≥11，真实μ=3时3|ξ,ζ | 冻结作者登记；本轮新一般ξ恢复由此逐项推导，不重做所有历史窗口证明 |
| sources/PREVIOUS_HANDOFF.md、PREVIOUS_PROOFS.md | 最新剩余入口、十四次失败边界、已有指数消费者 | 只作基线和差集比较；新HS2不调用其M²<(PQ)³或分圆证书 |
| sources/LOW_RATIO_PROOFS.md；LOW_RATIO_EVIDENCE.zip | 最小支旧低侧L、h下端 | 作者等级采用，未重新验收 |
| sources/H13_HANDOFF.md、H13_PROOFS.md；H13_EVIDENCE.zip | 全h13闭合及综合结论：最小支P>4Q | 只有ODD/μ3最小支推论需要；HS2不需要。未重跑旧单位/Matveev/格末端 |
| sources/PREVIOUS_EVIDENCE.zip | 上一轮完整字节证据及它的嵌套来源 | 仅保留和散列，不把包含旧PASS当成本轮独立验收 |

每个复制源的原挂载路径、大小、SHA256均列于sources/SOURCE_MANIFEST.json。

## 新旧依赖分离

新HS2链：Overview明确窗口 → 本轮一般ξ整数恢复 → 本轮原P同余与高侧大小 → 相邻互素块 → 奇偶矛盾。

新最小支ODD链：HS2 + 冻结P>4Q。旧低侧L/h13仍是采用缺口；完整复制其原包不消除该缺口。

μ3最小支闭合：ODD + 原α/真实μ定义。最小支只剩2^(6t)与3·2^s中的偶s限制来自旧λ=1，未重复计作新结果。

## 外部阅读

本轮检索并打开了一手论文的出版页：Allombert–Belabas, Practical Aurifeuillian factorization, JTNB 20 (2008), 543–553，DOI 10.5802/jtnb.641，https://jtnb.centre-mersenne.org/articles/10.5802/jtnb.641/ 。只用于对照前轮方法背景，没有下载或分析该论文PDF，没有采用其算法或任何条件性复杂度结论。

实际新证明不依赖Aurifeuillian分解、分圆定理或新的外部深定理；只使用文内直接证明的整数恒等式、整除、完整幂分配和大小比较。上述网页不是本轮新定理的来源。没有进行足以支撑全球出版新颖性的文献审计。

## 本轮证据等级

完整作者纸面证明；两份标准库实现分别核对系数与固定多重次数上的完整取值网格。第二份不导入第一算术核，固定弱模型的因数分解独立重算。有限代数验证不等于一般NC3理论或旧L/h13的机器证明。

两检查器同属本会话，不冒称外部独立审稿。10类坏证书均实际提交并拒绝。SHA256/ZIP解压/包内只读重放分别检验字节完整性与执行可复现性，不自动提高数学采用等级。
