# B699 Pro B 本轮证据：缺陷有效化与移位高2幂

入口顺序：REPORT.md → notes/PROOFS.md → HANDOFF.md → SOURCE_ADOPTION.md。

## 复现

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

默认只需Python标准库。7条新命令从空临时输出目录生成、检查并逐字节比较7份数学输出。源输入为随包的固定文本和旧ZIP，不依赖临时VPS路径或当前Git仓库。`prepare_sources_once.py`只是原始接收记录，不是默认复现步骤。

outputs/gap_certificate.json包含全部312个有理Bernstein系数，是无界实数间隙证明的有限精确证书。其余输出分别是反向展开/完整次数检查、精确代数、真实Π恢复及子族样例、局部失败探针、坏证书测试、来源字节核对。

静态manifest不包含自身、replay动态日志或Python缓存。replay/acceptance保存本轮真实退出码及源码前后哈希。ZIP的重新解包复现收据由交付消息另附。

新R7整项闭合数0。固定缺陷高度有新的出版输入，未Lean；移位高2幂消费者没有出版输入。有限实例不是无界证明。所有另一实现均来自作者，不叫独立研究者验收。
