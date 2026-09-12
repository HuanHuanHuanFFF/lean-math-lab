# i13 实际带权窗口转移候选

本包给通用带权窗口恒等式、(k!)^L损失界，以及原13<j≤n/2、noCommon下实际p≥13完整分量的带权积整除双窗口、并≤n^72。没有额外assignment/transfer/gap或高度假设。

4模块：Generic、Windows、Positions、Transfer。建议映射lean/I13Weight，先GAudit/WAudit/PAudit，最后TAudit/Audit；25公开根、21定理均有typed/#print入口。WinAssign按主任务允许的lean.WinAssign布局导入，前包仍以真实验收为准。完整数学与来源边界见PROOF_PLAN和SOURCE_MAP。

本次未运行Lean。只做通用带权恒等式的有界检查，以及每个实际避免素数的完整p幂转移检查；不会把全noCommon的空测试集当证据。特例n4394,j2197,p=i13包含e2、原始模数13³且gap0；它验证此局部避免分支，原Common可由别的素数成立，所以不是原题反例。

未编译阶段发现固定mathlib没有Mathlib.Tactic.Omega文件，已改用实际存在的Lean.Elab.Tactic.Omega；其余源改动和SHA见STATIC_FIXES。所有源码有完整证明文本，无sorry、axiom、native_decide。旧冻结WinAssign22文件保持原字节，没有新Padé/CRT任务。

预计若验收通过，将补齐i13位置加权图的大素数带权转移与通用损失接口。五小素数重排/图、真实八边、共同高度和完整原题仍独立，不计新增原题覆盖。
