# 实际来源采用与证据边界

## 1. 原始文件

本轮实际输入是挂载的前两轮 Pro E 交付，不从旧对话摘要直接接受未展开证书。

- B699-ProE-squareclass-quadratic-20260916.zip，SHA256 fbc2e57cabd10a2dd25b4006672cbf5bb18b23f80943c87768e7a13d0d690b54。
- 原字节提取并读取 PROOFS.md、OVERVIEW.md、SOURCE_ADOPTION.md；本包存放于 sources/previous-*。
- QT100K 接受其原作者枚举的完整性，当前只重过滤其中139个候选。源证书 JSON 保存在 sources/quotient_100000.json，哈希见 MANIFEST.json。没有重跑未修改的旧全链。
- 读取 B699-ProE-two-block-closure-20260916/PROOFS.md §2，明确认出本轮 z 等于旧 U；保存原字节 sources/two-block-PROOFS.md。不把旧 ROW 前置或同一个商重新命名为原创成果。

前置的作者纸面等级、QT100K 的作者精确代码等级不因本轮读取而升级成 Lean 或独立审读。

## 2. 新采用的公开出版结果

L. Hajdu and Á. Pintér, “Combinatorial diophantine equations”, Publicationes Mathematicae Debrecen 56/3-4 (2000), 391–403。

原文：https://publi.math.unideb.hu/paper/594/download/

实际读取：原PDF第392页的完整整点说明与Theorem 2；第398页Table 10与Other points。两页均以网页PDF截图目视核对。采用范围：模型 Y²=X³−36X+1296 的完整整数点分类，包括表下没有回到作者原组合方程的Other points，不是只抄Table 10的五行。

本轮接受的是发表结果，非独立重写 SIMATH。sources/published_E19.json 保存事实数据、出处、采用范围。15点对逐项等式与本轮X=12(n−1)回传由精确脚本检查；这一检查本身不证明出版表的完备性。

未取得原PDF的容器字节，所以不捏造PDF SHA或把网页解析重写说成原字节存档。包内不附完整论文；以原文出处、页码和明确采用的数学数据接续。

## 3. 检索及环境失败，不进入正向依赖

前期检索看到网络讨论中的同一曲线点表，但未采用讨论帖作为完备性依据。后续找到上面的原始出版论文，才建立正式采用。

Magma在线计算器未成功执行；容器访问失败。LMFDB参数化曲线检索未取得可用完整点表，未绕过访问保护。没有把网页列表或有限高度搜索当完整整点结果。

Magma 官方手册：
https://magma.maths.usyd.edu.au/magma/handbook/text/1567

它说明部分整点接口的覆盖取决于所给 Mordell–Weil 基/子群。此资料只用于避免错误采用，未成为已闭合结果的算术依赖。最终三条曲线对应的分支用完整小模数筛排除，唯一剩余曲线用已读出版结果，不依赖本轮CAS服务可用。

## 4. 当前状态

本轮无Lean、无外部独立数学审读、无人类审稿、无Git发布。新结果的数学证据是作者推导＋精确局部核对＋上述出版输入。完整i3及R7不变。未做全历史消费者差集或全球新颖性调查。
