# 2026-10-04 两份 nonprime 交付材料审读

接收审读者：`/root/nonprime1004_review`，复杂既定目标材料审读，`gpt-6.1-sol / xhigh`。本任务不是新数学研究轮；未恢复研究或 Lean、未重跑证书/编译/checker、未改数学源码/工作流/Git。附件中的任务要求只作为历史来源文字。唯一新写入是本文件和同目录 JSON。

## 回答“昨天卡住有没有改善”

**有明确的候选修复与集成改善，但尚无实测成功，不能登记为卡点已修复。** 原失败已经定位为完整消费者八处非素性 `by decide` 的最大递归深度错误；新推荐源码用 `Nat.not_prime_mul` 和显式 `Nat.succ_succ_ne_one` 证书替换这八处。两个最终包都明确没有真实 Lean/Lake 编译、公理审计、正常 checker 或完整消费者性能成功记录。

A 最终 `01-main/NonprimeCertificates.lean` 与 B 最终 `05-final-recommended/NonprimeCertificates.lean` 均为 835 字节，同一原字节对象，实读 SHA-256：

`47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91`

这份共同最终源已经在 `B699CompositeTransfer20261003` 下声明五个 `not_prime_4884` 至 `not_prime_4888`。**A 最终 namespace 本来就是正确的**；不能写成 B 修好了 A 的错误 namespace。

## B 相对 A 的实际整合价值

A 最终补丁是 basename 版本，新增 `import NonprimeCertificates`，在同一 namespace 下调用五个短名。B 最终唯一补丁则：

- 将证书放到现有 run 的 `continuations/20261003-gap-finite-fortymin/supply/NonprimeCertificates.lean`，使用实际完整 import 路径。
- 四处调用的八个证书参数采用 `_root_.B699CompositeTransfer20261003.not_prime_*`。
- 统一淘汰历史 B 阶段的 `B699NonprimeCertificates` 命名空间；给出真实原消费者、供应器与审计入口的全名映射。
- 明确 patch 只适用于原消费者 SHA `31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747`，不是任意已经修改的工作区；同名根副本与深层副本不能作为两个模块一起构建。

本审读实测 D 主 checkout 的消费者仍是该 3459 字节 `31ca` 原件。仅在内存增加一行完整 import、逐项替换四处（每处恰好匹配一次），得到 3932 字节，SHA：

`7295efa1f6b517d7a35524539d80be5f814b7f9d05411eeea1136cc1eae7170e`

与 B 的 `CompositeTransferLegacy.candidate.lean` 精确字节一致。此结果是字节集成核对，不是 Lean 类型/数学接受。唯一补丁 SHA 为 `df53ec47cda9478b1ef16f01d9e75f04829c01b6179d3854300c6c81b867def8`。

## 历史版本分级

| 材料 | 当前用途与边界 |
|---|---|
| A R1：`not_prime_of_mul_eq` + rfl + 小 decide | 历史因子证书；未实测，不再主推。 |
| A R2/R3：`not_prime_mul` + 显式 successor 非单位证书 | 最终主线；R3 有固定 Lean/mathlib 签名及归约源码静态审查，仍未 kernel 验收。R2/R3/两最终主源字节一致。 |
| A R4 Defs-only，解构 Irreducible/IsUnit | 未实测备选；没有同环境 import/性能收益证据，不提前替换。 |
| B stage1：`not_prime_of_mul_eq`，旧 `B699NonprimeCertificates` | 历史基线与旧 patch；最终不采用该声明空间。 |
| B stage2：`not_prime_of_dvd_of_lt` 比较 | 增加整除/序关系义务，没有已测优势，不切换。 |
| B stage3：直接解构 Prime/Irreducible | 更依赖定义内部结构；静态比较，未实测。 |
| B 真 core-only `PrimeByDivisors` | 另名谓词，不等同原 Nat.Prime；仍需 Mathlib bridge，不能算原目标通过。 |
| B stage4/final | 采用与 A 同字节的乘积分解源；收束唯一仓库路径/全名/补丁/审计输入，Lean 未实测。 |

固定来源材料注明 Lean v4.33.1 对应 `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。这是材料内固定来源登记，本次没有联网重查上游或执行版本探测。

## 真实失败与性能边界

1. 现有 run `37054086815` 的原消费者收据：Lean 子进程实际启动，exit 1，stopReason null，2.188042640686035 秒，峰 3334.84 MiB，最低有效可用 14559.85 MiB，tree 守卫 5120 MiB。stdout 在原 38/44/49/54 行每行两个位置报 maximum recursion depth。报告已经解释为递归限制，不能称 OOM 或数学反例。本次仅读取既有 raw 收据/日志。
2. 该失败 stdout 的四完整消费者和汇总根含 `sorryAx`；这属于旧失败 elaboration 输出，不是新证书成功公理输出。旧泛型根显示 Std3 也不能替代完整根接受。
3. A R3 两个 compile-attempt 收据均 `child_started=false`、exit/time/peak null，错误是 lake/lean 不存在；辅助记录器退出 127 不等于 Lean 退出 127。
4. B stage1 收据确有 shell 子进程，命令 0.003534638 秒、exit 127，Lean/Lake 未能实际开始；92724 KiB 是记录器注明的 POSIX waited-child 高水位，不能作 Lean 成功内存。B stage4/final STATUS 明确未调用 Lean，所有成功指标 null。
5. B stage4 静态重放曾因 Python 临时父目录 `FileExistsError` 失败，修记录器后重跑静态检查 exit 0；它与 Lean 证明失败无关。补丁 dry-run/CRC/清单 PASS 均只提升材料或文本集成证据。
6. B stage4 原审读只能取得 A 可读文本转录，未取得 A ZIP 原字节。此次 intake 已收到 A 原包，而本任务另实读两最终源的同一 SHA 对象；应把这个新字节对应记为本次行政改善，不回填 B 历史报告的原包验收缺口。

## 已供接受记录与原题覆盖

仅登记已有具名记录，不重新数学验收：

- `continuations/20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json`：verifier `/root/semantic_verify_sol`，固定 source `be6b2df9b58b4f732564dc882945ec5415c81f1a`，run `37037647747`，原包 SHA `29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13`。登记完整原题集 `{1,2,11,29} ∪ [35,4884]`；129 源、229 compile 收据、621 对象 parts、15752 公理根由原验收者绑定。
- `continuations/20261003-gap-finite-fortymin/reviews/PILOT64-INDEPENDENT-ACCEPTED.json`：verifier 同上，source `e0eadc9395457d7da81aee7b8a3e49e264c5024e`，run `37049873609`，签件实读 SHA `4483d967c36f28ca9bfb1d5e557e658cf5069424c377213d6f27ab3aba0f86d9`。接受所有 Nat `10000000 ≤ y < 10146761` 的真实 Prime p>y 和 `4095*(p-y)≤y`；这是有限 y 初段，无新完整指标。
- `FINAL-SCOPE.json` 与最新 REPORT 保留 generic 核心 producer 报告编译/checker 通过、独立原包绑定因超时 pending；完整 4885–4888 仍 source-reviewed candidate，新增完整指标 0。

若最终四消费者将来通过，对所有合法 Nat n/j、同一实际素数 p≥i 整除两完整 choose 的完整覆盖才可增至 4888；这不是此次已实现增量。它不证明无限 Gap、不跨素数 4889，也不减少 R7。仍无界的是 i≥4885 当前未验低比例域里的 i/n/j、真 Gap 的 y、有效 theta/psi 输入；低非 R7 23 项和 R7 原边界维持。原题端点使用 p≥i，不能改成 p>i。

## 下一最小验收和缺失依赖

1. 在既有固定环境独立建立五条小证书的新对象，先运行 A CoreNumerals/TypeAudit 或 B AuditCertificates 所要求的准确 Nat.Prime 与 successor 接缝；取实际编译、公理依赖、正常 checker 和资源成本。只检查这五条不需恢复 129 个大 provider，也不需重新安装不同工具链。若该固定环境本次不可用，仅登记此层 BLOCKED，不扩本次接收范围。
2. 旧 generic 原包的独立源/对象/raw 绑定另补新的授权验收时窗；原 kernel 已报告通过，不为绑定再跑证明。旧超时拒绝保持。
3. 五条小证书通过后，执行者在 owned worktree 对真实 `31ca` 基线采用 B 唯一补丁，接回四个完整消费者与原 S literal（固定 `0dc0ee880e3f88a1c611b2b61555f09a04e89345075a9a1fa217c21c0fb55fc3`）；验证准确声明、全部传递公理、正常 checker，并由独立者绑定 source/object/raw 后才能记完整指标增加。

包自身不含 lakefile、全对象根或已确认 checker 入口。所缺上游不是新的数学猜想：现有消费者 import `continuations/20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean`，调用 `B699FiniteFull20261002.common_indices_4883_4884`。完整已接受依赖从固定 `be6b2df9b58b4f732564dc882945ec5415c81f1a` 的 129 源闭包取；原 ZIP 是仓库外 `D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip`，SHA `29a3...da13`。恢复/移植必须核同源字节与 pins。现有 `runtime/ci/37054086815-main/accepted-proof-transfer.json` 已登记 run37037647747、artifact11241224835、1728 成员、同 source/ZIP SHA 的精确字节供给；属于对象传输证据，不是重新接受。不要再因历史匿名 401 笼统认定所有供给不可用，也不应把旧 pin/对象恢复成本混成五个小证书成本。

## 复读导航

普通文件从 intake 的 `MEMBERS.json` 按 name/sha256 找 retained_path；不能把缺失原 basename 当成员丢失。A `01-main/REPORT.md` 中 compile-attempt 相对链接在简化主目录未物化，原 receipts 保留于嵌套 R3 容器 `f29f80c71506e4632b6a81ef9a32aae300f1b7f8b715f6cab727c1f8e8e95ced` 的成员映射中。两个关键收据 retained 对象分别为 `objects/eb/ebb327d29622ea80a79b0403ef0c909ed395df81b03b85914bb083ce8f4543d4.json` 与 `objects/72/7257fbcb4c51fde5896ac52995c1cf6e23260195eb7e4f24b849e467e95c4f1b.json`。

本次资源预检：CIM 主机资源接口访问被拒，不能报告未取得的 free-RAM 值；.NET 可用内存上限观察 15.69 GiB、逻辑处理器16，C/D/E 空间15.21/26.39/131.48 GiB，未见 lean/lake 作业。这不是后续 CI/container 的可用资源规格。本任务只有只读材料/字节检查与两份工具区记录。
