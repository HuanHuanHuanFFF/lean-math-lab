# 本轮来源采用

- 实际读取并按原字节提取上一轮B699-R7-ProB-all-odd-prime-two-digit-rows-evidence-20260916.zip中的REPORT、HANDOFF、PROOFS、FAILURES、SOURCE_ADOPTION；源ZIP SHA-256为a452cfe961fab032f07ab494f9708a7bbe6e82512d3b0f33da4805e53768c2c4。逐成员映射见sources/SOURCE_MAP.json。
- 当前总览按用户提供的OVERVIEW2026-9-16-11.md采用R7、完整NC3题面及证据分层。未读取本轮进行中的A/D或任何新仓库状态。
- 上一轮两位行的完整结论作为历史前沿保留，但本轮ROW的证明不以其闭合消费者为黑箱，仅采用并重写初等NC3⇒W1及进位桥。
- 本轮联网只定向核对官方mathlib文档的Sylvester结式、乘法及整数Bézout接口，以及Eisenstein入口。所有所需无限代数事实均在正文展开；未执行Lean、未认证当前或冻结库的编译状态，也不将文档视作本轮形式化。
- 当前网页原始来源：
  - https://leanprover-community.github.io/mathlib4_docs/Mathlib/RingTheory/Polynomial/Resultant/Basic.html （定义Polynomial.resultant、resultant_mul_right、exists_mul_add_mul_eq_C_resultant）
  - https://leanprover-community.github.io/mathlib4_docs/Mathlib/RingTheory/Polynomial/Eisenstein/Basic.html （只核对术语；本文采用直接加权证明，不调用该页作为未展开定理）
- 没有BFT、Padé、BEG、超椭圆高度、线性对数形式、PNT/Dusart等出版输入。该说明不是原创性认证；加权初项和Sylvester工具本身是标准代数方法。
