# B699 · Pro D · 四窗口整数间隙（2026-09-14）

主结论：所有 n=2^a3^b+h（a,b≥0，h=0,1,2,3）的全部合法 i4/i5；以及四窗口统一判据QIG和纯纸面COLOC4。不是完整指标解答，R7不变。

阅读顺序：REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md → HANDOFF.md。
最终有限证书只有 `evidence/certificate.json`（schema v2）。`checkpoints/`保留早期只h=0的历史检查点，不是当前验收域。

## 接收本轮结果

需要Python3.10或更新版本；本次实际Python3.13.5。标准库即可，不需要SymPy、Lean或网络：

```bash
python3 -S -B code/reproduce.py --out /tmp/b699-d-qig-check
```

输出目录必须在本包之外，且为新目录或空目录。接收器验证manifest、保留源字节、本轮完整有限域／CRT／素性／恒等式、直接回归、29类坏证据拒绝，并与冻结输出逐项比较。
数学输出在去掉运行秒数和Python版本字段后精确一致；没有忽略数学字段，也不声称计时日志逐字节一致。

预期状态：`PASS_CLEAN_CURRENT_D_REPRODUCTION`；有限消费者：`PASS_COMPLETE_SHIFTED_SMOOTH_ROWS_I4_I5`。
程序不会运行历史A/B/D数学、解开历史嵌套ZIP或接触任何Git仓库。

## 生成器和过程记录

`code/generate_certificate.py`用SymPy寻找有限分解，生成当前证书；仅可在工作副本运行，它会写evidence/certificate.json和logs/generation.json。本次生成环境SymPy1.14.0。
接收器`code/verify.py`不导入生成器，不需要SymPy，并独立验证完整分解和确定性递归素性。
`code/regressions.py`的有限观察不代替无限证明；`code/mutations.py`用于拒绝损坏证据，不证明接收器绝无漏洞。
`code/explore_invariants.py`和discovery JSON是发现记录，不是最终完备性证书。

重建来源快照是可选的管理操作，需要用户原始启动包：

```bash
python3 code/collect_sources.py /path/to/extracted-dispatch --packet /path/to/B699-ABD-next-round-20260914-v1.zip
```

先在该原包运行`python3 prepare_inputs.py D`。本轮接收不需要重新执行来源收集。

## 文件和证据等级

- notes/PROOFS.md：全部无限归约、完整假设、有限接收数学解释。
- evidence/：最终证书、实际接收、有限诊断与坏证据拒绝。
- sources/：固定旧D、上轮新D、B原ZIP；A/B/D已读文本；精确来源映射及启动任务原件。
- logs/、checkpoints/：真实过程记录、已纠正错误、阶段输出。

MANIFEST.json覆盖本包其他全部文件；ZIP整体哈希和干净解包重放收据单独交付，避免自引用。
原包中的历史PASS日志不算本轮重验。没有Lean、独立研究者／人工审读或Git发布。
