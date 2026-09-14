# B699 Pro D · Three-window threshold release · 2026-09-13

先读 `REPORT.md`；完整无限证明在 `notes/PROOFS.md`。纸面＋精确程序证据；未Lean、未独立人审；R7不变。

## 重放

Python 3.10以上，全部为标准库。实际环境Python 3.13.5。

```sh
python -B code/check_manifest.py
python -B code/reproduce.py --record /tmp/b699-new-replay
# 可选：本轮已实际重放的两个继承包
python -B code/replay_frozen.py --record /tmp/b699-frozen-replay
```

新入口在空目录重建三份数学输出并逐字节比较，记录真实命令、退出码、时间、哈希。输出目录放在本发布目录外。干净ZIP重放还在外附的release-verification.json中记录。

## 内容

`notes/`：新证明、准确依赖和失败边界。`code/`：生成器、未导入生成器的第二实现、精确义务、重放与manifest入口。`evidence/`：三份本轮完整数学输出。`replay/`：本轮真实历史执行收据/日志。`sources/`：实际读取的冻结源文本与原包展开材料。`frozen/`：D transfer-verified、B cubic、D tail三个原ZIP。`INPUT_INVENTORY.json`：所有取得输入的原始哈希、采用状态、是否随包保留。

本包完整覆盖本轮数学与复现材料，不声称囊括或重新验收整个项目历史。A只保存本轮取得的报告/完整PROOFS；其旧约50MB证据及所有历史Lean不属于本轮验收。新证明没有这条依赖。

封包阶段的集成式重复上游重放曾触发工具超时，已保留三次中断记录。新主链重放及D子步骤另有实际PASS。最终ZIP验收只重新执行新数学主链和完整性检查，不把上游集成重放中断记为成功。
