# B699 Pro A — component obstructions

入口：`REPORT.md` → `OVERVIEW.md` → `notes/PROOFS.md`。来源见`SOURCE_ADOPTION.md`，失败与剩余量见`FAILURE_BOUNDARIES.md`。

新接收：

```sh
python3 -B code/reproduce.py --out /tmp/b699-component-new-check
```

输出目录必须不存在；使用Python标准库，无需pip。不执行任何历史代码。`code/build_certificate.py`是本轮发现／证书构造入口，主接收不调用它，也不需大核矩阵。新证书为`evidence/new_certificate.json`。

`logs/new-replay-01/`是实际发布目录新检查；归档外的release-receipt记录最终ZIP完整性与干净目录重放。不能将新重放时间当成历史数学或Lean检查时间。

修改范围仅此独立交付目录。没有Git提交、推送、PR、并发会话或Lean安排；旧包按原字节保存。
