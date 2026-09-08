# B699 双余因子判据：独立数学与 Lean 审阅

审阅者：`/root/b699_fresh_review`，新上下文 AI 审阅；不是人类同行评审或另一套内核的认证。

- 只写本文件；原始 `ORIGINAL_WORKSPACE` 工作区保持只读；不提交、不推送、不联系第三方。
- 首次已记录时钟：2026-09-08 05:35:59 Asia/Shanghai；本次验收截止记录：05:41:46。纸面检查要求 05:45，稳定代码检查要求 05:50；均在用户规定的本轮 06:10 停止时间内。
- 输入：原始 B699 自然数声明、独立探索者的 [constraints.md](../explorer/constraints.md)、[HANDOFF.md](../explorer/HANDOFF.md)、[valuation-audit.json](../explorer/valuation-audit.json) 和指定 Lean 快照。未读取作者调试日志或证明生成对话。
- 所有检查以 `WORKTREE` 为显式工作目录，经获授权的 `require_escalated` 执行。临时环境由项目脚本置于 D:；审阅未安装或下载依赖。

## 结论与状态

**接受所述条件定理的数学正确性、与锁定声明的条件式对应，以及下列确切稳定源码的 Lean 验收。没有阻断性意见。**

| 维度 | 结论 |
| --- | --- |
| 纸面证明 | 算术障碍与 Kummer 桥接成立 |
| Lean 证明 | 稳定源码独立复编译通过；五个精确传递公理 guards 通过 |
| 源声明对应 | 在额外双余因子条件下得到原目标的 `∃ prime ≥ i, prime ∣ gcd` 结论 |
| 完整 B699 | 未解决；条件以外的 n、i 仍无界，没有归约为有限检验 |
| 新颖性 | 未判定；本审阅未进行新颖性优先权认定 |
| 外部验收/发表 | 不在本审阅授权或验收范围；本记录不构成平台接受、CI 或出版证据 |

早期源码头部仍称桥接没有形式化，已向主任务指出。稳定版本修正文案，五个定理的声明和证明在去除注释、空白后逐一与原已编译快照相同。此项已解决。

## 锁定目标与参数对应

原始目标是：对所有自然数 `n,i,j`，若 `1 ≤ i < j ≤ floor(n/2)`，存在素数 `r ≥ i` 同时整除 `choose(n,i)` 和 `choose(n,j)`，等价于整除二者 gcd。

已读取固定原始声明 [699-base.lean](../../../../../shared/20260908-environment-publication-f0a6539/platform-20260908/699-base.lean)，其结论确为 `∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (Nat.choose n i) (Nat.choose n j)`。该文件的原题占位证明不被本模块导入。源类型摘要是 `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217`；重建材料见 [source-reconstruction.json](../../../../../shared/20260908-environment-publication-f0a6539/platform-20260908/source-reconstruction.json)。本审阅核对了保存的类型，未再次独立重建整个平台源树。

[原始 Erdős–Szekeres 论文](https://users.renyi.hu/~p_erdos/1978-46.pdf) 的 Conjecture 1 / 式 (4) 是此目标的来源，后续式 (5) 讨论严格大于 i 的加强形式。网页 PDF 的数学 OCR 有损；截图接口失败。因此精确不等式的本次验收依据是用户给定目标及固定形式化源码，不声称完成原扫描件逐符号视觉核对。[Bergman 第 4 节，Lemma 5](https://arxiv.org/html/0806.0607) 提供 Kummer 进位准则的文献对应。

最终定理 `B699.common_large_prime_of_coprime_cofactors` 额外要求：

- `a,b : ℕ` 且 `a<i`、`b<i`；
- `p,q` 为素数且 `i<p`、`i<q`；
- `e,f ≥ 1`；
- `n = u*p^e+a = v*q^f+b`；
- `Nat.Coprime u v`，以及 `u*v*(a+b)<n`。

没有 `a≠b`、`p≠q` 或精确 p-adic 阶数假设。Lean 没有另写 `1≤i`，因为自然数 `a<i` 已推出它。纸面要求 `u,v>0`，Lean 中同样可由 `a,b<i<j≤n/2` 与分解等式推出；这不是遗漏假设。加法式分解也避免了自然数减法截断：这些条件确保 `n>a,b`，故与纸面的 `n-a=u*p^e` 等价。

## 数学核对

1. **低余数桥接。** 对 `k≤n` 和素数 p，若 `n mod p^e < k mod p^e`，则 k 与 n-k 在 p^e 处产生进位，故 p 整除 `choose(n,k)`。反过来，不整除推出每个正指数处 `k mod p^e≤n mod p^e`。这里没有把单一低余数条件误当成完整 Lucas 判据。
2. **第一二项式。** `a<i<p≤p^e` 且 `n=u*p^e+a` 给出 `n mod p^e=a<i=i mod p^e`，所以 p 整除 `choose(n,i)`；q 同理。这直接使用已证明的单进位引理，不依赖未形式化的阶数相等断言。
3. **商的范围。** 若 p、q 都不整除第二二项式，写 `j=rP+c=sQ+d`，其中 `c≤a`、`d≤b`。由 `2j≤n` 和 `a,b<j` 得 `j<n-a=uP`、`j<n-b=vQ`，进而 `r<u`、`s<v`。奇数 n 的 `floor(n/2)` 和所有端点都满足这一步。
4. **整数夹逼。** 代入分解得到

   `n*(v*r-u*s)=u*v*(d-c)+v*r*a-u*s*b`。

   正负两侧的非负误差项分别不超过 `u*v*(a+b)`。由于此界严格小于 n，左边只能为零。Lean 使用等价的自然数等式与大小三分法，未依赖自然数减法模拟有符号差。
5. **互素消去。** `v*r=u*s` 与 `gcd(u,v)=1` 推出 `u∣r`，再用 `r<u` 得 r=0。于是 `j=c≤a<i<j` 矛盾。无需 P、Q 互素，也无需 p、q 不同。
6. **最终结论。** `cofactor_prime_pair` 真正证明 p 或 q 同时整除两个二项式；最后用 `Nat.dvd_gcd` 且 `i<p/q` 推出原目标所需的弱阈值。不是把所需公因子存在性放进自定义前提。

纸面中附带的简化分母约束也与主目标相容：反例的约分分母之素因子只能保证 `≤i`，不能擅自改成 `<i`。这个附带路线没有被本 Lean 模块声称形式化。

## Kummer 的具体适用性

读取了固定 mathlib 的 `Mathlib/Data/Nat/Choose/Factorization.lean`。实际引理

`Nat.factorization_choose hp hk hbound`

把阶数表示为 `Ico 1 B` 中满足 `p^t ≤ k % p^t + (n-k) % p^t` 的指数数量；要求素性、`k≤n` 及 `Nat.log p n<B`。

本实现选 `B = Nat.log p n + e + 1`。`e≥1` 确保 e 位于该半开区间，B 也严格超过 log。大于 n 的无效指数不会产生进位；允许一个较大上界不会添加错误贡献。`hk` 在使用 n-k 前明确提供。由正阶数到整除使用 `Nat.dvd_of_factorization_pos`；没有零二项式、e=0 或 p=0/1 的例外被偷偷利用。

## 独立有限检查与非空性

审阅者未调用探索者的数位或阶数实现；使用 Python 标准库 `math.comb`、`math.gcd`、试除素性及逐次整除计算实际阶数。

对 `0≤n≤50`、所有 `0≤k≤n`、全部素数 `p≤53`，直接验证

`v_p(comb(n,k)) = sum_{t≥1} [k mod p^t > n mod p^t]`。

共 **21,216** 个组合通过。求和到 `p^t>n` 即停，因为此后 k≤n 使指示量为零；n=0、k=0/n 也已包含。

另以直接二项式核对以下四组全部合法 j，共 **107** 个 j，无反例；所有列出的前提均先计算为真：

| 用途 | n,i | a,b | p,q | e,f | u,v | 合法 j 个数 |
| --- | --- | --- | --- | --- | --- | --- |
| 稳定 API 示例 | 86,8 | 0,1 | 43,17 | 1,1 | 2,5 | 35 |
| 同素数、同偏移 | 26,4 | 1,1 | 5,5 | 2,2 | 1,1 | 9 |
| e 非精确阶数 | 125,4 | 0,0 | 5,5 | 1,3 | 25,1 | 58 |
| 同偏移、异素数 | 15,2 | 0,0 | 3,5 | 1,1 | 5,3 | 5 |

这确认判据不是空前提，也实际允许所声称的退化参数。它们是声明检查，不能代替无限范围证明。

三个删假设诊断也独立复现，与 [valuation-audit.json](../explorer/valuation-audit.json) 一致：

| 删掉的假设 | n,i,j | 命名素数 p,q | choose(n,i), choose(n,j) | 实际 gcd |
| --- | --- | --- | --- | --- |
| 余因子互素 | 28,3,14 | 7,13 | 3276, 40116600 | 36 |
| 大小界 | 16,2,6 | 3,5 | 120, 8008 | 8 |
| 素数严格大于 i | 39,3,19 | 3,19 | 9139, 68923264410 | 481 |

每行中命名素数都不能同时整除两个二项式。特别地，最后一行有 `choose(39,3) mod 3=1` 和 `choose(39,19) mod 19=2`。这些反驳的是削弱后的命名素数对判据，不是 B699 反例；它们仍有满足原目标的其他公共素因子。

## 精确 Lean 验证记录

实际环境：`Lean 4.33.1`，`x86_64-w64-windows-gnu`，Lean commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。mathlib 实际 HEAD 与固定清单均为 `0df444a360eaa60ab8c11dca51a86af692955474`；Kummer 源文件无工作区修改，SHA256 `48856263ca178d5d02e48f64a9749ae3d84da502f5399095939bde5c48865e62`。

| 独立实际命令 | UTC 开始 | UTC 结束 | 结果 |
| --- | --- | --- | --- |
| `pwsh -File scripts/lake.ps1 env lean Math/B699/CofactorCriterion.lean` | 2026-09-07 21:38:40.4112624 | 21:38:52.5140409 | exit 0 |
| `pwsh -File scripts/lake.ps1 env lean Tests/B699CofactorCriterion.lean` | 2026-09-07 21:39:07.4923978 | 21:39:18.9239775 | exit 0 |
| `pwsh -File scripts/lake.ps1 env lean Examples/CofactorCriterion.lean` | 2026-09-07 21:41:03.3441092 | 21:41:16.9746606 | exit 0 |

五个 `#guard_msgs` 检查的准确传递公理集为：

| 声明 | 公理 |
| --- | --- |
| `B699.cofactor_core` | `propext`, `Quot.sound` |
| `B699.cofactor_remainder_obstruction` | `propext`, `Quot.sound` |
| `B699.prime_dvd_choose_of_mod_lt` | `propext`, `Classical.choice`, `Quot.sound` |
| `B699.cofactor_prime_pair` | `propext`, `Classical.choice`, `Quot.sound` |
| `B699.common_large_prime_of_coprime_cofactors` | `propext`, `Classical.choice`, `Quot.sound` |

占位证明/新公理静态检查无命中；可执行 guards 未出现 `sorryAx` 或项目自定义公理。没有依赖原题 `Erdos699.erdos_699` 或其占位 Sylvester–Schur 声明。标准 Lean 内核执行了审阅复编译；未另用独立实现的 proof checker。依赖已存在，本审阅不声称亲自完成其缓存恢复或源构建。

本审阅执行上述三个聚焦检查；整库 `scripts/verify.ps1` 由主任务单独协调，其结果不以审阅者亲自运行的名义重复认领。

### 本次接受的字节快照

- [稳定模块](../../../../../../Math/B699/CofactorCriterion.lean)：`341180b428b6927e72bd7de10c0ca03b3f8d4eb4f778c1aa4a3aeea4f33b9d79`
- [公理与边界测试](../../../../../../Tests/B699CofactorCriterion.lean)：`f282409e41d5b7ddadbb006f5aa7e717840fc50869014b7cdcd7ae61951f633b`
- [示例](../../../../../../Examples/CofactorCriterion.lean)：`de4dc0921be6c90756ebea76d38a55b1ff57f59cead06f703b1271dda3a7ec29`
- [历史原字节快照](../lean/CofactorCore.verified.lean.txt)：`3ac8e44b155d96c113ba712fa4d94d57b9947ebd9e64d9a13a0fb3f09c77a138`
- 五个定理声明和证明的去注释/空白比较全部相同；目录提升信息见 [promotion.json](../lean/promotion.json)。

## 交接与剩余任务

本次审阅新增的可靠结果是：一个非空、统一的双余因子充分条件已通过纸面、源码对应和固定工具链检查。它排除满足这些条件的全部合法 j，但不证明每个 n,i 都有这样的分解，不约束补集中的 n 或 i，也没有消去所有全局未知区域。

主任务可按本记录接受并包装该局部结果；后续若改变上述定理声明、证明或公理列表，应对新字节复检。下一项真正改变完整目标判断的工作是覆盖无此双余因子分解的区域，或产生原目标反例。新颖性文献检查、整库验证、分支提交/推送和平台接受应各自保留证据，不能从本次局部证明推得。

## 独立有限检查的复算片段

本次内存检查通过 `python -c $reviewProbe` 执行；下面保留等价的核心循环及所有输入，便于重新核对数字。只依赖 Python 标准库。

```python
import math

def prime(p):
    return p >= 2 and all(p % d for d in range(2, math.isqrt(p) + 1))

consumers = [
    (86, 8, 0, 1, 43, 17, 1, 1, 2, 5),
    (26, 4, 1, 1, 5, 5, 2, 2, 1, 1),
    (125, 4, 0, 0, 5, 5, 1, 3, 25, 1),
    (15, 2, 0, 0, 3, 5, 1, 1, 5, 3),
]
consumer_checks = 0
for n, i, a, b, p, q, e, f, u, v in consumers:
    assert a < i and b < i and prime(p) and prime(q)
    assert i < p and i < q and e >= 1 and f >= 1
    assert n == u * p**e + a == v * q**f + b
    assert math.gcd(u, v) == 1 and u * v * (a + b) < n
    for j in range(i + 1, n // 2 + 1):
        assert any(math.comb(n, i) % r == 0 and
                   math.comb(n, j) % r == 0 for r in (p, q))
        consumer_checks += 1
assert consumer_checks == 107

for n, i, j, p, q in [(28, 3, 14, 7, 13),
                      (16, 2, 6, 3, 5),
                      (39, 3, 19, 3, 19)]:
    ci, cj = math.comb(n, i), math.comb(n, j)
    assert all(not (ci % r == 0 and cj % r == 0) for r in (p, q))
    print(n, i, j, ci, cj, math.gcd(ci, cj))

kummer_checks = 0
for n in range(51):
    for k in range(n + 1):
        for p in [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53]:
            z, valuation = math.comb(n, k), 0
            while z % p == 0:
                valuation += 1
                z //= p
            P, residue_sum = p, 0
            while P <= n:
                residue_sum += int(k % P > n % P)
                P *= p
            assert valuation == residue_sum, (n, k, p)
            kummer_checks += 1
assert kummer_checks == 21216
print('pass', consumer_checks, kummer_checks)
```
