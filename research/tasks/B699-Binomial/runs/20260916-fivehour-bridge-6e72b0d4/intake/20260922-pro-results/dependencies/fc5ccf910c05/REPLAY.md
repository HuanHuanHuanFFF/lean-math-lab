# REPLAY

## 环境

* Python 3；
* `sympy==1.14.0` 仅用于显式恒等式重放；
* 其余证书生成与核验只用标准库；
* 不需要网络、仓库或随机数。

## 完整重放

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

`replay.sh` 将：

1. 重放多项式恒等式；
2. 在临时目录重新生成四份证书；
3. 要求新证书与交付证书逐字节一致；
4. 重新枚举全部 `rho=8,...,11` 基础 CRT 类；
5. 逐项重算辅助素数下的平方目标和 Legendre 符号；
6. 检查旧 `q=32` 行和 2-adic 失败壳。

## 定向入口

```bash
# q=32 的全部形式乘子
python3 -B evidence/power_gate.py --q 32

# Hensel 根
python3 -B evidence/power_gate.py --theta-rho 12

# 最难的双素数证书类
python3 -B evidence/layer_gate.py --rho 11 --multiplier 16573
```

所有输出都是必要核心诊断；`CANDIDATE` 不反推 `NC3`。
