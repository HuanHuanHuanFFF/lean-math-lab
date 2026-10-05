# 稀疏半集：精确检查与失败例

所选代码保持原字节；具名审读复跑输出直接复用，避免再复制同一次作者输出。

| 程序 | 当前决定性输出与接受边界 |
|---|---|
| [verify_algebra.py](code/verify_algebra.py) | [独立代数证据](../../reviews/20261005-b128-delivery/algebra.json)：10 个精确恒等式与有理符号；依赖 SymPy |
| [verify_clebsch.py](code/verify_clebsch.py) | [独立 Clebsch 证据](../../reviews/20261005-b128-delivery/clebsch.json)：12870 半集、整数 Gram、16 邻域、1920 自同构、12 点质量失败例 |
| [audit_constructive.py](code/audit_constructive.py) | [独立构造证据](../../reviews/20261005-b128-delivery/constructive.json)：46 图、1736 方向、1690 外层边；包含未达到 1/50 的失败记录，查错不证明全称 |
| [local_templates.py](code/local_templates.py) | [作者 14 轨道输出](data/clebsch-root-orbits.json) 与 [日志](logs/local-templates.log)；未完整独立重跑，不能登记全部最优值已接受 |

这些程序使用显式 --out 写结果。后续具名执行者先建新的时间戳目录，再按相应模式运行，不能覆盖冻结 reviews/data：

python code/verify_algebra.py --out NEW_OUTPUT/algebra.json
python code/verify_clebsch.py --out NEW_OUTPUT/clebsch.json
python code/audit_constructive.py --out NEW_OUTPUT/constructive.json
python code/local_templates.py --max-roots 4 --out NEW_OUTPUT/roots.json

以上是按源码整理的调用方式，本次未实测新布局。旧环境：独立复跑 Python 3.14.0、SymPy 1.14.0，详细命令与版本见 [具名审读](../../reviews/20261005-b128-delivery/REVIEW.md)。下一轮应先检查实际资源和依赖，在新证据目录绑定源码哈希。

固定 Clebsch 成功、46 图测试或有限根轨道都不能证明一般 1/50。当前完整邻域模板的无界障碍和任意块质量的下一义务见 [材料导航](../../MATERIALS.md)。

## 作者小图全枚举诊断

[audit_small.cpp](code/audit_small.cpp) 与[一份作者日志](logs/exhaustive-small-author.log) 保留 0≤n≤7 的完整带标号三角形自由图枚举。作者记录为 139730 图；这是有限查错功能，未独立复跑，不证明一般 1/50。历史编译条件为 g++ 14.2.0、C++17。源码输出到 stdout；后续执行者在新的输出目录编译并保存 stdout，不能覆盖本日志。本次未编译或执行。
