# B699 / Pro D / R7 general structure

先读REPORT.md，再读notes/PROOFS.md。身份保持D；误接B成果只是冻结上游。

默认精确重放（Python 3，标准库）：

    python verify.py

另行重放两个冻结输入：

    python verify.py --replay-inputs

`outputs/`的证书是有限数据；`code/check_*.py`从完整定义重建/核对，不只检查“0剩余”。`make_pell_cert.py`需要mpmath，仅用于寻找新的候选p/q，不属于默认信任边界。`probe_*.py`及实例搜索不承担无限覆盖。

巨大Hrow(a)只保留符号定义。不要展开其数值，不要将几秒重放等同于Lean或论文人工审稿。完整i3与R7尚未闭合。

请求v2包不可用的接收事实见input/INTAKE.json及HANDOFF；本交付不伪称执行过未读取的文件。
