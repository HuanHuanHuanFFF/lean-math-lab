# 实际来源、冻结等级与没有执行的内容

## 原件

1. 本页最新附件 `B699-ProA-i9-mixed-quartic61-evidence-20260916.zip`，原字节存入`sources/INPUT_mixed-quartic61.zip`。SHA256：`834f5660e7a56a5dbe72909027b08a7f267f2b59641d459737a39996211dc7ae`。
2. 其中REPORT/HANDOFF/SESSION_STATE/SOURCE_ADOPTION/FAILURE_BOUNDARIES/notes/PROOFS及两份选用上游文本，保持原字节，精确归档成员映射在`evidence/source_manifest.json`。已阅读当前任务有关部分；未执行旧50型或历史接收入口。
3. C31采用本页已提供的原证明，文件ID `file_00000000990082119457d05ea5737f07`，挂载原路径 `/mnt/data/B699-ProA-i9-support-gcd31-20260914-v3/notes/PROOFS.md`；本轮完整原字节副本`sources/C31_PROOFS.md`，SHA256见manifest。没有重新附上55MB的旧C31证据ZIP，也没有声称本轮做了其成员全恢复/数学重验。

源字节核对不等于旧数学证书独立接受。

## 实际依赖

* E/P/PC、BC、上一轮常首系数混合四次MQ4、旧RG、K152：从上述固定原文消费准确接口，详见新PROOFS §1。上游含A9-FINITE、完整标量、具有完整前提的A14-CUBIC、H013及全行位置/PC/content/BFT。原作者等级保留。
* C31：处理199个常数和3个线性原点候选；其出版输入是Bérczes–Evertse–Győry Prop3.10，另采用A9-FINITE。旧31支持格/完整指数覆盖本轮未重放。
* 本轮新增的因子范数：经典一元Mahler不等式，通过两次Jensen/系数估计得二元版本。主文核对来源为Shabnam Akhtari, Jeffrey D. Vaaler, *Lower bounds for Mahler measure that depend on the number of monomials*, arXiv:1810.12413v1，§1 (1.2),(1.3)：https://arxiv.org/html/1810.12413v1 。本轮不采用该文新的多变量单项式定理作黑箱。没有分析PDF、没有把未下载PDF字节或哈希列为取得。

## 探索但最终不采用

曾阅读本页`B699-ProA-variable-support-20260915/notes/PROOFS.md`中的U25，尝试把新g界接成n<2^(2^88)。这条思路的巨大底部随后被普通二重插值完整消掉；最终Q/R及50分量主结论不使用U25，也不新增其Győry2019/2020勘误依赖。

## 接收独立性

发现：分数自由整数消元、SymPy 1.14.0因式分解。接收：独立的模整数消元＋Fraction低秩补证、显式整数核等式和因子乘积。两套作者实现是实现层交叉检查，不是外部独立数学审稿。

没有Lean、没有外部CAS整点完备性假设、没有仓库提交/推送/PR、没有其他会话或子代理的新成果。用户提供的旧总览是历史快照；本会话沿用57模板，不冒充仓库已经独立接受全部57模板。
