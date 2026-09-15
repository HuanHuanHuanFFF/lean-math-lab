# 本轮采用与来源边界

## 实际采用的冻结输入

原ZIP：B699-R7-ProB-two-neighbor-square-and-primitive-block-evidence-20260915.zip。
本轮副本：sources/previous.zip；2,528,622字节；SHA-256：

    1d8e25b51d4c399f37a67c4a09ffc2828cf501619a69b7a33a382dbd979f06a1

先读并复制了REPORT.md、HANDOFF.md、notes/PROOFS.md。原ZIP CRC及三份文本的逐字节映射由code/check_sources.py实际检查，输出outputs/sources.json保存每个成员的SHA-256。

采用：原题NC3→4|n及α形状、完整素数幂窗口、旧SQ以及素数幂邻数行消费者。维持原作者纸面＋精确证书等级；未重跑旧全链，未声称独立接受。

## 外部核对

本轮通过web实际打开官方文档：

    https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html

核对Nat.factorization_factorial（Legendre地板和）、Nat.factorization_choose（进位层计数）的准确表述。只作标准前置的出处交叉检查，本文需要的公式已由三个阶乘逐层相减在冻结输入证明。不引入发布版软件依赖，没有编译Lean，没有读取或改动项目Git仓库。

没有使用BFT、Padé、BEG、超椭圆估计、对数形式、素数分布或新外部研究成果。没有读取A/D本轮进行中材料。对当前状态只采用本会话冻结R7口径，不将早期任务文件的R12/R13改记为本轮前沿。

## 发现与接受

发现过程中用过SymPy整数因数分解、离散对数和一次有理点因式分解以选路；最终接受链完全为Python标准库，没有把这些发现结果的标签当成公理。原始模探针和显示搜索保存于exploration，不属于完备无限证明。
