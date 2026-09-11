# B699 完整交付报告

本轮指定数学声明已全部通过真实Lean内核与std3传递公理审计。全新CI也已成功复核全部30模块；以下结论具备本机和CI完整证据。

## 已验前置

- 任意同一素数的二项式转移及严格p>i消去；已验n=16、i=p=5、j=7反例。
- 实际四次系数内容、I/J/W整数恒等式和齐次整除性、非退化性、I/W必要界。
- 完整2/3部分、最高幂窗口位置、全部轴分支与偏移、已证LTE邻居界、明确指数阈值。
- 467行：242条I、167条W、58条CRT；86个完整p^e约束，包含n=27的25。
- 完备生成：所有a<40、b<24、min(a,b)≤1、r≤3且n≥10均落在这些行中，按a分40个内核计算块验收。

## 已验完整子族

统一入口：`lean/Main.lean`。完整名称前缀均为`B699.SmoothWindow.`。`primeProduct m`是5≤p≤m全部素数的乘积；空积为1。以下为实际Lean声明，省略已编译的证明体：

```lean
theorem smooth_window_i4 (a b r j : ℕ) (hr : r ≤ 3)
    (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2) :
    ∃ p : ℕ, p.Prime ∧ 5 ≤ p ∧ p ∣ (2^a*3^b+r).choose 4 ∧
      p ∣ (2^a*3^b+r).choose j
```

```lean
theorem smooth_window_simultaneous (a b r m j : ℕ) (hr : r ≤ 3) (hm : 4 ≤ m)
    (hn : 2^a*3^b+r ≡ 4 [MOD primeProduct m])
    (hj : 5 ≤ j) (hjhalf : j ≤ (2^a*3^b+r)/2) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ (2^a*3^b+r).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ (2^a*3^b+r).choose i
```

```lean
theorem smooth_window_sixty (k j : ℕ) (hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(60*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ 17 ≤ p ∧ p ∣ (2^(60*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ 14 → i < j → p ∣ (2^(60*k+2)).choose i
```

```lean
theorem smooth_window_factorial (m k j : ℕ) (hm : 5 ≤ m) (hk : 1 ≤ k)
    (hj : 5 ≤ j) (hjhalf : j ≤ 2^(m.factorial*k+2)/2) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ∣ (2^(m.factorial*k+2)).choose j ∧
      ∀ i : ℕ, 4 ≤ i → i ≤ m → i < j → p ∣ (2^(m.factorial*k+2)).choose i
```

素数允许依赖行及j；每个存在量词位于全部i的全称量词之前。两条显式族还可独立从ExplicitFamilies导入，仅用模9与I界，无需有限证书。

## 内核、依赖与公理证据

- 数学源码提交：`e3e7d8389663e29fe0afc62da1b35eb60b9ebb9e`。
- Main.lean SHA256：`c725f6e17bd420d307ca5d2df0533372bfbaca1386bbf8af072ac75306d5fe09`。
- 采用main：`eaa8d5760117b0b1133424548a162d28e23cc361`。
- Lean v4.33.1，内核提交`819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。
- toolchain、manifest、lakefile的Git blob与采用main完全一致，详见verification/environment-current.json。
- 30个模块各有真实编译与独立导入审计，均退出0。四条最终定理的传递公理均恰为`[propext, Classical.choice, Quot.sound]`。无额外公理、未证前置或被禁止的原生判定。
- 本机最终入口编译约9.52秒、独立审计约8.51秒。所有接受版本的这两类命令合计约598.6秒，非全部开发耗时；Python原包复现不计Lean验收。
- 20GiB/8CPU环境，接受版本整树RSS观测最大约3.64GiB；峰值是采样测量。源码、对象及原始日志在本机落盘，source-lock.json记录所有对象存在性。

完整重现命令（仓库根目录）：

```bash
python3 research/tasks/B699-Binomial/runs/20260911-smooth-window-lean-894d6b50/verification/runner/compile_all.py
```

底层逐模块运行`bash scripts/lean-work.sh lake env lean -M 3072 -o <对象> <源码>`，再编译独立Audit.lean。原始命令、退出码、资源和#print axioms输出见verification/latest-*.json指向的时间戳目录。

## 全新CI复核

[CI run 34580160487](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/34580160487)，job 103201607170，结果success。全部30模块重新编译并独立导入审计，所有命令退出0，全部数学源码SHA256与本机匹配。编译加审计约255.62秒，整树RSS观测峰值约3.49GiB。

原始证据：`verification/ci-34580160487/summary.json`、`current/all-modules.json`、`job.log`及各CI latest记录指向的原始时间戳目录。原始artifact ID 10191453404，SHA256 `68dad034c33d89118e4e5dd4464836fcf46b10a9aff32a11dc654d3ab4db6833`，已对下载字节核对，相关原始记录持久归档。最终证据/文档提交不改变已验数学源码。

## 未完成义务

指定的光滑窗口、通用转移及两条显式行族无剩余未证数学义务。全部30模块的全新CI复核已完成，全部命令退出0。
原题全域R9={3,4,5,6,7,8,9,10,14}不减少，没有登记任何全域指标闭合。只发布任务分支`GPT-work/b699-smooth-window-lean-20260911-894d6b50`，由Leader后续整合。

## 供huan使用的最小入口

```lean
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.Main
```

若仅需显式族，将最后一段改为`ExplicitFamilies`，使用`B699.SmoothWindow.simultaneous_sixty_family`和`B699.SmoothWindow.simultaneous_factorial_family`。
分步提交与准确接受记录保留在任务分支；[acceptance.md](acceptance.md)提供全部模块映射，[notes/mathematical-review.md](notes/mathematical-review.md)解释数学替代路线与边界核对。
