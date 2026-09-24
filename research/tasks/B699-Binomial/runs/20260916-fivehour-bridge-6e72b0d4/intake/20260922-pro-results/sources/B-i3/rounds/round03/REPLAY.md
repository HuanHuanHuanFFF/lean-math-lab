# REPLAY — PHASE1024

## 标准重放

在解压后的包根目录运行（输出路径必须不存在）：

    python3 src/replay.py --output-dir /tmp/b699-phase-replay-new

仅用Python标准库，验证统一证书、168个h证书的两算法结果、17个旧NS64方向检查和7类坏证书。
不能把这些有限输入看作无限定理或密度证明；完整数学在PROOFS.md。

## 连同生成器独立再生成

需要安装SymPy；本次生成器版本见 outputs/environment.json。

    python3 src/replay.py --output-dir /tmp/b699-phase-regen-new --regenerate

再生成 uniform_phase.json，要求和冻结证书字节完全一致。

## 单个 h 的可执行入口

    python3 src/classify_h.py 67861
    python3 src/classify_h.py 1033 --certificate /tmp/h1033-certificate-new.json

只接受奇整数h>1024。不需要分解h，不需要Q,n,j。两个不同算法必须一致。
chi=1 表示该h下所有满足定理前提的真实输入由原q排除；chi=0不是NC3证书。
脚本不会覆盖已存在的证书文件。

## 文件完整性

在包根目录，可用

    sha256sum -c SHA256SUMS

SHA256SUMS覆盖除它自己以外的全部普通交付文件；MANIFEST.json另列路径、大小和哈希。
ZIP成员路径均为相对路径，不含父目录穿越；已做解压完整性测试。

## 算法独立性与依赖

- phase_a.py：在原辅助三次的 y 坐标中做二进有理隔离，直接计算两个二次函数的端点floor。
- phase_b.py：不读取A的区间，不用Fraction，不导入A；在两个消元三次中按整数符号求大正根floor。
- check_uniform.py：不导入SymPy；整数稀疏多项式乘法核对消元，二项式移位核对正性，Laurent恒等式核对根展开。
- generate_uniform.py：生成器才使用SymPy，检查器不信任其“PASS”声明。

本轮没有证明这些脚本等于Lean核验；原题接口与数学推导仍属于作者纸面证明。

## 可选：扰动方程的反证探针

    python3 src/check_perturbed_shells.py --output /tmp/b699-shell-probes-new.json

这些是精确实代数外壳，不是原整数输入。用于检测取整符号/归一化错误，不能给原题反例。
