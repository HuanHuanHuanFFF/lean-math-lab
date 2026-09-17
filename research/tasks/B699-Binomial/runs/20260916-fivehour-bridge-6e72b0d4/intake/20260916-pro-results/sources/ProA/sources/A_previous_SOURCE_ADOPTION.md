# 来源采用与执行边界

## 原字节输入
实际采用当前页挂载的B699-ProA-i9-rough-base-repdigits-evidence-20260915.zip。
SHA256：71371d4808c798f7a9e02960dea5501d37bd77656f304842189dcd64f24a2648。
大小：55,996,329字节。本包inputs/A-rough-base-repdigits-original.zip为同一文件，仅存一次。原件未改动。

读取上一轮REPORT、HANDOFF、SESSION_STATE、SOURCE_ADOPTION、FAILURE_BOUNDARIES和完整证明，再读取已有QUADRATIC_PROOFS的T1。8份采用成员的精确路径、大小、SHA256及本地副本映射见sources/ADOPTED_MEMBERS.json。verify_sources.py检查原ZIP SHA及八份成员逐字节一致；这不是重做旧数学接受。

## 冻结契约
F：sources/previous_sources_A9_FINITE.md，全部合法n<2^4096。
U：sources/previous_notes_PROOFS.md §§0、2、4，NC9且400|n的源高度、v3/v7限制。
L：同文§3，NC9且400|n的有效入口下界n≥2^14000001。
P：同文§4逐位置式，不是已经对位置取最大后的U。
QX：sources/QUADRATIC_PROOFS.md开头T1，对最大2/5幂在0的全行四位置排除。T2含α前提，本轮未把T2无条件采用。

S/CP只消费F/U。A±消费L/P/QX以及生成位置所需的已有全NC条件。冻结链含PC=(A3A7)^5000≥(n/2)^463、内容族(19,27,42)的排列、BFT表项和θ估计；局部A14-CUBIC保留完整幂及立方余因子前提，不由“i14已闭合”跨指标引用。源记录中的70,539个content有限块、283个尾项、局部立方大整数块及A9末端，本轮执行次数全为0。没有重新采用i3成果或等待B/D。

## 新初等推导
CY的无限分类由圆分除数乘积、赋值提升和除数和唯一性在notes/PROOFS.md§2自证。CP用单位圆根大小和完全乘法性；A±用准确模21输入和费马周期。没有新增线性对数、S-unit或其他深层出版定理。

联网只是核对背景与比较路线。实际阅读Granville作者页面：
https://www.cecm.sfu.ca/organics/papers/granville/paper/binomial/html/node2.html
其Kummer按素数逐层进位是背景，不是新消费者的独立发表来源。圆分搜索中的未核对结果没有采用。未分析或下载任何新的PDF，不声称有未获取的PDF原字节。

## 等级
所有新结论为作者纸面推导＋本轮普通程序精确有限检查；依赖保持冻结作者等级。未Lean、未外部独立数学审读。两套整数实现是同一作者的交叉诊断，不称第三方独立接受。新接收PASS、样本和哈希不证明旧出版输入。
