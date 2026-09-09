# B699 新数学研究包

**主要结果：纸面推导 + 确定性有限证书排除全部 i>=185 的合法 n,j。未 Lean 化。**

先读 `REPORT.md`；接续用 `HANDOFF.md`。固定来源在 `sources/SOURCE-AUDIT.md`。

## 从源码复现全部接受计算

需要普通 Python 3.10+ 和支持 C++17 的 `g++`（可用环境变量 `CXX` 指定其他编译器）。接受链只用 Python 标准库，没有联网、SciPy、SymPy 或 Lean 依赖。

在解压后的本目录运行：

```bash
python3 code/reproduce.py
```

不要使用 `python -O`，也不要设置 `PYTHONOPTIMIZE`；断言属于检查器的一部分。

此命令依次运行精确常数和完整幂接口检查、815 条高度证书、第二算法交叉检查、素数链重新生成、C++ 源码编译、全链独立试除检查。实际运行过的记录在 `outputs/reproduction.json`，对应逐步 stdout/stderr 在 `outputs/replay-logs/`。

重放会重写本地 `outputs/` 中的结果和时间字段，并建立 `build/`；因此重放后的时间字段和相应文件哈希不必等于原归档，但素数链 SHA-256、证书参数和精确余量应一致。`MANIFEST.sha256` 用于核对未重放前的归档内容。

## 单独检查已附素数链

```bash
mkdir -p build
g++ -O2 -std=c++17 code/check_prime_chain.cpp -o build/check_prime_chain
build/check_prime_chain outputs/prime_chain_20m.txt
```

这一步不信任筛生成器：每个见证都用完全试除验证。它检查首尾和所有间隔，且无需证明链包含全部素数。

## 接受输出摘要

| 检查 | 实际结果 |
|---|---|
| 第一有理对数算法 | PASS，815 条 CERT，最小对数余量>774 |
| 第二素因子指数算法 | PASS，815 条，1088 个不同素数对数 |
| 素数链完全试除 | PASS，116667 个见证，首 2，末 20000093，最大差184 |
| 常数/边界审计 | PASS，10个有理正余量、3个参数余类、4个实际 D 非空测试、28个低指标直线障碍值 |

`prime_chain_generation.json` 故意保留 `GENERATED_NOT_YET_INDEPENDENTLY_CHECKED`：它只代表生成阶段。独立验真状态在 `prime_chain_check.json`，全体接受状态在 `reproduction.json`，不要混淆阶段。

## 诊断实验：不属于接受链

`code/line_cover_probe.py` 使用 SciPy 的浮点线性规划；`code/middle_height_probe.py` 与 `code/middle_fixed_probe.py` 使用 NumPy 的浮点常数诊断。它们的输入在 `inputs.json` 和各脚本中，实际输出为 `outputs/*probe*.json`。

可选复现：

```bash
python3 code/line_cover_probe.py
python3 code/middle_height_probe.py
python3 code/middle_fixed_probe.py
```

执行这些可选脚本需要相应的 NumPy/SciPy。**它们的浮点目标值、近似分数和近似高度都不构成数学证书。** 第一阶段的作用是选择值得严格检查的路线和常数；接受链使用不同的精确代码。

## 证据适用范围

计算复现不等于对 `REPORT.md` 的形式化证明。主定理仍依赖其中的无界参数推导和两个已核对的 Dusart 定理。未运行 Lean、未提交仓库、未声称人类独立审稿。剩余低指标仍有无界参数，见报告。
