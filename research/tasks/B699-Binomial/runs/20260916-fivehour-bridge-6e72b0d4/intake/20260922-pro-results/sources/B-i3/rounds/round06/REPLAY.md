# REPLAY — 第六轮可重放入口

在解压后的根目录运行，输出目录必须尚不存在：

```bash
python3 src/replay.py --output-dir /tmp/b699-r6-check-new
sha256sum -c SHA256SUMS
```

默认只需要Python标准库；不访问网络，不写入仓库，不覆盖证书。检查器A/B不导入彼此，也不导入生成器。

重新生成冻结证书需要SymPy：

```bash
python3 src/replay.py --output-dir /tmp/b699-r6-regenerate-new --regenerate
```

`replay.json`记录两套检查器和18项坏证书拒绝；重新生成时还记录字节一致性。不要把冻结输出目录当新输出目录。

## 检查范围

A：多变量稀疏整数系数展开，整数伪除法，原二项式与floor层对比。

B：从表达式得到逐变量次数界，在足够多的精确整数网格点检查身份；有理多项式长除法；数字逐位相加与整数二项式递推。

网格仅验证有明确次数界的多项式身份，不是“扫描整数样本所以无限成立”。有限行应用、形式族样本和小n估值回归不承担无限定理；PROOFS.md给出全部无限量词论证。

实际冻结运行：Python版本和证书哈希见`outputs/frozen_replay.json`。源码不需要Lean、外部CAS、私有仓库或额外旧包执行。

## 诊断探针

`src/probe_poly_pairs.py`是本轮前期小系数诊断，需SymPy。它默认写`outputs/probe_poly_pairs.json`，因此不要在冻结原件上重跑；复制到单独工作目录再运行。其结果不参与无限证明。
