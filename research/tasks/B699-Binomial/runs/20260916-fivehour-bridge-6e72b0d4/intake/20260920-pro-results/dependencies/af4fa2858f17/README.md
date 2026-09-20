# B699 Pro E — 二倍平方行的孤立3饱和单槽

**结果入口：** REPORT.md → PROOFS.md；下一轮：HANDOFF.md；失败：FAILURES.md；来源：SOURCE_ADOPTION.md。

核心新结论：n=2X²、X正偶，删除真实孤立一次3后的任一侧聚合源S_±若整块进入一个槽，原数对满足Common3。推得所有n=2(3p^h±1)²整行闭合，以及NC3必要ω(K)≥4。另有变m的负号主导源整行P≥542m^5。

新主证明及m3完备末端在本包。旧NEG-INT按冻结作者等级采用，其全文保存在sources。无Lean、无仓库修改、无外部独立审稿，R7不变。

## 一键只读重放

    python3 replay.py

只需要Python标准库，不访问网络。不重新生成或覆盖证书，临时坏证书在包外临时目录测试；核对运行前后包内字节一致。

## 独立运行

    python3 code/primary.py certificates/certificate.json
    python3 code/independent.py certificates/certificate.json
    python3 code/identities.py
    python3 code/value_grids.py
    python3 code/mutations.py
    python3 consumer.py --self-test

需要从源码重新生成证书时，必须指定新的输出位置：

    python3 code/generate.py /tmp/b699-sat-new-certificate.json

生成器拒绝覆盖已有文件。

## 原数对充分消费者

    python3 consumer.py --n 392 --j 5
    python3 consumer.py --n 3872 --j 1422

第一条给出SAT-SLOT成立；第二条不触发消费者。NO_CONCLUSION并不是反例。消费者无需分解源块，但只给定理保证的素数存在性，不假称已计算实际见证。

## 文件说明

certificates/certificate.json：完整m3候选记录、相邻平方界、原回归见证和失败诊断。
code/primary.py：D全部除数→P→判别式；原回归使用真实binomial gcd。
code/independent.py：按已证明上界枚举P；展开D与判别式；原回归使用筛法及完整进位。
code/identities.py 与 code/value_grids.py：系数核与完整次数网格。
logs/verification.json：实际运行命令和输出。SHA256SUMS：全部成员的字节哈希，不自我包含。

有限原小行的16356个数对只是回归。无限证明不能由它们替代；完备辅助终点的推导见PROOFS §4—§6。
