# B699：R7 三路新成果与下一轮任务

2026-09-12（Asia/Shanghai）。Owner：Leader；本批接收 Pro A、Pro B、Pro D 的三份新交付，并补收D上一轮误接B任务的成果。用户先要求尽快给出三份接续提示词，随后授权整理；随后用户澄清补交时序与署名，要求重排当前任务，D保持原方向。A方向不变，B已撤销立方主攻。本轮没有总时限。

**R7={3,4,5,6,7,8,9} 不变；新增整指标闭合 0，新增 Lean 验收 0。** 三路作者报告了新的无界子族、整行消费者和参数约束；i14 沿用上一批纸面＋精确证书状态，不因本次整合升级证据等级。

## 阅读入口

| 来源 | 新成果与仍未解范围 | 原件 |
|---|---|---|
| Pro A | i9 的37个模225整行类；α相对高度与84种正规形，仍有一或两个无界指数 | [报告](deliveries/i9-global-constraints/REPORT.md) · [交接](deliveries/i9-global-constraints/HANDOFF.md) |
| Pro B | 一般行β/γ素数平方闭合；平方行任意素数幂闭合；规范F二次界与双侧统一高度，整个i3仍未有限化 | [报告](deliveries/bilateral-prime-powers/REPORT.md) · [交接](deliveries/bilateral-prime-powers/HANDOFF.md) |
| Pro D | N/K五个完整分配因子非空；平方根整行消费者与条件同素数转移，剩余素因子与指数仍无界 | [报告](deliveries/five-factor-row-consumers/REPORT.md) · [交接](deliveries/five-factor-row-consumers/HANDOFF.md) |
| Pro D（上一轮误接B任务） | 一般行单侧aP^r、a≤21闭合；一般a相对高度与新商；两侧规范余因子仍无界 | [归属修正](D_PREVIOUS_B_INTAKE.md) · [报告](deliveries/d-prior-b-primepower/REPORT.md) |

- [前沿与采用边界](frontier.md)：作者结果的准确覆盖、依赖与失败边界。
- [三份下一轮任务](prompts/README.md)：A消去指数、B一般混合余因子与商耦合、D一般结构与自由探索。
- [统一附件与投递](DISPATCH.md)：三份任务共用一个ZIP，使用v2，包含四份原包、归属修正、完整任务与阅读入口。
- [接受责任](acceptance.md)：作者核验、待独立复核、待Lean分开记录。
- [原包清单](ARCHIVES.json) · [逐文件来源](SOURCE_MAP.json) · [完整环境恢复](restore_archives.py)。
- [发布交接](handoff.md)。

## 归属、来源与权限

Leader 维护本批入口、前沿、接受责任、任务和根目录／题目导航；辅助任务 `r7_source_intake` 承接来源与恢复检查，但输出目录被截短；Leader 已在正确目录重新完成全部字节核对，采用记录见[来源检查](verification/source-intake/README.md)。两者均未执行数学脚本。作者原件与失败日志保持原字节；嵌套旧ZIP保留在上传原包，通过哈希和恢复入口取回，不重复展开旧研究目录。

接收基线 main：`1215a7541a394233cb038cddd98127e32323722e`，已合并 PR #12；接收前 Leader：`a4f512836bcfbab86cdb081f903c0ea7566ebebd`。两者树相同。本次沿用 `GPT-work/leader-integration`，保留双方提交历史，发布新的 PR 到 main，由用户合并。

上一批：[i14闭合与R7初始接收](../20260912-leader-r7-intake-4fe8697e/README.md)。上一批的旧快照、独立Lean队列和其他执行run不被本次重新登记为完成。

原三份提示词已交付；本次基于补交更新三份任务，待用户重新投递；外部投递和执行状态未在本轮核实。没有自动启动外部6Pro会话。

资源快照（2026-09-12 16:46 Asia/Shanghai）：cgroup内存限额20GiB、使用约0.40GiB、oom/oom_kill均0，CPU配额8核，scratch可用约31.8GB。本批只有行政归档与传输，无证明计算或编译。

补交从Leader父提交 `71ff0824e9b6f9ac3e549b54eb1f480da9c93554` 接续，更新既有PR #13；源字节与四包恢复见 [补交行政检查](verification/d-prior-b-intake/result.json)。此前三包检查记录保留在原提交与verification/source-intake/，不冒称当时包含第四包。
