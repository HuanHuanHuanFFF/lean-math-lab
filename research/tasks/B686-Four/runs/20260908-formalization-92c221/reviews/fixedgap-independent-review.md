# 固定间隙有效有限界独立审查

结论：冻结的 `FixedGap.lean` 保留了已采用纸面结论的全部量词与精确 `B(h)`，没有发现实质数学问题、范围缩水或隐藏的外部计数前提。本审查只读源码并核对已有完整 fresh 验收，没有修改或重新编译被审源码。

## 原命题与精确常数

`original_fixed_gap_bounds` 对任意自然数 `h,k,n`，从 `2≤k` 与原积等式 `P_k(n+k+h)=4P_k(n)` 直接证明

```text
2k+h ≤ B(h),    k ≤ (B(h)-h)/2,    n < B(h)^2,
B(h) = max(293, max(h+8, Nat.nth Nat.Prime ((4h+7)/3) - 1)).
```

纸面采用的一基素数 `p_(s+1)` 与此处零基 `Nat.nth Nat.Prime s` 对应正确，其中 `s=floor((4h+7)/3)`。代码保留 `h+8` 与 `293`，没有把一个较弱且不同的函数替代原 `B(h)`。自然数除法、减法的位置也相同。

## 初等素数下界

`prime_triple_gap` 从三个严格递增且大于 3 的素数推出首尾间隔至少 6。若间隔小于 6，三者为奇数便迫使它们为 `a,a+2,a+4`；`a` 不被 3 整除，所以其余两个之一被 3 整除，与其为大于 3 的素数矛盾。没有假设这三个素数在完整素数序列中相邻；定理在更一般情形成立。

`three_mul_index_le_nth_prime` 用两步强归纳：`j≤3` 的四个基例分别使用真实素数 2、3、5、7；`j≥4` 时索引 `j-2,j-1,j` 严格递增，首项大于 3，故每前进两个索引至少增加 6。得到对所有自然索引 `j` 的 `3j≤p_j+2`。素数无穷性和 nth 单调性由固定 mathlib 提供。

对 `s=(4h+7)/3`，自然数除法余数至多 2，故 `3s≥4h+5`。于是 `p_s≥4h+3`，从而自然数减法的 `p_s-1≥4h+2` 不发生错误截断。最终 `B(h)≥max(293,4h+2)` 对全部 `h≥0` 成立。

## 跨度归约与起点界

全长距离消费者提供 `k²<64(k+h)`，其公开前提只有原积等式、`k≥2` 和自动成立的分离条件。它不要求 `k≥64`。

设反面 `B<2k+h`。由 `B≥4h+2` 得 `3h+3≤2k`，由 `B≥293` 得 `294≤2k+h`，所以 `885≤8k`，即整数 `k≥111`。同时

```text
3k² < 192k+192h ≤ 320k-192,
3k² ≥ 333k,
```

矛盾。这核对了 `span_le_of_distance` 中 `omega` 提取的门槛和 `nlinarith` 的乘积方向，适用于全部自然 `k,h,B`。

旧 `GapBounds.start_bound` 将正乘积比写为 `1/4`，并用每个正因子的下界和 Bernoulli 不等式得到 `3(n+d+1)≤4kd`。其中分母正性、比值乘积与原等式的转换均已提供。再用 `4kd≤(k+d)²` 和 `d>0` 得 `n+1<(k+d)²`。此处 `d=k+h>0`，结合 `2k+h≤B` 便得严格 `n<B²`。`k≤(B-h)/2` 由同一跨度界推出，故除法前的自然数减法有正确的非截断保证。

## 全固定 h 解集的有限性

`fixed_gap_solutions_finite h` 的元素为右结合三元组 `(k,n,m)`，谓词保留 `k≥2`、`m=n+k+h` 和原积等式。`h` 任意但在集合中固定，不额外固定 `k` 或两个起点。

每个原解由已证跨度界得到 `k≤B` 和 `k+h≤B`，由起点界得到 `n≤B²`，再由 `m=n+k+h` 得 `m≤B²+B`。因此整个解集包含于三个有限自然数初段的笛卡尔积；这是真的全解三元组有限性，没有把逐个 `k` 的有限性误作无界并集的有限性。

## 验收对应关系

已有完整证据：`verification/20260908T120826Z/evidence.json`。
证据 SHA-256：`5c424bcd564c4cf957ec5e216aaea67dc61b15acffafc2938a52ab6289cb0509`。

独立核对：13 个项目源码 SHA 均与当前冻结文件一致，13 次编译退出码全部为 0，13 份原始日志 SHA 全部吻合，最终 3 个声明 guard 只允许 `propext`、`Classical.choice`、`Quot.sound` 并已成功执行。此次重点逐行阅读 `FixedGap.lean` 与完整 `GapBounds.lean`，复核旧全长距离接口；下表冻结的是完整验收依赖闭包，不表示此次重新逐行审查了所有旧距离底层证明。

| 源码（相对 B686-Four） | SHA-256 |
| --- | --- |
| `runs/20260908-lcm-distance-7cab35e/uniform/InitialLcm.lean` | `81d87e1c0cb3d7cabfa4d2b620c2f6c48f8442a26d462efae020acf05db8920f` |
| `runs/20260908-lcm-distance-7cab35e/uniform/FactorialTail.lean` | `ea37f4cc5df693d60d1edb41b5ebbd56fc08d876d1baa8289394f313cf5faae8` |
| `round8/lean/BigPrimeSupport.lean` | `cd3b1e0fd5282723597acaa2d5f3290917d9756a9e2c1d682668ac77a6b98d2e` |
| `formalization/UniformDistance/SmallPrime.lean` | `3d9140131479b10d35ccd87884381e225331b2b77c5c80ae211ab9fe19273a6f` |
| `independent/TargetBridge.lean` | `b26c40df78c176105d86d8d01789a927f2a3d9ba1855afde14120c38b2234c57` |
| `round8/continuation/SizeBounds.lean` | `7da4f63de39ca33f7817e4b8c5d208c293cbb6b34f6d128128826d0544ee01d1` |
| `runs/20260908-lcm-distance-7cab35e/main/MatchingLcm.lean` | `17cfb21891204df0eff8e4e6b33f9d25b4a4c2e462c524c1585aca9c8440ac37` |
| `runs/20260908-lcm-distance-7cab35e/uniform/LcmDistance.lean` | `8f3dc4e7d82e4e8ef123d12ac424c49054678a4283be05fa09a6657f2078e4e4` |
| `formalization/UniformDistance/Boundary.lean` | `324344c3d6b17ace5cc78289655324d70a6002c8c0bdfbb923b24b173a55ceac` |
| `runs/20260908-lcm-distance-7cab35e/uniform/UniformDistance.lean` | `608912bb95b94d5c6ddef7cb8bd382e788042c5753959bd68a7be471d0dd008e` |
| `runs/20260908-lcm-distance-7cab35e/uniform/Consumer.lean` | `1cdc896b7b204b6b417ae943a33ef01000db9bb032ddd44ac7c0d66c1340db62` |
| `independent/GapBounds.lean` | `e698dae0d2b0966d4b4b04cf8b76dbfa10903b4c16662bd9cddd8c8bf76bb7dc` |
| `runs/20260908-formalization-92c221/lean/shortgap/FixedGap.lean` | `aa6d16ec49d21a587d53369b5fdb8002aa5b77245cee611e475a16bb167951f6` |
