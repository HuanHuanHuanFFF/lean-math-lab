# 来源采用与执行边界

唯一外层输入 B699-ABD-open-next-round-20260914-v3.zip，SHA-256：

    dd9a91f33cbf489a25ecd6de3e3368178323c5ea2d033781b6f6c984b0c7641f

已安全解压、核对PACKET_MANIFEST中的全部35份成员，读README、COMMON、B任务、FRONTIER/EVIDENCE，运行 `python3 prepare_inputs.py B`。恢复器返回B 69个、D-as-B 61个外层成员，仅表示字节恢复。两个原ZIP原字节保存在sources/originals，逐成员映射在sources/SOURCE_MAP.json。

## 阅读与正向采用

- reading/B、reading/D-as-B 的 REPORT/HANDOFF/SOURCE_ADOPTION 已完整读取。
- B的 notes/PROOFS.md §§0–4及部分§5、D-as-B的完整§§0–6已读取；这些原文完整复制。正向采用仅为D-as-B §1–2.1的规范Π、H/U、完整g²整除及g⁴<3n；新证明§1逐项重写，所以不需要其未读尾部或出版HEIGHT-B。
- B的完整平方条件/固定缺陷接口只用于选路，不调用其BEG Thm2.1。D-as-B的HEIGHT-B/LOG-BAND不作正向数学输入；LOG-BAND的实际原始不等式只用于覆盖差异比较。
- 两份稿件的同名H/U/V在报告中已重新对应。没有将D-as-B署名的成果当作本轮B原创，未将Π认作NC3。
- A与D-quartic最新REPORT完整读完，仅作R7及NC9/NC4/NC5范围参考；没有移植到NC3，未采用其未读的具体新证明。未重放任何历史大证书。

## 新数学与搜索边界

循环数字和、数字乘积改进、两窗口循环消元和完整W由本轮正文给出初等证明，无新增出版黑箱。因数发现使用本地SymPy，但最终每个素因子完整试除认证。MITM只发现无限CRT族的短指数列表；接受器只核完整周期和余数，无限覆盖由正文证明。

做过两条定向网页检索以检查数字和/现成资料（“multiples 2^n−1 Hamming weight”；mathlib digit-sum）：返回结果未提供本轮可采用的原始定理，不进入正向依赖，未据此声称新颖性。没有读取/下载/分析任何新的PDF，不调用原稿的BEG定理；故原稿缺失PDF字节的问题不影响本轮初等消费者。

## 执行

只在新工作目录写文件，不改Git、不同步在线仓库、不push/PR、不派其他会话、不运行Lean。最初一次container调用把尚未创建的目录设为工作目录而失败；改在/mnt/data创建目录后重试，未进入数学接受。输入包与原件始终保持字节不变。

所有生成器、第二实现、纸面审查均为本会话作者工作，不是外部独立研究者或人类审稿。字节PASS不等于数学或Lean接受。实际冻结命令收据见replay/acceptance。
