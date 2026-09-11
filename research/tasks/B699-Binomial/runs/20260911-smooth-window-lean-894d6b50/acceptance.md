# Lean接受记录

## 已验完整子族

统一入口lean/Main.lean的四条声明均编译退出0，独立导入审计退出0，仅允许propext、Classical.choice、Quot.sound。该文件SHA256：c725f6e17bd420d307ca5d2df0533372bfbaca1386bbf8af072ac75306d5fe09。

- smooth_window_i4：所有a,b,r∈ℕ、r≤3、5≤j≤(2^a3^b+r)/2，存在同一素数p≥5整除两个实际二项式系数。
- smooth_window_simultaneous：增加m≥4和n≡4 mod primeProduct m，存在同一p>m同时整除C(n,j)和全部4≤i≤m、i<j的C(n,i)。
- smooth_window_sixty：k≥1，n=2^(60k+2)，同一p≥17处理所有合法4≤i≤14。
- smooth_window_factorial：m≥5、k≥1，n=2^(m!k+2)，同一p>m处理所有合法4≤i≤m。

## 已验前置与具体证书

下表每条记录均绑定具体源码SHA256、真实命令、退出码、整树观测RSS、编译日志和独立传递公理日志。

| 模块 | 公开定理数 | 验收记录 |
|---|---:|---|
| ActualCoefficients | 11 | [记录](verification/latest-ActualCoefficients.json) |
| AxisPrimary | 4 | [记录](verification/latest-AxisPrimary.json) |
| AxisThresholds | 6 | [记录](verification/latest-AxisThresholds.json) |
| Congruence | 9 | [记录](verification/latest-Congruence.json) |
| ExplicitFamilies | 6 | [记录](verification/latest-ExplicitFamilies.json) |
| FiniteBounds00 | 48 | [记录](verification/latest-FiniteBounds00.json) |
| FiniteBounds01 | 48 | [记录](verification/latest-FiniteBounds01.json) |
| FiniteBounds02 | 48 | [记录](verification/latest-FiniteBounds02.json) |
| FiniteBounds03 | 48 | [记录](verification/latest-FiniteBounds03.json) |
| FiniteBounds04 | 48 | [记录](verification/latest-FiniteBounds04.json) |
| FiniteBounds05 | 48 | [记录](verification/latest-FiniteBounds05.json) |
| FiniteBounds06 | 48 | [记录](verification/latest-FiniteBounds06.json) |
| FiniteBounds07 | 48 | [记录](verification/latest-FiniteBounds07.json) |
| FiniteBounds08 | 25 | [记录](verification/latest-FiniteBounds08.json) |
| FiniteCRT | 58 | [记录](verification/latest-FiniteCRT.json) |
| FiniteChecker | 4 | [记录](verification/latest-FiniteChecker.json) |
| FiniteCoverage | 46 | [记录](verification/latest-FiniteCoverage.json) |
| InfiniteTail | 3 | [记录](verification/latest-InfiniteTail.json) |
| Main | 4 | [记录](verification/latest-Main.json) |
| NecessaryBounds | 4 | [记录](verification/latest-NecessaryBounds.json) |
| NecessaryW | 4 | [记录](verification/latest-NecessaryW.json) |
| NeighborBounds | 7 | [记录](verification/latest-NeighborBounds.json) |
| PowerNeighbors | 5 | [记录](verification/latest-PowerNeighbors.json) |
| QuarticAlgebra | 9 | [记录](verification/latest-QuarticAlgebra.json) |
| QuarticScaling | 3 | [记录](verification/latest-QuarticScaling.json) |
| SmallPart | 9 | [记录](verification/latest-SmallPart.json) |
| SmoothCollision | 4 | [记录](verification/latest-SmoothCollision.json) |
| TailArithmetic | 3 | [记录](verification/latest-TailArithmetic.json) |
| Transfer | 4 | [记录](verification/latest-Transfer.json) |
| WindowPrimary | 6 | [记录](verification/latest-WindowPrimary.json) |

FiniteCoverage先前的一次整体归约触及-M 3072上限；最终改为纯数字表加已证映射，并按a拆成40个内核计算块，编译和审计均退出0。未提升内存上限，未调用原生判定。

## 未完成义务

指定子族与其所有采用前置均无未证义务。全新CI检出复核正在运行；不得将早期bootstrap仅检三模块的CI范围误读成最终全部模块的复核。
R9全域保持不变，Leader尚未整合。未声称人工同行评审或新的全域指标闭合。

B699: accept full smooth window and all simultaneous consumers; enable full clean CI
