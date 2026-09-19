# 采用来源、字节与核验边界

本轮依据唯一主Overview及本会话已交付W6/S14增量继续；不从旧记忆补写前沿。以下字节实际存在，已计算SHA256；源文件不复制进本轮ZIP。

## OVERVIEW-2026-9-17.md

原路径：`/mnt/data/OVERVIEW-2026-9-17.md`。

字节：25738；SHA256：`360cbf89666044cd0f2bd21ff2a955f0c8fc2c53bb9f5ab40763c08894961c11`。

用途：唯一主接续入口；初始50前沿由本会话两个后继增量更新至43。来源等级：冻结作者纸面／证书；没有重放历史证明。

## B699-ProA-i9-weight6-closure43-evidence-20260917.zip

原路径：`/mnt/data/B699-ProA-i9-weight6-closure43-evidence-20260917.zip`。

字节：387916；SHA256：`d870040b47b93beea4b475fb715b7d74ca279160f79e6739ec00bfd78e9316b9`。

用途：直接冻结输入W6整包；未重放旧接收。来源等级：冻结作者纸面／证书；没有重放历史证明。

## PROOFS.md

原路径：`/mnt/data/B699-ProA-i9-next-9ea5d61e/PROOFS.md`。

字节：19462；SHA256：`4219988b8f6f98e091a7b97edadbbdb206bdd9b528b156f9b76509ebf33d4411`。

用途：直接采用W6证明§1的P/E、粗窗、BC、S14、Q2、FH/K152以及W6前沿。来源等级：冻结作者纸面／证书；没有重放历史证明。

## HANDOFF.md

原路径：`/mnt/data/B699-ProA-i9-next-9ea5d61e/HANDOFF.md`。

字节：3000；SHA256：`bf0e45ee2f9088087b493aa678bc86ecfec2f2f46e7298e657488dc13f9a20c5`。

用途：本轮最低加权7／43及不重复旧分类的接续。来源等级：冻结作者纸面／证书；没有重放历史证明。

## REPORT.md

原路径：`/mnt/data/B699-ProA-i9-next-9ea5d61e/REPORT.md`。

字节：4730；SHA256：`105c3446506ed0151551bf1b726ff6de2dc6d794fba7b5c6c8c6c0b3b6fb938b`。

用途：直接前沿报告。来源等级：冻结作者纸面／证书；没有重放历史证明。

## B699-ProA-i9-source14-closure-evidence-20260917.zip

原路径：`/mnt/data/B699-ProA-i9-source14-closure-evidence-20260917.zip`。

字节：58208；SHA256：`6c56adef3d2d270f00d5606e2fb302ab373352f698da9d786ecae54ea4e44415`。

用途：上轮S14来源指针；不重新打包。来源等级：冻结作者纸面／证书；没有重放历史证明。

## PROOFS.md

原路径：`/mnt/data/B699-ProA-20260917-source13-7c2a91e4/PROOFS.md`。

字节：20237；SHA256：`572a82261109c4caf3c13d433624e1eb0d5fde2741815db22469f154bff3cbb1`。

用途：源命中≥14的作者证明来源；未重放证书。来源等级：冻结作者纸面／证书；没有重放历史证明。

## 具体数学依赖

P/E、粗窗、BC、S14、旧Q2/W6、FH、K152的准确接口在新PROOFS §1。S14使完整源命中≥14；三次上界17和普通源重数≤18由本轮自证，未误用加权6专用μ≤17。最终不额外消费PC；上游冻结链本身原有的依赖仍保留。

旧二次链仓库快照指针：`f232982bc5d27ba4de68cc3abb916796f771dec6`下`research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260917-pro-results/sources/ProA/07_QUADRATIC_CLOSURE50/`。这是此前已读取来源的定位，不声称本轮刷新远端或独立审读整个历史链。

## 外部核对

2026-09-17读取官方Wolfram Function Repository的SylvesterMatrix条目Details，核对Sylvester矩阵阶数和行列式等于结式。

```text
https://resources.wolframcloud.com/FunctionRepository/resources/SylvesterMatrix/
```

新PROOFS §3自行给出整数根界、结式范数及用于共同零点的论证；未调用Wolfram计算服务或外部整数点算法。没有新增出版黑箱、PDF分析或声称拥有未下载PDF字节。

## 接收独立性

发现使用SciPy、SymPy及C++17；接收仅用Python标准库。整数二项式Taylor与截断Horner两实现的交叉检查来自同一会话，不是外部独立数学审稿。最终源闭包和方法边界使用模秩下界加精确整数核／显式全局解补上反向维数界。

没有Lean、历史全链重放、固定G恢复、仓库提交推送或其他会话的新结果。字节核对只证明来源对应，不提升冻结数学的接受等级。
