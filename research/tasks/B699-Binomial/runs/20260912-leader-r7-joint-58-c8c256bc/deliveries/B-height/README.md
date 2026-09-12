# B699 R7 Pro B：新统一高度与17／25块

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。新原题整行完全初等；统一相对高度单独依赖BEG2013 Proposition3.10。两者不要混成一个依赖闭包。

复现：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

只使用Python标准库；从空临时输出目录执行8条新命令，对8份数学文件逐字节比较。replay下保存实际日志，不在静态清单内；其他文件全部绑定路径、大小与SHA256。

sources/originals/previous-five.zip为完整旧原件。SOURCES.json列出5份实际采用文本的原成员映射。没有运行旧研究的大实验。exploration是选路记录，不是接受数据；其残余模型不是原题反例。外部PDF实际通过网页原文核对，容器下载失败，没有虚构文件。

R7保持{3,4,5,6,7,8,9}。原题所有量词、p=i和完整素数幂均保留。无Lean、无第二独立研究者或人类审稿、新颖性未认证。
