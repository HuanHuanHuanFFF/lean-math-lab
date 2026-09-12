# 冻结依赖与本轮重算

本轮唯一主输入：adopted/BASELINE_58_FAMILIES.zip，完整身份在SOURCE_INPUT.json。它内含原v2任务ZIP以及更早A/C证据的可恢复字节；不是从其他会话的工作目录猜路径。

|接口|来源（恢复后）|本轮动作|
|---|---|---|
|58族与八位置|baseline/notes/PROOFS.md、evidence/normal_forms_58.json|读原文与身份；未重跑已删族|
|A9-FINITE、标量|baseline/_cache内i14的notes/I9_FINITE.md|准确量词冻结采用，未重跑末端|
|A14局部立方3/7|恢复i14的notes/PROOFS.md §7，evidence/blocks/blocks_3_7.tsv|核对前提、头部及哈希；133块未重算|
|通用Padé清分母接口|有效高度包notes/PROOFS.md，最新baseline §3.2|采用已交付符号证明|
|(19,27,42)内容增长|effective/evidence/accepted_content_family_19_27_42.json和content_tail.json|核对g=8051/1000,m0=22047,M=1e8，6排列、两δ；70539块/283尾项未重放|
|BFT(5,3)|作者原稿Prop5.1，L1=1.5454,m0=86|核对原文表格；未重新证明出版定理|
|θ有效估计|BFT Lemma5.4，作为旧content前提|核对出处；沿用冻结依赖|
|两条新消费cut|evidence/cut_inputs.json|两套整数／有理区间实现全部重算20余量|
|多项式与对偶|evidence/quadratic_dual_certificates.json|本轮新证明与逐系数接收|

本轮直接新链需要上列额外内容族；完整58族历史仍携带其原有其他内容／表项依赖。不能因为这次只调用两条cut，就声称整个B699证据链只有这两个出版依赖。

文件身份与恢复代码只保证接收到相同旧字节；不替代对旧纸面证明或旧证书的重新验收。全部真实新接收范围见logs/release-acceptance/acceptance.json。
