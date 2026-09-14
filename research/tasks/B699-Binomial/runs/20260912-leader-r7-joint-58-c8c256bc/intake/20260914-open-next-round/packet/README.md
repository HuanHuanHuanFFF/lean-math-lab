# B699 下一轮：自主选法

唯一附件：`B699-ABD-open-next-round-20260914-v2.zip`。本包承接 A-window-carry、B-integer-form-bands、新 D-quartic-gap 三份已回传成果，与上一轮 v1 区分。

先读 [共同任务](tasks/COMMON.md)、[冻结前沿](context/FRONTIER.md) 和自己的 [A](tasks/A.md)／[B](tasks/B.md)／[新 D](tasks/D.md) 任务。可复制的投递正文在 [PROMPTS.md](PROMPTS.md)。这轮由研究者选择方法，旧报告、旧 HANDOFF 中的下一步建议是历史意见，不是本轮必须沿用的路线。

## 材料入口

三路最新报告的原字节阅读副本在 `reading/A/`、`reading/B/`、`reading/D/`，均含 REPORT、HANDOFF、SOURCE_ADOPTION、证明及失败边界。先读本路交接，再读三路最新报告；实际采用另一份结论时再读相应完整证明和前提，不要求预先通读全部历史档案。

完整原件在 `archives/`。在本包根目录执行对应命令，只核对文件字节并展开三份最新原包的外层，不执行数学脚本：

```sh
python3 prepare_inputs.py A
# B 或新 D 分别将末尾参数换成 B 或 D。
```

| 输入 | 展开后的原件目录 |
|---|---|
| A-window-carry | `inputs/A/B699-ProA-window-carry-20260914/` |
| B-integer-form-bands | `inputs/B/` |
| 新 D-quartic-gap | `inputs/D/B699-ProD-quartic-gap-shifted-smooth-20260914/` |

也可用本地 ZIP 工具按表解压。`reading/` 是便于阅读的副本；运行作者代码须在对应完整原件的隔离副本中进行，并将新输出另存，保护原证据。

四份上一轮启动原件已作为完整嵌套 ZIP 包含在这三份最新原件中，无需再附旧 v1。精确位置和哈希见 [HISTORY.json](HISTORY.json)。按需只展开所需成员，不递归展开全部证据；历史更深层的缺失仍见 [材料边界](context/EVIDENCE.md)。

`ARCHIVES.json` 固定三份新原件；`SOURCES.json` 固定外层全部成员、阅读副本与原件映射；`PACKET_MANIFEST.json` 固定整个投递包的文件。行政字节检查不构成数学接受。

## 投递与状态

每个会话只投递对应的一个提示词并附本包。最多两路实质数学研究同时运行；可先 B＋新 D，A 在空出研究槽位后接续。这是按当前缺口作出的排期建议，接收任务后不必等待其他路线本轮的新结果。旧 D 不再另派。

本包交付时三份任务均为“已拟定、待用户投递”，没有新增研究会话已启动的回执。用户未设总时限；Lean 新派发和 Git 发布不在本轮授权内。仓库 canonical run 身份见 [前沿](context/FRONTIER.md)，包内是冻结输入，不另建可变总前沿。
