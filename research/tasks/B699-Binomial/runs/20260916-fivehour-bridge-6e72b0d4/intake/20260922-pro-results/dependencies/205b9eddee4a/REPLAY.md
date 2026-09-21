# REPLAY — 无仓库、无 Lean 的可重放入口

解压后进入本目录。

## 只核对冻结证书：仅 Python 标准库

    python3 src/replay.py --output-dir /tmp/b699-r4-check-new

输出目录必须尚不存在。程序不会覆盖本包的 certificates 或 outputs。

## 重新生成并检查字节一致

生成器额外使用 SymPy，本轮版本1.14.0：

    python3 -m pip install sympy==1.14.0
    python3 src/replay.py --output-dir /tmp/b699-r4-regen-new --regenerate

生成器只向新输出目录的 regenerated/ 写入，并比较四个 JSON 与冻结证书是否字节一致。实际证明检查仍有标准库独立实现。

## 单独执行不同算法

    python3 src/check_a.py
    python3 src/check_b.py

A：稀疏多项式、精确系数变换、完整阶素性。
B：有次数界的张量插值、独立伯恩斯坦重构、小数试除/部分因子 Pocklington，不导入A。

## 哈希与压缩包

    sha256sum -c SHA256SUMS

MANIFEST.json 记录除自身与 SHA256SUMS 外的全部成员哈希；SHA256SUMS 还覆盖 MANIFEST.json。两者不做不可能的自哈希。原输入 Overview 与上轮 ZIP 的原字节均保存。

重放检查的是证书和回归，并不等于机械验证所有纸面推理。完整量词、孤立3、原输入回传、Q2ALL冻结4|n前置以及无限范围必须连同 PROOFS.md 阅读。
