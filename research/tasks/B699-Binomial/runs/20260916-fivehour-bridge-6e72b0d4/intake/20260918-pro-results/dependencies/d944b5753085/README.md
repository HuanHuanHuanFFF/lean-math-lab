# B699 Pro A · Quintic33

本轮只研究i9。入口：REPORT → PROOFS → FAILURE_BOUNDARIES → HANDOFF。唯一项目累计入口仍为用户的OVERVIEW-2026-9-17.md，本包只给后续增量。

新增：Q10-L25、Q5-L110、U11、SAT30和M33。数学证明、有限计算、冻结输入和出版定理各自分开记录。没有Lean、G恢复、外部独立审稿或GitHub写入。

运行本轮新增接受：

    python3 -B code/reproduce.py --out /absolute/new-empty-directory

输出目录必须不存在或为空。只依赖Python标准库，未知H的大矩阵不分配。`gate_probe.py`、`refined_gate.py`是探索记录，最终接收入口为`reproduce.py`。

`SHA256SUMS`记录包内载荷字节。包外release-receipt记录最终ZIP的SHA256、干净解压核验与实际重新执行情况。旧大证据不重复打包，来源见SOURCE_ADOPTION和evidence/source_manifest.json。
