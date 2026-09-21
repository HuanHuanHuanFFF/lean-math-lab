# B699 Pro A · LOC89 + SAME-G TRACE / EDGE10-H107

先读REPORT.md；证明细节PROOFS.md；后续接入HANDOFF.md；失败边界FAILURE_BOUNDARIES.md。

**本轮没有10→9。** 新增NF89后五个缺重位置的无限不可约类别排除，以及同一G普通重数／对角费用／根和联合约束。最大10记录796→390，等号(h,v)状态93→71，等号时整个G的X次数h≥107。

## 完整接收

需Python≥3.11、NumPy、C++17编译器。无旧ZIP、网络、仓库或SymPy依赖。

    python -B code/reproduce.py --out /absolute/new-directory --workers 3 --compare

输出目录必须不存在。入口编译小型整数工具，重生本轮全部五组根门，验证全部38,078个普通jet和两个精确核，重建完整账本与32项边界测试。不要在最终证据目录直接重跑发现器以覆盖原证书。

状态：`PASS_NEW_LOC89_SAME_G_TRACE_EDGE10_H107`。

## 文件导航

- evidence/nf15_h4..h8_gates.json：完整源根门残余及门筛计数；同名minors和rank_certificates是新精确证书。
- evidence/trace_ledger_discovery.json：四种费用配置发现；verification/final/ledger：独立接收、71等号状态、187条TRACE拒绝及真实10放松边界。
- verification/final/ACCEPTANCE.json：本轮准确终点；REPLAY_RECEIPT.json：第一次完整运行的动态回执。
- logs：实际发现、核恢复、阶段接收、完整接收的命令与输出。
- source_manifest：旧字节采用，不重复旧大包；NEW_CODE_PROVENANCE记录当前源码哈希。
- code/discover_nf15.py、trace_ledger.py、modular_kernel.py：发现／恢复程序。只能在隔离工作副本按日志命令重跑。
- code/reproduce.py、verify_nf89.py、verify_trace_ledger.py：最终独立接收入口及两主模块。

SHA256SUMS列出最终包内所有其它普通文件；最终ZIP的实际空目录解压重放回执随下载另外交付，避免ZIP自哈希循环。

所有数量均有明确对象；没有原题有限实例计数或完成百分比。证据等级为作者纸面＋精确证书＋同会话另一实现，冻结前置保持原等级。
