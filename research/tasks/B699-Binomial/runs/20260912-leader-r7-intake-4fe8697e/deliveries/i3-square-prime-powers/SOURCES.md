# 来源与证据层级

1. B 上轮原件：`originals/previous-b.zip`，原名 B699-R8-ProB-divisor-split-prime-cofactor-evidence.zip，SHA256 efa3a93b8b3870f03b753039aced7b48012ba4934e2cd23eeeb31452686ec155。采用完整幂必要条件、内容高度、d/e 已闭合子族及 β≤2^20 旧基例。旧目录及 ZIP 未修改；没有重跑旧大枚举。
2. 用户点名的 C 第二轮：`originals/c-r2.zip`，原名 B699-ProC-R2-resumed-results-20260911(1).zip，SHA256 ea89a10ad9f493932741439204e386cc22e9f5cec9645f8ee468f9172af93789。当前运行时最初没有该附件路径；先在 Library 找到同名记录，再通过 Files materialize 取得原字节。已读 REPORT、notes/PROOFS 中运输、H/L、G/缺陷商界，消费者范围按原件保存。它的 Padé 增长率/有限 m0 不是本轮 i3 新消费者依赖，没有重跑那些证书。
3. 全部采用文本与 ZIP 成员的逐字节对应关系见 SOURCE_MAP.json。两个原 ZIP 都在新证据包内按原字节保存，故本轮可独立恢复上下文。
4. 外部定向核查：mathlib 官方文档 `Mathlib.Data.Nat.Choose.Factorization`，2026-09-11 读取 https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html ，核对 Legendre/Kummer 的完整进位定义；对应条目 Nat.factorization_factorial、Nat.factorization_choose。仅背景/接口核查，不是实际编译或新接受的 Lean 依赖；证明可由逐层阶乘计数自证。本輪未采用其他网络资料，不以网页搜索结果替换冻结材料。

本轮新有限命令成功不提升 B/C 上游为 Lean 或人审。本轮没有核对在线 main、没有联系其他会话、没有修改 Git 仓库。
