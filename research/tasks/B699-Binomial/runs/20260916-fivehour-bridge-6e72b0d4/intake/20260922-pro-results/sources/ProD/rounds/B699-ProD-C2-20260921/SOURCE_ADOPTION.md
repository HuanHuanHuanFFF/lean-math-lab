# SOURCE_ADOPTION — C2 / B699 Pro D

## 1. 唯一研究入口及版本

唯一持续入口是用户上传的 `OVERVIEW-2026-09-21(1).md`；与无括号副本的字节一致性由本轮实际哈希核对记录在 `sources/SOURCE_REGISTRY.json`。包内 `sources/OVERVIEW-2026-09-21.md` 是该文件的原字节副本，不是模型摘要。

本轮采用最新 §3C D / §4 定位前沿，而不是把 §3B 的旧下一目标当成当前目标。采用的来源事实包括：第一源商余数接口、旧四位/DEN 条件消费者、真实本原范数式、唯一候选的作者级声明、以及主前沿仍开放的边界。正向新证明将所需第一源代数、尾类互素、完整幂见证重新写出，不把这些纸面重建称作 Lean。

Overview 中的 67b494c... 是较早数学快照，不能被用来冒充含 9 月 20 日所有新增文件的提交。本轮没有这样使用它，也没有修改 Overview 或仓库。

## 2. 上一轮 C1

直接采用本会话交付 `B699-ProD-C-evidence-20260921.zip` 及独立展示的 REPORT / PROOFS / HANDOFF。原 ZIP 的本轮实际 SHA-256 为：

    2114ae786e00870b14ae6359f7ad805e803c15260e30048233103ff64fb6920e

本包保留 C1 三份文档、原 SOURCE_ADOPTION 和命名 a132 范数例子所在的小 JSON 的原字节。没有把整个旧 ZIP 嵌套进新包，也没有重跑 C1 的搜索、历史回归或 Sept17–19 旧证据链。

C1 的 S / V / Q 接口作为交接背景继续有效；本轮没有把 V3 的同一缺欠再登记为新信息。原 a132 范数例子仅用于 NP 失败边界：复核了它实际满足的范数身份和 D>α，没有把它升级为低残量模型。

## 3. 定向只读 D04 回执

本轮接续记录包含 GitHub 的以下只读返回：

    repository: HuanHuanHuanFFF/lean-math-lab
    path: research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/
          intake/20260920-pro-results/sources/ProD/stages/
          04-ternary-support-recovery/
          B699-ProD-20260920-ternary-quadratic-recovery/PROOFS.md
    ref used by the read: main
    returned Git blob SHA: 6bcc364eee6c82024fe0ecf56ff0e5a0ed61364b

另有同一 intake 的 `notes/D.md` 只读摘要，列七阶段及作者严格0口径。D04 可见返回覆盖 §0、§1、§2 的第一源恢复、通常三位分类和 B³ 诊断族；后续部分返回被截断。**没有声称获得完整原文件的本地原字节，也没有声称重放 D04。** Git blob 身份与不存在的本地文件 SHA-256 不可混用；上述仅是明确来源回执。

本轮复用的是 R 的数学接口和已有 B³ 诊断，所需身份均在新 PROOFS 中自含展开。TC7/BL6 不依赖旧三位/四位分类证明的正确性；旧消费者只用于前沿比较。未使用本轮读取的 main 内容覆盖用户唯一 Overview 的状态。

## 4. 本轮自己的证明、证书和计算

- 作者纸面：PROOFS 中 TC7、BL6、完整同 p 回传、NP 和明确比较/失败边界。
- 确定性证书：四个 Bézout 整系数恒等式，其发现阶段用 SymPy；交付的标准库重放直接核对系数，不以 CAS 的“结果式非零”输出代替证明。
- 同会话实现回归：`code/replay.py` 的有限参数检查，精确原输入例子，命名旧反模型身份。本轮只登记实际执行结果，数量不是覆盖量。
- 输入字节及工具回执：sources/SOURCE_REGISTRY.json 与上面的固定 blob；原作者等级不提升。

## 5. 明确未采用或未完成

没有运行冻结 UROW/LROW 生成器，也没有重新证明或验收其唯一性。`two_cluster.py` 是给定原输入的条件消费者，不是对每个 n 生成全部候选的程序。

没有采用 Yu、Bugeaud、BHV、Thue/CAS 群或其他出版无限定理作为本轮正向前置；范数元素乘方的失败命题是本稿的初等范数比较。没有 Lean、外部独立数学审读、全历史消费者并集净差认证或仓库操作。

## 6. 证据等级清单

|项目|证据等级|不可升级成|
|---|---|---|
|Overview / C1 / D04 既有声明|原作者纸面及其原有说明|本轮独立全链接受|
|TC7 / BL6 / NP|本作者自含纸面论证|Lean / 同行审读|
|新 replay PASS|同会话标准库精确检查与有限实现回归|所有无界实例的计算验证|
|Bézout 常数|整数系数身份可重放|全历史覆盖净差|
|SOURCE_REGISTRY / SHA256SUMS|原字节与归档完整性|数学正确性验收|

所有仍开放的参数及逻辑边界以本报告与 HANDOFF 为准。
