# B699 · Pro B · 2026-09-18

**内容：同输入代数联立＋带无限量词证明的局部方法边界。不是新的 i3 闭合、全局高度或原题反例。**

阅读：REPORT.md → proofs/PROOFS.md → HANDOFF.md。准确失败边界见 FAILURES.md，采用前置和原件定位见 SOURCE_ADOPTION.md。

## 一键重放

在此目录运行：

```sh
python replay.py
```

环境：Python 3.10或以上；符号验证使用 SymPy 1.14.0。缺少时先运行：

```sh
python -m pip install -r requirements.txt
```

本轮实际环境：Python 3.13.5、SymPy 1.14.0。局部构造、CRT、原始数对和共同素数见证验证器只用标准库；整个重放无需读取仓库或联网下载旧证书。

replay先核对SHA256SUMS，再重算输出并比较冻结字节。它不运行Lean，不检查所有NC3输入，也不提高旧作者前置的证据等级。

## 文件说明

- REPORT.md：中文结论与六项状态回答；HANDOFF.md：直接接续接口。
- proofs/PROOFS.md：完整新增推导与无限局部存在性证明。
- code/symbolic_checks.py：27个精确代数身份；code/local_boundary.py：整数多项式、单根提升、CRT、实际content、原输入和共同素数5。
- outputs/*.json：可确定性重算的输出；verification/REPLAY.txt：实际执行日志。
- FAILURES.md、SOURCE_ADOPTION.md：限制、旧作者依赖与来源访问情况。
- sources/ADOPTED_INTERFACE_TRANSCRIPTION.md：明确标注的采用接口转录，不是原件字节。
- SHA256SUMS：全部交付成员的SHA256，不含清单自身。

四个普通整数例子均有共同素数5；精确p-adic解不能与这些近似例子混为同一个普通整数NC3。包中没有伪造的原Overview字节、Lean文件、独立审读报告或后台运行任务。
