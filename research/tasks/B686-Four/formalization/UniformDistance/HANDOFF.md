# B686-UD 第八轮续段交接

源码冻结：2026-09-07 19:09 UTC。用户随后要求尽快收尾；停止新增证明和依赖构建，不延期。原30分钟预算为18:49:33至19:19:33 UTC，本代理在19:12检查点前交付记录和候选，最后验收状态以verification.json为准。

## 完整目标和当前距离

完整目标保持：自然数k,n,m，k≥2、n+k≤m、P_k(m)=4P_k(n)，推出k²<250000(m−n)。当前没有该完整根定理，不能将本证明包或有限素数证书称为原界完成。

本目录新完成的核心是对任意k≥1、n+k≤m的通用上界：

```text
gcd(P_k(m),P_k(n))
  ≤ (k−1)! (n+k)^[π(2k−1)] choose(m−n+k−1,2k−1).
```

它不要求乘积之比为4，包含完整大素数幂贡献及完整小素数部分，不再是只看素数支持或逐个素数的条件界。旧的完整p^a跨差定理被直接复用，没有重复证明。

## 可直接导入的接口

```lean
import research.tasks.«B686-Four».formalization.UniformDistance.GcdBound
```

- `B686UniformDistance.gcd_le_factorial_pow_choose`：上述完整通用gcd界。
- `gcd_le_factorial_pow_choose_card`：更精确的gcd小素数集合基数版本。
- `prime_part_le_factorial_pow`：任意选定gcd素因子子集的完整幂贡献由同一个阶乘和最大因子幂控制。
- `large_prime_part_dvd_choose`：所有p>2k−1的完整gcd贡献之积整除choose；`large_prime_power_dvd_choose`为逐完整幂接口。
- `small_prime_factorization_bound`：存在最大赋值位置j，使v_p(P_k(n))≤v_p((k−1)!)+v_p(n+j)。
- `distance_product_eq_factorials`：删j后距离乘积=(j−1)!(k−j)!。
- 另导入`Boundary`得到`uniform_distance_bound_small`，覆盖2≤k<250000；`rational_bound_of_nat_bound`、`displacement_cast`连接自然数和有理数题面。k=250000仍属于未闭合的大k分支。

## 证明要点与新路线状态

小素数证明用最大赋值位置j：每个i的完整p贡献都同时整除n+i和n+j，故整除|i−j|。删j后的距离乘积为(j−1)!(k−j)!，它整除(k−1)!。该局部路线现已内核实现，代替了未实现的逐p^r计数/Legendre方案。它是本次可复用的证明组织简化，不构成新颖性声明。

大素数证明把已验完整p^a跨差放入长度2k−1的升阶乘，利用p与(2k−1)!互素取消分母。全部大素数幂两两互素，因此乘积仍整除同一组合数。随后按照gcd的完整factorization拆分为小、大两部分，用primesLE的包含关系连接标准primeCounting。

## 验收入口与边界

```text
C:/Python314/python.exe research/tasks/B686-Four/formalization/UniformDistance/verify.py
```

验证器采用固定Lean4.33.1二进制，显式设置本地包路径并依次重编译Boundary、BigPrimeBinomial、SmallPrime、GcdBound，绕开并行依赖构建时Lake入口的等待。依赖版本未修改。原Lake编译和直接Lean编译均曾返回完整gcd根的标准三公理；最终冻结源码的可失败guard验收、实际exit code、精确命令及源码/日志SHA256统一保存在[verification.json](verification.json)。10个接受根均有严格公理guard，只允许propext、Classical.choice、Quot.sound。未使用独立外部内核检查器。

新构建的既有固定mathlib模块为Factorial.BigOperators、Prime.Factorial、Factorization.Basic、Nat.Dist，均成功，日志保留在本目录；PrimeCounting由主任务协调的另一代理构建，本目录没有重复构建。

## 已解决的失败与剩余工作

- 缺olean：本地缓存覆盖不足，已从固定源构建，未下载/替换依赖。
- `Finset.prod_dvd_of_coprime`不在当前导入中且目标是Nat.Coprime：改为简短自然数归纳接口`prod_dvd_of_pairwise_coprime`，已通过。
- `Nat.dvd_sub'`名称不存在、有限积整除需要显式函数参数：按固定源码接口修正，已通过。
- 对局部let变量g直接rw未匹配目标展开式：先显式change目标，已通过。这些都是API/展开诊断，不是数学反例。
- 仍未做：组合数的指数估计、Chebyshev/积分给加权π界、exp数值常数、原乘积等式到最终250000根声明的完整合并。原方程大小界和全局轮筛由主任务及其另一代理拥有，最终状态请看主任务记录，不由本目录推定。
- 下一项具体检查：在主任务的素数计数和大小界接口验收后，调用本目录完整gcd根；组合数估计可先检查`Real.pow_div_factorial_le_exp`与`Nat.choose_le_pow_div`的组合，从指数级数直接得到choose(N,Q)≤exp(Q)(N/Q)^Q，避免另做log阶乘积分。该简化目前只是未实施提示。

研究状态为已知结果形式化的可复用中间成果；完整距离证明未闭合；AI协作而无外部同行评审；新颖性未确认；未提交、推送或发布。本目录之外的冻结研究源码未改。