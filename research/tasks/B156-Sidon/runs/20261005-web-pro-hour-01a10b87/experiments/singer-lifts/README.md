# Singer 提升：选取的精确实验

code/core.py 生成有限 Singer 基底并检查强 Sidon；其他脚本依赖同目录 core。code/data/logs 相对布局保留。所选脚本与输出的哈希见 [来源映射](../../SOURCES.json)。

| 脚本/输出 | 固定范围与证据 |
|---|---|
| [paired_lift_checks.py](code/paired_lift_checks.py) / [JSON](data/paired_lift_checks.json) | p=2,3,5,7、M=p+2、低层全零的全部间隔排列；另有 16 个较大配置。p=7 全 40320 份最少漏 5 点已独立重算 |
| [paired_lower_check.py](code/paired_lower_check.py) / [JSON](data/paired_lower_check.json) | 读取前一 JSON 的固定 g；p=7 合法低层全 40320 份，最少漏 {314,455}；加 314 得 17 元极大证书，已独立重算 |
| [structural_checks.py](code/structural_checks.py) / [JSON](data/structural_checks.json) | 8087 事件图类型、77267 完整提升；作者完整运行，未独立重算全部 |
| [influence_checks.py](code/influence_checks.py) / [JSON](data/influence_checks.json) | 76922 高度向量，最大纤维基数变化 3；作者完整运行，审读只核部分见证，未完整重算 |
| [core.py](code/core.py) | 真实整数禁添含 S+S−S、平均数；有限基底构造，不是 Singer 定理全称证明 |

原脚本默认写本实验的 data，同名重跑会覆盖冻结输出；paired_lower 还读取 paired_lift JSON。后续复跑应先复制 code 与所需 data 到新时间戳实验目录，保持布局，另存新日志。完整数学接受由具名执行者负责；本次未运行这些脚本。

旧独立复核程序及输出从 [有限审读入口](../../reviews/20261005-b156-inventory/REVIEW.md) 读取。独立程序仍固定旧 delivery 路径，使用条件见 [材料导航](../../MATERIALS.md)。两次 40320 搜索不等于联合 40320²，也不证明充分大 p 或全部 N。

字段、完整参数范围、重叠枚举空间及配对分母的定义见[原数据字典](../../results/DATA_DICTIONARY.md)。其中未保留历史实验的章节不是当前执行入口。
