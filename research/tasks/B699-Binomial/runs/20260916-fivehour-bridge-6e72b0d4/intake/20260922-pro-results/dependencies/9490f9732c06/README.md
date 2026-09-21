# B699 · D / i=3 · 第三轮：NSB64

入口：先读 REPORT.md，再读 PROOFS.md；接续读 HANDOFF.md，失败边界见 FAILURES.md。

主结果：在已冻结的规范最小临界两底 NC3 支，设
`m=isqrt(h), A=h-m*m+1`，则 `m>=64*A*A` 强迫原来的 q 在
`q^(3r)=Q^3` 层进位，给同一原始 (n,j) 的 Common3。

这是一个带无界参数的条件域排除，不是整个 i=3 闭合；没有一般绝对高度、
全局有限化、严格下降、Lean 或外部独立审读。与全历史消费者并集的净差未审计。

## 使用

```
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 evidence/same_input_consumer.py --h 332931
```

完整输入消费者、可选探针与依赖版本见 REPLAY.md。

## 目录

- REPORT / PROOFS / FAILURES / HANDOFF：结论、完整证明、失败命题、下一轮入口。
- SOURCE_ADOPTION.md / AUDIT.md：采用的旧前置、证据等级、本轮自查边界。
- evidence/：精确符号恒等式、标准库系数核验、原输入消费者及区间探针。
- certificates/：机器可读全参数系数账本与精确弱模型/区间记录。
- logs/：实际重放、第一次实现常量错误与修复、环境及可移植验证。
- notes/：可选有限探索，不参与全参数证明；外部资料使用记录。
- inputs/：只读冻结 Overview、前两轮相关证明和第二轮完整 ZIP。
- MANIFEST.json / SHA256SUMS.txt：成员及来源元数据、逐文件校验。

本轮没有触及 Git 工作区或远程仓库。
