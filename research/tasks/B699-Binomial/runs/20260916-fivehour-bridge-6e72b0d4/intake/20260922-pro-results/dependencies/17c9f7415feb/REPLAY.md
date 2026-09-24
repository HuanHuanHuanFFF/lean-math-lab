# REPLAY · 第六轮

## 标准入口

```bash
cd B699-D-i3-20260921-round6-bilateral
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

默认重放仅用Python 3.10或更新版本的标准库，不需要联网、仓库、Magma、Lean、SymPy或安装软件。它不重跑冻结前置的历史证书。

## 检查内容

1. 从显式定义重建同输入Y_star、范数商、六个平方差；精确除去正因子、换元、移位，与全部正系数表逐项对照。
2. 核对A尾唯一曲线W=32t+40的原范数残差及t>=6的正系数证明。
3. 独立重建两个由证明界定的有限索引，核对全部1255+2547=3802个相邻平方证书，拒绝缺项、重复、不正确索引或平方。
4. 验证共享恒等式、小素数赋值所需多项式恒等式及精确失败模型。
5. 演示两次条件门检；门检不声称存在NC3输入。

纸面证明还负责前提、整数格点、模3/8分类、原输入桥和量词。代码PASS不替代这些逻辑义务，也不构成Lean或外部独立审读。

## 只调用新门

```bash
python3 evidence/bilateral_gate.py --delta 49 --cofactor 72
python3 evidence/bilateral_gate.py --delta 65 --cofactor 2
python3 evidence/bilateral_gate.py --delta 7649 --cofactor 3079729 --h 21
```

第三个只会说明未被这些新门排除；FAILURES已证明它失败于原范数，绝不是NC3候选通过。

## 可选：重生成证书

```bash
python3 evidence/generate_certificates.py
python3 evidence/verify.py
```

该可选生成器需要SymPy；准确的本次运行版本在ENVIRONMENT.json。生成器使用CAS，主验证器使用标准库稀疏多项式；两套运算由同一会话编写，不称作外部独立实现。所有证书由本次实际运行生成。

重新生成会写入certificates目录；如环境格式化行为改变，需重新对比差异，不能继续沿用旧SHA256声明。

## 输出等级

```text
DUAL_CYC1_CONDITIONAL_CORE_REPLAY=PASS
```

只表示本包新增条件域的重放通过。完整指标仍R7，旧作者级前置没有被程序自动提升为Lean。
