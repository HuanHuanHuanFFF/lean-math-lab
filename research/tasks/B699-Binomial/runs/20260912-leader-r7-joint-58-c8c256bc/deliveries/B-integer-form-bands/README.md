# B699 Pro B · 2026-09-14 新研究证据

主结果：整数二次型、n^(5/6)中心排除带、内部二次曲线带、完整g²缺陷及其非共振。

阅读顺序：REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md → HANDOFF.md。

原题仍未整项闭合，R7不变。所有无限结论为作者纸面证明。程序核对明确有限的代数、原始整数样例、来源与拒绝测试，不能替代无限证明；无Lean/人审/独立研究者认证。

## 运行

需Python 3.9以上标准库，无联网、CAS、额外包、编译器或Lean需求。

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

默认链在临时空目录重生成数学输出，不读取旧实验缓存；逐文件比较后保留命令、stdout/stderr、运行版本与真实返回码。生成器和独立检查器不共享核心数学函数。

可选有限诊断不属于新无限证明：

    python3 -S -B code/explore_resonance.py --out replay/probe.json

sources/originals保存两个实际采用的原ZIP原字节；SOURCE_MAP给11个文本成员的完整映射。其余50MB的A包未被重复嵌入、也未采用其新数学。完整外层包身份在SOURCE_ADOPTION.md与intake记录中。

manifest不覆盖可重新产生的replay/日志和自身；其余静态文件与原件都逐项校验，额外未登记的静态文件会被拒绝。旧原件没有修改。
