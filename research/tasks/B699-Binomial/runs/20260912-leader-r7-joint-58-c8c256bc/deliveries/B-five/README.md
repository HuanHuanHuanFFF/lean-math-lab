# B699 Pro B：完整5块排除与新的混合整行

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。

新结论：完整noCommon下三个规范C_s均不等于5；新整行n=10P^aQ^b+2（P,Q为奇素数且不等于5）全部合法j成立。R7不变，未Lean。

复现，只需Python标准库：

```bash
python3 -S -B verify_manifest.py
python3 -S -B code/reproduce.py --record replay/local
```

脚本从空临时目录重建全部10份新数学输出，再与冻结数据逐字节比较。它不重跑旧研究、旧D的末端，也不验证出版对数定理本身。证明中的外部输入和与原题的无限连接必须阅读正文。

`outputs/outer.json`：48个完整外侧状态；`middle.json`：大n余数分类和6个h=4状态；`pell.json`：两轨道全部44项；两个log输出：不同实现的严格有理区间；其余为独立覆盖、代数、实际输入、坏数据和来源检查。

原ZIP按原字节保存在sources/originals，仅从它恢复7个采用源文本。SOURCE_MAP精确记录成员路径和SHA256。`exploration/`只保存真实非接受发现，没有浮点输入参与接受。`replay/`为真实命令、stdout及重放记录，不伪造空日志。
