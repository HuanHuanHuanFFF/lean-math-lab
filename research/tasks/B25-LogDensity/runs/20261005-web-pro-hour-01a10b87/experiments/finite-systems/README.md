# 有限单剩余系统：可复用检查与搜索

脚本、作者固定输出和独立复跑分别记录。数学脚本未因搬目录重新运行。

| 程序/输出 | 用途与实际范围 |
|---|---|
| [verify_capacity_and_tower.py](code/verify_capacity_and_tower.py) / [作者 JSON](data/capacity_and_tower.json) | 32 组塔参数、524280 候选倍数和晚尺度有理常数；[独立 JSON](../../reviews/20261005-b25-delivery/logs/capacity_and_tower.json) 已复跑一致（排除运行时长） |
| [audit_finite_lemmas.py](code/audit_finite_lemmas.py) / [作者 JSON](data/finite_lemma_audit.json) | 300 随机有限系统、49135 激活归一化、N=24 差 1/595；[独立 JSON](../../reviews/20261005-b25-delivery/logs/finite_lemma_audit.json) 已复跑一致 |
| [search_finite_inequality.py](code/search_finite_inequality.py) / [作者 JSON](data/search_finite_inequality.json) | 精确周期及总调和量 UF 查错的可复用骨架；作者有限搜索，未独立重跑，不证明 UF |

三份程序都是单文件标准库脚本，以 --out 指定输出；程序不会自行创建所需父目录。后续由具名执行者先创建新的时间戳输出目录，再使用下列模式，不能覆盖冻结 data/reviews：

python -B code/verify_capacity_and_tower.py --out NEW_OUTPUT/capacity_and_tower.json
python -B code/audit_finite_lemmas.py --out NEW_OUTPUT/finite_lemma_audit.json
python -B code/search_finite_inequality.py --out NEW_OUTPUT/search_finite_inequality.json

默认输出含旧相对目录假设，应始终显式传 --out。本次只检查来源字节，不声称这些新布局命令已实测。旧整套审读 runner 依赖已省略的泛泛材料；其历史执行日志仍完整可读，见 [材料导航](../../MATERIALS.md)。
