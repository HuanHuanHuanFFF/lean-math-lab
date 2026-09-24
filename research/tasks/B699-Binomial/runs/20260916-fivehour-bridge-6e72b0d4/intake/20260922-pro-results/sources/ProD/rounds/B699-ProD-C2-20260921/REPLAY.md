# REPLAY — C2 / B699 Pro D

## 环境与入口

建议 Python 3.10 或更高版本；本轮实际执行环境为 CPython 3.13.5。核心程序只用标准库。

从解压后的包根目录执行：

```bash
python3 -B code/verify_hashes.py
python3 -B code/replay.py
python3 -B code/verify_hashes.py
```

`-B` 避免生成 __pycache__。重放会重新写入确定性的 `outputs/replay.json` 与 `outputs/seed_original_input.json`，预期字节与交付副本一致；不改来源和其他文档。字节校验脚本不作数学检查。

## 实际检查范围

- 6 条整数多项式系数身份。
- 4 条整系数 Bézout 身份，常数71、1906、215、4。
- TC7 小参数实现回归26,256条，覆盖低平方、过渡平方、无溢出高平方、靠顶恢复四类。
- BL6 小参数实现回归90,072条，含 m6/r4 的5,004条边界记录。
- 比较族 u0/u1 的真实 gcd、合法区间、尾类、位数、DEN±、完整7层、第一源和旧 CENTER 等条件。未以两项样本证明无界族；无界族证明在 PROOFS §5。
- 偶基数与旧 B³ 反模型的若干精确展示项；无界反模型的代数证明见 PROOFS / FAILURES。
- C1 已有 a132 范数模型的一条身份复核，不重跑旧发现程序。
- 种子的共同素数53使用完整阶乘估值公式直接核对原 C(n,4/5/6/j)。

**不检查/不声称：** 不穷尽原 n/j，不证明一般候选必被 TC7/BL6 命中，不运行 LROW，不完成原题有限末端，不验证全部历史消费者净差，不运行 Lean。

## 程序接口示例

```python
import sys
sys.path.insert(0, 'code')
from two_cluster import family, certify_tc7, certify_bl6

row = family(0)
cert1 = certify_tc7(row['n'], row['j'], row['h'], 4*row['h'])
cert2 = certify_bl6(row['n'], row['j'], row['T'], 7)
print(cert1['status'])
print(cert2['source_deficit'] > 1)
```

`side='gamma'` 时仍使用原 j，只选择同一分量 γ 的数字表示。输入不满足作用域或精确表示时抛出 ValueError。接口返回完整第一源缺额块，未对其因子分解；没有把一个合数叫作素数。

示例族不是当前 NC6 模型：第一源失败，检查到的种子触发旧 CENTER，且 W10/全近侧失败。

## 预期摘要

```text
status = PASS
coefficient_identities = 6
bezout_constants = [71, 1906, 215, 4]
TC7_cases = 26256
BL6_cases = 90072
certified_net_frontier_reduction = 0
```

完整输出在 outputs/replay.json。有限回归用于核对代码与证明分支，纸面无限证明不依赖回归的零发现。
