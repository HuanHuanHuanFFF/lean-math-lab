# B699 Pro B — 重复字块研究交付

先读 REPORT.md → notes/PROOFS.md → HANDOFF.md。
主要结论：任意字块重复至少三次的完整子族；两次重复的单段字块；近周期误差带。
一般 i3 与 R7 仍未闭合。

复现：
```
python3 -S -B verify_manifest.py
python3 -S -B code/reproduce.py --record replay/local
```
只需 Python 标准库。新程序从空目录生成输出并逐字节比较；不执行历史证据全链。
sources/previous.zip 按原字节保留；来源成员映射为 sources/SOURCE_MAP.json。
outputs/period_certificate.json 的7项是完整有限底部；regression/exploration并非无限证明。
