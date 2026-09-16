# 重放本轮新证据

默认接受只需 Python 标准库：

```bash
python3 code/run_checks.py
```

这个入口重新生成全部13个H023高段恢复块，重构低段、H02全部α/β/NORM、所有递归素性与进位区间，并做恒等式回归及坏证书测试。不会运行旧A/B/D的历史全链。新的高段块不是把某个经验有限扫描外推；其完整指数边界由PROOFS.md中的高度推出。

受单次执行工具约束时可以分段，数学域保持不变：

```bash
python3 code/run_checks.py --stage finite
python3 code/run_checks.py --stage high --first 0 --last 3
python3 code/run_checks.py --stage high --first 3 --last 6
python3 code/run_checks.py --stage high --first 6 --last 9
python3 code/run_checks.py --stage high --first 9 --last 13
python3 code/run_checks.py --stage assemble
python3 code/run_checks.py --stage regression
python3 code/run_checks.py --stage negative
```

assemble检查全部13块的覆盖、无缺口与无重叠；不能用只运行一个区间的结果声称完整接受。

重新生成有限证书（仅因式分解发现使用SymPy）：

```bash
python3 code/generate_finite.py --out evidence
python3 code/run_checks.py --stage finite
```

所有发现的素数都由独立标准库的完整p−1递归证书验证。`exploration/`保留选路及第一实现原记录，不是必要的接受前置；其中调用SciPy/SymPy的LP及小矩阵结果不是无限证明。

注意：本轮仍显式继承G5/G7/G14、QIG/SIXG的冻结数学接口。运行成功不表示已重验其历史原点多项式或完成Lean。目录内新的JSON只证明本轮列明的有限义务。
