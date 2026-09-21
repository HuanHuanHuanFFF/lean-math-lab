# REPLAY — C3

## 依赖与命令

Python 3.10或更高版本，核心重放只使用标准库。在本目录执行：

```bash
python3 -B code/verify_hashes.py
python3 -B code/replay.py
python3 -B code/verify_hashes.py
```

`-B`避免生成不属于证据的__pycache__。哈希检查另外排除__pycache__，但发布包本身不包含它。重放只重写本包outputs中的确定性证书；不触碰来源或仓库。

## 核心检查与准确语义

1. `algebra_certificate.json`：7条整数多项式身份逐系数为零；3个严格界在T=3+X后全部系数正。
2. `unit_carry_certificate.json`：3在mod5/mod16的周期均为4；完整16个h,d类与每个类全部g,c,b模16状态。只剩(2,1),(2,3)。这是UC80内部完备分类，不是原n的扫描。
3. `norm_order_certificate.json`：准确恢复历史a132/z1输入，结合纸面ORD标记原阶指定类阶264；检查其完整q2…q5失败以及真实素数7估值。另4个命名(n,a)输出EMPTY，仅表明它们没有所述真实第一源/W10恢复。
4. `norm_regression.json`：165个D,a参数的小范围算法回归，与直接正整数范数枚举比较。仅检查实现，不证明一般空域。
5. `b5_original_input.json`：一个真实B尾/W10双块输入，准确第一源缺额和共同素数541；不声称为全历史净新增。
6. `weak_modular_family.json`：F3精确公式的种子检查和周期，原输入合法但实际进位为0，不是形式单位进位1，第一源失败。三个种子不代替整族纸面证明。
7. `replay_summary.json`：应输出PASS，同时明确frontier_reduction=0、无统一绝对界、无原题有限末端。

## 发现探针：不属于正向终点

`probe_bl5.py`与`probe_global_norm.py`保留当时的有限否证探针及原始outputs，核心重放不重复运行。它们含运行耗时而非确定性数学证书。不要以其零发现、检查次数或延长范围作为B5或一般RES10证明。

## 手动调用固定参数入口

```python
import sys
sys.path.insert(0, 'code')
from norm_order import recover
from source_interface import assess

r = recover(190 * 3**103, 103)
print(r['status'])  # EMPTY
# 对CANDIDATE_NOT_NC，继续使用同一恢复的n,j：
if r['status'] == 'CANDIDATE_NOT_NC':
    print(assess(r['n'], r['j']))
```

EMPTY仅对应这个固定(n,a)；CANDIDATE以及所有源测试通过都不是NC6。完整原高层、q5槽、强残量和其他前沿约束仍需保留。
