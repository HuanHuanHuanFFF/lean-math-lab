# B699 Pro D · 分散位置下降证据包

本包交付日期2026-09-15；数学对象见 REPORT.md。先读报告、交接、来源采用和失败记录。完整论证在notes/PROOFS.md。

## 目录

- `code/verify.py`：标准库精确接收，不导入生成器或LP发现程序。
- `code/generate.py`、`code/core.py`：重建由已证明高度导出的全部有限域及区间证书。
- `code/diagnostics.py`：有限直接回归、准确旧条件比较、精确有理失败模型。
- `code/mutations.py`：35类损坏证书拒绝测试。
- `code/reproduce.py`：串行重建本轮新链，比较数学输出字节。
- `evidence/`：75份下降证书、68个尾部界、完整有限区间证书、失败模型。
- `outputs/`：实际接收结果，均无随机种子、时钟或运行机器路径。
- `sources/previous/`：上一轮D原始ZIP及实际采用入口的原字节副本。
- `exploration/`：发现脚本和日志索引，非接受依据。
- `logs/`、`replay/`：实际执行记录；失败和被替代的探索版本明确标记。

## 接收

```sh
python3 code/verify.py --out /tmp/b699-d-verify
python3 code/reproduce.py --out /tmp/b699-d-replay
```

Python3标准库即可接受。LP发现脚本需要NumPy/SciPy，但不参与正向重放。请使用输出到包外的新目录，避免混入源文件或清单。

有限检查不取代正文中的无限量词证明。证据等级：作者纸面＋确定性精确证书，两套实现同一作者；未Lean、未独立人工审读。没有自动调用网络、仓库、其他会话或任何发布动作。
