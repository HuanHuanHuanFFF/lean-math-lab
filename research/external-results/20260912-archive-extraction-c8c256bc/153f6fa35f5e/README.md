# 审计证据包

主报告：Erdos-686-677-699-report.md。三题原始目标、已接受基线、复用优先级和所有限制见主报告。

已成功的独立Lean实验：
- b677/lean/DivisorRunAudit.lean：7个准确归约定理；成功记录b677/verification/20260908T105102259127Z/。
- bridge-lean/DivisorTransfer.lean：4个大素因子部分转移定理；成功记录bridge-lean/verification/20260908T111858984907Z/。

这些文件没有合入lean-math-lab。两个验证脚本只读取固定4.33.1依赖缓存，把全部输出写到各自verification目录。异地复现请先调整脚本中的编译器和缓存绝对路径，严格保留manifest pins；普通mathlib工程可直接编译Lean文件，无需本容器专用的procfs shim。仅含标准3项公理的成功日志不可解释为EEES或完整原题已证明。

数学/计算核验：
- python3 b699/checks/arithmetic_audit.py
- python3 b699/checks/eees_bridge_audit.py
- evidence/atlas_independent_audit.py 需另行恢复报告指定commit的Atlas源码，并调整脚本SOURCE路径。它核对receipt/hash与素数gap，不重跑90百万行campaign。

B686原版4.29.1复现未成功；保留准确工具链身份、依赖pin、失败日志和静态扫描，不包含依赖缓存或工具链。历史B699 GenericSlice未复编；原MIT声明随附。

外部源码、论文与二手文档未整体复制：source-manifest中的local字段是本次研究工作目录定位，未收录文件仍可通过其公开来源与sha256恢复。源身份记录不是需要持续同步的生态状态表。

文件SHA256清单见ARTIFACT-MANIFEST.json。旧失败实验记录特意保留，最终成功与失败边界以主报告及各验收说明为准。
