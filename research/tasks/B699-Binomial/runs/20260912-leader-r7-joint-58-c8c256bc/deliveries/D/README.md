# B699 · Pro D · joint-residual

新数学：双残量精确恒等式；旧i3标量高度的初等替代证明；无界奇部整行消费者；全部2^37∤n的i3行；带准确行条件的同素数R7消费者。

**证据：作者纸面＋精确完备程序证书。未Lean、未独立人审。R7未减少。**

## 阅读顺序

REPORT.md → notes/PROOFS.md → notes/MINIMAL_INTERFACE.md → HANDOFF.md。
失败和非等价边界见 notes/FAILURES.md；输入版本见 SOURCES.md、sources/INTAKE.json。

## 默认复验（只用Python标准库）

在包所在目录执行：

```sh
python verify.py --output /tmp/b699-d-joint-check
```

输出目录必须在包外。默认流程检查成员哈希和冻结来源，运行两套完整有限域接受器、16种坏证书测试及代数／原题回归，并确认包内字节未改变。输出包含机器可读 verification.json 和各步骤日志。不传 --output 时使用新的临时目录。

Python 3.10 或更新版本；实际版本和耗时保留在 logs 与隔离发布记录中。不要以 Python -O 或 PYTHONOPTIMIZE 运行数学接受器。

## 单项接受

```sh
python code/check_finite.py evidence/finite-certificate.json
python code/check_finite_alt.py evidence/finite-certificate.json --candidates evidence/projection-candidates.json
python code/check_mutations.py evidence/finite-certificate.json
python code/check_algebra.py --root .
```

## 可选重新生成（SymPy仅生成时使用）

```sh
python code/generate_certificate.py --vmax 36 --output /tmp/b699-d-joint-generated
```

将产生的 finite-certificate.json 和 projection-candidates.json 与包内文件逐字节比较；generation.json、progress.json 含运行时间，不要求时间字段一致。默认接受器并不导入SymPy，也不相信生成器提供的素性结论：所有素因子都有独立检查的完整阶证书。

本轮已经实际执行一次新的完整生成，数学文件一致，见 evidence/regeneration-verification.json。

## 文件分类

- code/generate_certificate.py：完整域和递归素性证书生成。
- code/check_finite.py：主接受器；逐因子CRT。
- code/check_finite_alt.py：不同实现；不同域遍历、幂等元CRT和模幂。
- code/check_mutations.py：实际坏证书拒绝。
- code/check_algebra.py：七个稀疏多项式身份、边界／原题回归和展示行。
- code/probe_mixed.cpp：找到五非空弱解的可选诊断探针，不是最终消费者依赖，不在默认流程编译。
- evidence/：冻结数学数据、生成／来源核对记录及精确展示输入。
- logs/：本轮实际接受日志；新的复验输出另存包外。
- sources/：11份采用或核对的原文本，不改字节；不重封装45MB旧调度包。

只有有限域证书是V36的有限证明依赖；普通样例和扫描探针不能承担无限量词。所有新消费者的纸面证明均完整写在PROOFS中。
