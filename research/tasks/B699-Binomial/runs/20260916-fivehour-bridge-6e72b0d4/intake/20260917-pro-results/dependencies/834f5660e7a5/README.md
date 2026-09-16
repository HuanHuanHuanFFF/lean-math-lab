# B699 Pro A：branch concentration / mixed quartic

入口：OVERVIEW.md。报告：REPORT.md。完整论证：notes/PROOFS.md。

新接收只需要Python 3标准库：

```sh
python3 -B code/reproduce.py --out /tmp/b699-new-replay-unique
```

输出目录已有summary时拒绝覆盖。输入来源及原字节映射见SOURCE_ADOPTION.md、evidence/source_manifest.json。证书可由build_certificate.py重建（发现依赖SymPy），接收不需要SymPy或SciPy。

未Lean、未历史全链重放、未恢复原大核；57族与R7不变。固定覆盖分量上界61、每行潜在目标上界152。
