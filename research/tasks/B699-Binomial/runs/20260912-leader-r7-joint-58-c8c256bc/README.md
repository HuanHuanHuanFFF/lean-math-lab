# R7：当前交付、证据与异步调度

本批负责人：5号Leader；保留原批次20260912-leader-r7-joint-58-c8c256bc的身份、历史记录和来源。当前以网页数学研究为主，Lean暂停新增派发。

**从[当前状态](CURRENT_STATUS.md)接续：A新联合高度及四位置补交已交付，B新高度/17与25块已交付，D条带已交付；据Luna回报B、D下一轮运行中，A下一轮待派发。R7不变，i9仍58族。**

| 入口 | 用途 |
|---|---|
| [当前状态与方向](CURRENT_STATUS.md) | 最新准确声明、剩余无界量、派发回执和Leader取舍 |
| [A四位置补交](A_POSITIONS_COMPLETION.md) | 两α族剩余位置、全行消费者与准确冻结依赖 |
| [A联合高度](deliveries/A-fibres/REPORT.md) | 双高幂族与固定单指数的有限包络 |
| [B一般高度与17/25](deliveries/B-height/REPORT.md) | 初等整行与另有出版依赖的相对高度 |
| [D尾部与条带](D_TAIL_COMPLETION.md) | 9块、a≤9整行、条带及失效边界 |
| [技术接受](acceptance.md) | 作者检查、独立核验与Lean义务分别登记 |
| [前沿历史](frontier.md) | 本批各次交付的准确范围及保留缺口 |
| [A位置补交来源](A_POSITIONS_SOURCES.json) | 新原件59成员及大型发现/失败数据指针 |
| [A/B来源](LATEST_AB_SOURCES.json) | 新原件全部成员、精确复用及内嵌输入去向 |
| [D来源](D_TAIL_SOURCES.json) | D尾部原件的逐字节保留路径 |
| [交接](handoff.md) | 固定接收基线、发布断点与下一步 |

## 历史快照

本批最初接收A的84→58族、B三商/9块、D双残量；原件仍在deliveries/A、B、D。后补D-general、B五块、D-tail，各阶段分别见[原轮次登记](ROUND_COMPLETION.md)、[B五块接收](B_NEXT_COMPLETION.md)、[D尾部接收](D_TAIL_COMPLETION.md)。这些记录中的“当前／待派发／运行中”属于当时快照，实际状态以CURRENT_STATUS为准。

[v4原任务正文](prompts/README.md)与[v4包元数据](PACKET.json)保留为派发历史，不含最新A-fibres、B-height、D-tail原件。已运行会话继续保留工作；本次没有要求同步重启。下一份正式任务或共享包须按当前状态引用最新原件。

## 读取与恢复

优先阅读当前状态和对应报告。新原件复现使用来源清单指向的完整原ZIP，空目录解压以恢复作者相对路径和内嵌ZIP。Git中相同成员按清单复用，不应在缺少复用文件的稀疏目录直接运行作者程序。原件、源码、日志和失败证据均保持原字节。

历史恢复方法保留于[材料规则](../../../../../docs/ARTIFACTS.md)、REUSED_FILES.json及D_GENERAL_REUSED_FILES.json；旧共享v4包的prepare_inputs.py只恢复该历史版本输入。恢复操作只检查字节，不构成数学验收。

## 发布

沿用GPT-work/leader-integration与[PR #17](https://github.com/HuanHuanHuanFFF/lean-math-lab/pull/17)，用户合并。PR #15、#16已合并；PR #17尚未合并。作者纸面、出版依赖、精确证书、独立审读、Lean接受与Git发布分开记录。此前本批初始来源和旧PR断点保留在交接及各来源清单中。
