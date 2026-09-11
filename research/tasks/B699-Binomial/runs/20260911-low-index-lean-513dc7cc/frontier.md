# 当前 frontier：huan 接续

本轮接收基线9d4228e3ed0de4bb6b8e555ca59af3f53d578c67，沿用20260911-low-index-lean-513dc7cc。本run的[逐项状态](target-status.json)是当前接受集合的唯一计数来源；新增完整行的固定证据在verification/huan-accepted/，串行执行检查点在verification/huan-batch-*/state.json。执行及文件归属见notes/huan-execution-5e2d13bb.md，VPS历史快照见notes/frontier-vps-9d4228e.md。

## 锁定的完整目标

对每个目标i，证明全部自然数n,j满足1≤i<j≤n/2时，存在素数p≥i同时整除Nat.choose n i和Nat.choose n j。保留p=i与完整素数幂；D=V仅在noCommon分支采用。

阶段A固定集合{29}∪{35,…,184}共151项。接收检查点的12项为29及35–45，后续新增任务为46–184；已接受者从待办中移除，但失败项保留。阶段B固定集合{11,13,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,33,34}共19项，尚无本轮Lean完整接受。

每个完整行的Lean验收消除该固定i的全部未形式化n,j范围。这里主要补齐已有纸面/有限证书的形式化；行数不是原题解决率，不据此声称新的纸面数学或完整解决B699。其余小指标与i≥4883等Lean缺口仍在本轮目标之外。

## 已建立的可复用链

- 38–45原字节、22个上游、计划、日志与CI摘要已接收；本机统一消费者通过，见verification/20260911T010452070959Z/evidence.json。接收历史8项不新增计功。
- Windows最小导入、九包pin/clean与共享26源已通过，见verification/20260911T004440769454Z/evidence.json；跨平台纯olean消费另见verification/20260911T005623481788Z/evidence.json。
- Row046的完整common_i046已通过，30个新模块、25个哈希绑定复用对象、std3；422.805秒，采样进程树峰值1391960064字节。见verification/huan-accepted/row046.json。
- 原239模块候选、首次长路径失败、较短路径的8源合并版分别保留；固定checker与原始数学声明未改。后续由generate_huan_row.py、bundle_huan_row.py、verify_huan.py和continue_huan_phase_a.py逐行执行。

## 当前路线和下个决定

当前可复用前置、i11有限计划、实际失败与发布边界见[最新检查点](notes/huan-current-checkpoint.md)。它链接真实收据；B完整原题仍为0/19。

A固定151项现已逐项通过，46–184没有缺项；历史35、36的本机对象已补齐；仍需29、37，再统一消费全部151个原题接口。逐项完整原题的接受与统一消费状态分开登记。对象先核对源/输出/日志哈希，再用不可变硬链接或字节复制复用。资源不足返回调整，数学或工具失败留在对应行，不以删项结束阶段A。单命令900秒是诊断限额，不是本轮总时限。

阶段B先反向列依赖，出版前置不能以假设接口或新axiom代替。i18原稿theta误差有十倍来源差异；第一核验者在材料所属run新增reviews/huan-i18-5e2d13bb修复，第二位独立核验者在本run的reviews/huan-i18-correction-second-5e2d13bb审读。原件保留，更正版本单独采用；未形成i18的Lean验收。

已有三个本机提交；后续本机commit及push均已被自动审批拒绝，要求用户明确授权指定仓库/分支的提交与这批源码、日志、证据外传。已提问并等待答复，不以其他工具绕过；远端未更新。源码、验收、纸面修正、AI审读、人审、新颖性与发布状态分别登记。
