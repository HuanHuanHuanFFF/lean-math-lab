# B699 Pro B：内容非零性与更宽的尾块

先读REPORT.md；完整数学在notes/PROOFS.md；执行和来源见SOURCE_ADOPTION.md与HANDOFF.md。

复现新接受链（仅Python标准库）：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

默认只运行5个新接受脚本，不运行发现探针，不重跑sources/previous.zip的历史证据。probe_zero.py是可选SymPy发现代码，当前原始输出已保存；不是接受链依赖。

输出与静态源按MANIFEST核验，replay目录只含真实执行记录。没有Lean验收或独立人审；R7仍为3..9。
