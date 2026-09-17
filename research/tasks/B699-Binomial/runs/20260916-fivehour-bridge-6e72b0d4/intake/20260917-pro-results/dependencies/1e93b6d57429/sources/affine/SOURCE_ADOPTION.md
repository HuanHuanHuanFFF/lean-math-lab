# 来源、采用契约与执行边界

## 1. 本次任务与总览

当前用户要求按 `OVERVIEW2026-9-16-11.md` 自由推进。通过Files读取该文件全文（file_id `file_000000006d2c8211b1443ce38e8359ac`，version1），而不是沿用仅有9月15日旧对话。

该总览的原始字节材料化请求返回无授权raw-byte路径，故本包**不声称持有总览原字节或其SHA256**。本表和报告的总览摘要属于本轮转述。数学依赖另从总览指定固定Git提交取得，见下表。

总览中随后接收的Pro A/B/D属于作者声明、未完成本仓定向重验，尤其i9 58→57、幂次分母新消费者不被本轮自动升级。曾尝试按未指定新提交的默认路径取得新D原稿，返回404；没有据此杜撰新D内容，也没有依赖该稿。

## 2. 正向数学链实际采用的冻结契约

仓库：HuanHuanHuanFFF/lean-math-lab。
固定数学提交：`67b494c841d41a70b7e209940be417637a59a235`。
R=`research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4`。

|本包源|固定仓库路径|Git blob|SHA256|
|---|---|---|---|
|sources/05-unit-window-acceptance.md|R/reviews/main/05-unit-window-acceptance.md|187bf8c33319aa0284a29fcf00a5fddad5d2d504|19d8b162697df88a0c25cc013c8163e1a93f501fd820acf73e1fa99a3fee1a47|
|sources/10-complete-i8-i9-unit-window-acceptance.md|R/reviews/main/10-complete-i8-i9-unit-window-acceptance.md|b6c9dd341922d83244ba5e935f164bcbd4aabb66|6d6e9288b177dd4a188976b61ba6e23f1efaabe3014ea3782ce175d8a45eeb8f|

用连接的GitHub.fetch_file取得UTF8内容及原Git blob。容器无联网DNS，直接下载工具也拒绝该原链接，因此按取得的UTF8内容恢复文件，并核对 `SHA1("blob "+字节数+NUL+原字节)` **精确等于源Git blob**；新接受器每次重新检查。两文件大小分别3944、5930字节。它们不是凭记忆恢复的数学概要。

采用的唯一高层命题U_i：对i4–i8各自合法输入，若某个原生q_r=1，则Common_i成立；其逆否为NC_i下所有q_r>1。

原报告含定向AI审读和精确算术接受，但没有Lean或外部人类审稿。本轮阅读该契约和报告，**没有重放其旧全部证书或重新审读所有出版证明**。

继承的出版/历史依赖不能隐去：U4–U7报告保留Bugeaud两对数、精确格与有限末端；U7双高部分另采用旧two-position作者链。U8报告保留Yu1994 §0.1、主单位离散对数与格终止、原有限末端。U8该链不使用Magma群输出。原报告列有各阶段清单和固定源路径。

因此正确表述是“新证明在明确采用U_i的基础上初等，未新增出版定理”；**不是整个证明出版无关、自含重验完毕**。本ZIP包含全部新数学及新有限证据，加上精确冻结采用契约；不重新打包整个历史仓库或U_i全部旧证据链。

## 3. 阅读但未调用的材料

- R/notes/main/006-h02-first-row-residual.md，固定上述提交，Git blob `8fd7bb1ebc4aa662bea06640ce6454f3a2e2981e`。原文规范t及因子交换失败用于选择方向，不进入新定理依赖。
- 同会话9月15日D原报告：用于保持角色、旧族计数与失败边界；本轮未重复跑fatpoint、LCM、QIG/SIXG、旧两幂终端等链。
- 官方mathlib Lucas文档 `Mathlib/Data/Nat/Choose/Lucas`：外部原理核对，不代表运行Lean；新证明直接写出阶乘估值公式，不从文档引入额外未证前置。
- 比较用旧QIG/SIXG/EIGHTG只出现在探索脚本，**不参与AFFINE/SPLIT/ROW-POWER正向接受**。

## 4. 本轮新证据等级

无限归约：PROOFS.md §1–3、5–8作者纸面证明。
有限完备性：§4加evidence/config.json、affine-certificates.json；生成器和另一代码接受器全部实际执行。
回归：真实二项式、部分避免粗部、端点、无限周期的有限常数验证。
负面测试：30项实际拒绝，含源字节、完整幂、模板域和除子摘要损坏。

不同实现来自同一作者会话，不称第二研究者或外部独立人审。没有Lean工程、公理审计、人工评审或全历史链再验。

## 5. 仓库和任务执行边界

GitHub仅只读；没有拉取或修改本机仓库、commit、push、PR或合并。新文件只在独立/mnt/data研究目录生成；没有另派会话、没有后台任务。

不继承旧五小时预算，也没有给自己添加默认总时限；以下终点是本轮已经完成的新证明和有限接受，不是时间到后把未完工作标成完成。
