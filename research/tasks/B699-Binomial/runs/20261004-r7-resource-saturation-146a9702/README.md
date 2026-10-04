# R7：七分量资源与合法规范点饱和

- 负责人：本地纸面研究执行者 /root；主线程亲自研究 A/i9。用户指定 gpt-6-astra / xhigh。
- 初始化检查点：2026-10-04 22:24 Asia/Shanghai。总时长与截止时间：未指定；采用成果检查点，不套用云端预算。
- 工作区：`$env:USERPROFILE/.codex/worktrees/b699-intake-1003/Math`；分支 `huan/b699-r7-paper-20261004-01a0e34b`；固定基线 `b1852293998ab1d6ccf98b1505582e1da44ce89a`；开始时工作区干净。
- 写入：本 run、题目 OVERVIEW 和必要的题目导航；不接管其它 run 或并行 Lean 工作区。原件只读。无 Lean、依赖安装或 CI 重跑授权。
- 原题：所有自然数 1≤i<j≤⌊n/2⌋ 存在同一个实际素数 p≥i 同除 C(n,i),C(n,j)；保留 p=i、完整幂与同一 n,j。
- 已读规则：AGENTS、STRUCTURE、ARTIFACTS、LEADER、lean-research 及 open-problem-workflow。当前研究者角色，不承担仓库 Leader 接管。
- 采用入口：固定基线题目 OVERVIEW §1、§2、§3H、§4；20261003-session-results 的 notes/A.md、notes/B.md、ROUND_INDEX.md、MEMBERS.json。详细源采用在 notes 中随推导记录。作者链不升级为本次独立接受。

## 成果检查点与预期收益

1. A/i9：恢复全余量 E≥0、非平衡因子、真实源商和全竖线分配的必要约束；首个可否证测试是找到合法资源配置，检验旧八分量等号条件是否失效。若统一矛盾可望 COVER7→COVER6；仅建模则只解锁这条路线。原 n,j,g、模板指数、完整粗支持/指数及实际 G 恢复仍开放。
2. B/i3：冻结 J_new=(P5,V4,…,V0)、h=B0DNK 与全部恢复门；争取可复核的特征零 h^m 成员证书或合法精确点/穷尽分解。若合法域空，排所采用 REG3 域；规范有限点本身不界原斜率 a 与 n,j。首个测试是解析六式并判断小规模精确饱和路线可执行性。
3. 根据结果继续下一项改变路线判断的测试；每阶段保存推导、失败、源版本、决定性输出，更新 frontier。全局 R7 尚未减少。

## 当前状态

来源恢复中；没有新定理或数学接受。研究、精确实验、独立 AI 审读、Lean、新颖性、发布分开记录。独立审读任务待候选论证固定后安排。

## 资源观察

2026-10-04 22:23，本机 Windows，CIM 内存查询拒绝；GlobalMemoryStatusEx 实测总物理 16,851,132,416 bytes、可用 1,187,528,704 bytes、负载92%。进程视图未见 lean/lake/python 长任务，但该视图可能受沙箱限制；CPU 可见16逻辑处理器，未取得额外配额。C:约18.67 GB、D:约21.96 GB可用。Python3.14及 SymPy/NumPy 可用，SciPy/psutil/Singular 未确认可用。只启用小规模串行计算；无宿主空闲量担保，无新下载。

下一入口：notes 下固定源与数学推导；B 支线只写 notes/b 与 experiments/b，主线程只写其它记录。

## 阶段A已交付：A7-E1

最后结果：[七可载分量E≤1](notes/a/02-seven-factor-excess-bound.md)已由/root/review_excess（Complex established target，gpt-6.1-sol/xhigh）[条件接受](reviews/a-excess/REPORT.md)。固定候选SHA c464d68726ee40d731bf4e77aa63798c271854555c34846bc9aa2976541230f3；历史作者前置不升级。独立实现完整核对79个E≥2状态，结果SHA6712b1f8ce0b4b3770e4ba9f5e564b173ceac87c7b95156b48051d71a5119916。无Lean，无R7缩减，COVER7不变。

A继续：作者78态仅必要row-budget，真实21源商与非平衡系数模型未终端。主线程写notes/a、experiments/a；当前检查点见[frontier](frontier.md)。B由/root/reg3_saturation（Research，gpt-6-astra/max）仅写notes/b、experiments/b，研究J_new饱和；其候选待独立审读。各支不改他人文件。
