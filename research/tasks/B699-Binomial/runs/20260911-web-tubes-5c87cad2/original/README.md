# B699：R12独立研究证据包

入口：REPORT.md；完整证明在notes/；精确输入在input/；真实输出在outputs/；接受日志在replay/acceptance/。本轮没有新增整指标闭合，全部状态以REPORT首节为准。

## 标准库精确重放

需要Python 3.10或更新版本，不需要联网、Lean、SymPy、NumPy或SciPy。不要使用 `python -O`，接受检查器会拒绝禁用断言。

```bash
python3 verify_manifest.py
python3 code/reproduce.py --record replay/local
```

脚本使用空临时目录重建本轮10份精确数学输出，逐字节比较，再检查输入/源码前后哈希。不会运行旧历史扫描。每个计算命令都有120秒技术超时上限；任何超时或差异都会记录FAIL并返回非零，不被当成完整核验。

## 精确输出映射

|文件|生成/检查脚本|
|---|---|
|source_check.json|check_sources.py：原ZIP、恢复成员、vendor字节|
|triple_strength.json|check_triple_strength.py：2/5及11/20强度反向模型|
|new_pairs_primary.json|check_new_pairs.py：Fraction/正项积分|
|new_pairs_independent.json|check_new_pairs_independent.py：整数网格/另一积分|
|pade_algebra.json|check_pade_algebra.py：多项式和清分母风险测试|
|rational_tubes.json|check_rational_tubes.py：稀疏身份/除数恢复|
|tubes_independent.json|check_tubes_independent.py：插值/完整h区间|
|unloading_verified.json|check_unloading.py：固定重数最小次数|
|agreement.json|check_agreement.py：结果交叉一致|
|bad_inputs.json|check_bad_inputs.py：15类非法输入拒绝|

## 可选探索复现（不承担证明）

探索脚本需要NumPy与SciPy，且可能覆盖探索输出中的耗时字段。请在包的另一个副本中运行；原版用于字节重放。

```bash
python3 code/probe_targeted_seeds.py 2 11 60 100000
python3 code/probe_targeted_seeds.py 2 13 60 100000
python3 code/probe_targeted_seeds.py 5 13 60 100000
python3 code/probe_new_graph.py
python3 code/probe_graph_i20.py
python3 code/probe_profile_geometry.py
python3 code/probe_unload.py
```

另九对种子的命令参数见notes/FAILURES_AND_METHOD_BOUNDARY.md表，统一K=60,M=100000。20号诊断实际在15秒后未完成，不能复述为已证明不可行。所有探索结果与接受数学输出明确分开。

## 来源和分层

原历史ZIP26307136字节按原字节保留，原任务不是本轮指令。SOURCES.md记录出版输入和PDF下载失败，不含虚构PDF。新论文式推导不是Lean；本包不存在Lean脚本、第三方人工审稿或第二会话独立审查。不同算法的验证器也不等于不同研究者。

MANIFEST.json对本包静态文件做SHA-256绑定；replay/内日志在运行时生成，因此不纳入静态清单。新颖性仅相对已读冻结材料描述。
