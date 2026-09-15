# 来源、阅读与执行边界

唯一新外层输入：B699-ABD-next-round-20260915-v1.zip。
SHA-256：78e1958b1071d72216c72e812221e7ddceb7094d5b302d8ed629e0a9e6dc977d。

实际读取START_HERE.md与tasks/B.md。该包没有README.md或tasks/COMMON.md；没有虚构这两份文件。只执行用户本次Pro B要求，不采用旧包任务/权限。

B原件 inputs/B699-R7-ProB-digital-complexity-and-cyclic-family-evidence.zip 的原字节SHA-256：7ef748f6fb30f892f6a3ca6f9830bf7ee4c6f10bd76ba08c60e213461df1ae7b。实际全文读取REPORT、HANDOFF、SOURCE_ADOPTION、notes/FAILURES、notes/PROOFS；5份文本原字节放在sources/previous，原ZIP放在sources/previous.zip。逐成员路径/字节/哈希见sources/SOURCE_MAP.json。

正向历史前置仅为NC3的完整幂窗口；新notes/PROOFS §1已重新证明，包括p=3和4|n。上一轮数字高度和CYCLIC只用于比较前沿，不重跑旧73行/120素数/33底部，也不以它们承担新主定理。没有采用A/D本轮新的数学成果：只按外包MANIFEST对全20份载荷核过字节，不能把哈希读取说成数学阅读。

## 外部查阅

为核准通用工具的适用边界，进行过“同时Dirichlet逼近”“Eisenstein X^k−2”两条定向搜索。没有进行大范围文献盘点。同时逼近在新正文中由8^w个盒子的有限鸽巢直接证明，搜索摘要不承担定理依赖。

实际打开Ben Lynn（Stanford托管）的原作者讲义：
`https://crypto.stanford.edu/pbc/notes/numbertheory/eisenstein.html`。
采用的只有X^k−2的首一Eisenstein/Gauss初等论证；新正文给出所需证明，不照搬该网页一般叙述中省略的首项条件。不把讲义当作本轮新结论来源，不声称新颖性。未下载或分析任何新PDF，未使用BFT/BEG/对数形式/素数分布出版输入。

## 本轮产生的内容

多项式正实根障碍、同时位移压缩后的统一数字高度、六退化模板分类及四周期族消费者为本轮推导。发现阶段用过本地SymPy生成固定余式、找短CRT周期；接受代码没有SymPy。主重放的稠密整数多项式与另一份稀疏有理长除法不共享核心实现。

有限分类回归不是无限证明，符号大指数证书没有展开巨大n。新族满足第一窗口但第二窗口失败，不是Π/NC3反例。所有独立检查程序仍是本会话作者写作，不能称为第二独立研究者或人审。

没有读取/改写Git仓库，没有启动Lean、其他会话或外部任务。输入原ZIP字节保持不变。两次预检失败及修补见notes/FAILURES和replay/preflight-failure.txt；失败未登记PASS。完整冻结重放与解包重放收据另列。
