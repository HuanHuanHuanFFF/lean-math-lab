# 本轮来源采用与阅读边界

外层：B699-ABD-open-next-round-20260914-v2.zip，SHA-256为9fdaea3d6ea46ed552bb593b2e48ed5641fc497422aeeb54022659c4c55a8929。已安全解压、读取README/COMMON/B/FRONTIER，并实际运行`python3 prepare_inputs.py B`。准备器只验证字节，不代表数学接受。

## 实际采用

- 上一轮B的REPORT、HANDOFF、完整notes/PROOFS.md：本轮全部读取。采用NC3→精确归一化和Π、同一n/j残量、正z、𝔅=zQ、g|𝔅−3V及零差排除、Θ整数式、旧GAP/D条带范围。
- D-tail原notes/PROOFS.md的规范量和正z段（前130行）已读取，完整原件随包。无限消费者实际引用的是B已自含重述的证明，不假称本轮重审了D全文其它章节。
- B旧证据ZIP按原字节保留，SHA-256为750ce5a35d7a044722dac1781c9a14a430315eb5dac23a9a44f73529e061bc4b。没有重跑历史完整数学验收或旧大枚举。

## 已读但只作选路／边界参考

- A最新REPORT完整、notes/PROOFS.md前105行：完整窗口和上层进位不自动把NC9信息迁移到NC3，未建立可采用的全参数接口。完整证明文件作为只读参考复制，不把复制等同于全文审读。
- D最新REPORT完整：新四窗口QIG、i4/i5平移光滑行不能当成NC3结论。本轮没有调用它的主证明。
- 上一轮B失败边界用于避免重复把独立标量模型当Π。没有读取A/D在本轮运行的新结果。

精确文件/归档成员映射、字节数和SHA-256见SOURCE_MAP.json。`check_sources.py`按本包内容复核全部采用成员，且比对旧ZIP中原字节。

## 本轮新增出版输入

Attila Bérczes, Jan-Hendrik Evertse, Kálmán Győry，*Effective Results for Hyper- and Superelliptic Equations over Number Fields*，arXiv:1301.7168v1，2013-01-30。

固定原文：https://arxiv.org/pdf/1301.7168v1

实际通过网页解析读取第3—4页定义，并查看PDF第4页（0-index=3）截图，核对Theorem2.1中的全部指数。采用范围为无重根整数三次式f(X)=b y³，b≠0，数域Q、S={∞}。没有调用Theorem2.2的平方版或沿用旧Prop3.10的对数常数；不能把这些定理互换。

主DY与无限族不依赖这条定理。固定缺陷高度中明确包含b的高度，三次判别式另证非零。未重证出版论文，也不声称出版作者审查了本项目应用。

原PDF下载到容器失败：curl退出6，DNS不能解析arxiv.org，原始日志见replay/pdf-download.log。因此包内没有虚构的PDF。公开固定版本是重核出版证明的外部依赖；数学公式和精确代入已写在完整证明中。默认程序复现不联网、不重新证明该出版定理。

早期检索得到的其它数论文献未用于任何定理。无额外BFT、Padé、Matveev、Dusart或PNT调用。
