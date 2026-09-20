# B699 Pro A：NF65 / NF71 / SAT120 / COVER11

本轮数学研究完整证据，2026-09-20。主要结果：原同一个固定G的可载点分量上界12→11；存在正余量可载点因子时≤10。统一SAT≤20，NF65/NF71全部单缺重类别已取得同一-G所需S3费用。

从REPORT.md进入，PROOFS.md给纸面无限量词与有限引理接口，HANDOFF.md给下一前沿，FAILURE_BOUNDARIES.md给精确失败边界。SESSION_STATE.json为机器可读状态，SOURCE_ADOPTION.md记录冻结依赖/出版输入/哈希。RUN_LOG.md链接本轮实际日志。

## 最终接收

使用Python≥3.11与NumPy（本轮测试Python3.13.5、NumPy2.3.5）：

    python -B code/reproduce.py --out /absolute/nonexistent/directory --workers 3

输出目录必须不存在，worker限1..4。接收检查SHA256SUMS，并重新生成本轮全部根门、精确矩阵/仿射族/参数层/非零证书与同一G账本。没有网络、旧ZIP、旧仓库、SymPy、SciPy或Lean依赖。最终结果为`PASS_NEW_NF65_NF71_SAT120_COVER11_EDGE11`。

`verification/final/`为参考确定性输出；外部release receipt记录最终ZIP空目录解压重放及输出逐字节对照。临时旧分段输出未重复装入包；其哈希保留于verification/staged-output-manifest.json，实际日志保留。

## 发现与证据文件

`code/discover_all.py --out /absolute/new-directory`是本轮模块的串行便利驱动，另需SymPy。它是完成阶段后编排的复现入口，没有被伪称已整条执行；实际模块分阶段日志在logs。失败MILP探针kernel_product_probe.py可选需SciPy，不是最终发现或接受依赖。

`evidence/*gates.json`、`*minors.json`、`*rank_certificates.json`为完整有限义务；`*solutions.json`给全部有理仿射空间；signatures/stratum_peeling/nf71_nv给全参数阶与实际非零证书。带FAILED名称的文件仅是失败边界，不是证明证书。

所有计数都是辅助几何或必要资源配置，不是原题有限候选数。作者纸面＋精确证书＋同会话双实现不是外部独立全链审稿。没有Lean/仓库修改/推送，没有恢复G系数/实际曲线，没有原题反例。
