# B686 外部证明的逐项数学审核

检查日：2026-09-08 UTC。作者／源码：Will Blair，MIT，`williamjblair/lean-proofs`，提交 `aff1d30b3b1c6bd705810fa4d588b03940fb31df`。后续历史检到 `ef1e54b`，通过 `git show`／`git diff` 检查；没有把后续 claim 自动继承为 Lean 验收。

本文是数学及 statement 审核；实际编译状态以 `b686-verify/findings.md` 为准。

## 1. 通用偶数尾部：可节省已有路线的形式化工作

原文 `ErdosProblems/Erdos686EvenTailSupply.lean`，命名空间 `Erdos686.Erdos686Variant`：

```lean
theorem no_even_tail_solution_universal
    {r n d : ℕ} (hr : 2 ≤ r)
    (hd : max (2 * r)
      (universalEvenTailCoefficientCertificate r hr).threshold ≤ d) :
    blockProduct (2 * r) (n + d) ≠ 4 * blockProduct (2 * r) n
```

`blockProduct` 使用 `Icc 1 k`，与本库 `P_k(t)` 一致；`m=n+d`、`d≥k` 恢复不重叠条件。这里覆盖每个偶数 `k≥4` 的全部 `n` 与足够大 `d`；`k=2` 必须另用已有定理。阈值依赖 `r`，没有把 `∀r ∃M_r` 偷换成 `∃M ∀r`。

已独立核读三个核心文件：`EvenTailSupply`、`EvenTailCoefficientCertificate`、`EvenTailRunge` 的构造和终结器，数学链如下。

1. 对任意有理首一 `S`，次数 `2r`，从 `Q=X^r` 开始，按 `j=r−1,...,0` 依次加 `−coeff(Q²−S,r+j)/2 * X^j`。交叉项的次数正好是 `r+j`，平方修正次数 `2j<r+j`，因此不会破坏已取消的高次系数。得到首一次数 `r` 的 `Q` 与 `deg(Q²−S)<r`。
2. 对中心多项式 `S_r(X)=∏_{i=1}^{2r}(X+2i−2r−1)`，`X=1` 是单根。任何非零常数倍平方不可能拥有单根；因此清分母后 `D=T²−C²S_r` 非零且次数 `q<r`。
3. 设 `A` 为 `T` 的非首项系数绝对值和，`E` 为 `D` 全部系数绝对值和，`F` 为 `D` 非首项系数绝对值和。源码使用
   `M=max(2r,2|A|+1,7|F|+1,10|E|+1)`。
   `universalEvenTailCoefficientCertificate` 通过 `Classical.choose` 和有理系数清分母构造这个有限数据。因此它是按有限系数定义的阈值；不能声称这是可直接 `#eval` 的程序或低成本闭式阈值。
4. 对原解中心 `v=2n+2r+1`、`w=v+2d`，`S_r(w)=4S_r(v)`。已证明的窗口保证 `d≤v`，并给 `w^q<3v^q`。若 `d≥M`，系数范数控制给 `T(v),T(w)>0`，以及
   `|D(w)−4D(v)|<T(w)+2T(v)` 和 `|D(w)|<4|D(v)|`。
5. 整数因式分解
   `(T(w)−2T(v))(T(w)+2T(v))=D(w)−4D(v)`
   迫使第一因子为零，于是 `D(w)=4D(v)`，与后一严格不等式矛盾。非零余项通过单根证明，未暗中假设它。

**义务连接：**原题假设 → 本库中心化／两尺度思路 → 外部要求仅 `r≥2`、`d≥M_r` → 全偶数尾部排除 → 仍须处理 `2r≤d<M_r`，并跨所有 `r` 统一结束；奇数长度不在此结论内。

对本库 `formalization-feasibility/README.md` 列出的“任意阶有限平方根构造／分母／非零余项／整数终结器”有直接接口价值。它不证明本库更强的显式 `n<16·2^(4k)·k^(k/2+1)`，也不证明 `k=4s` 的割线积分界。不能用外部尾部阈值替换那两条声明后仍宣称原声明已形式化。

## 2. 从原方程实际构造 canonical owner 系统

外部 `Erdos686CanonicalOwnerMatrix.lean: exists_canonicalOwnerSystem` 声明在 `k≥4,d≥k,P_k(n+d)=4P_k(n)` 下构造 `t∈[1,k]`、矩阵 `C_{ji}`、下／上残余 `a_j,b_i` 与 `G`。本节核对 statement 和构造路线，不代表该大型 provider 已通过本次 Lean 复验。其声明满足：

- `G | (k−1)!`；`∏a_j=∏b_i=G`；
- `n+j=a_j∏_i C_{ji}`；`n+d+i=(if i=t then 4 else 1)b_i∏_j C_{ji}`；
- `C_{ji}|d+i−j`；不同格两两互素；`G∏_{ji}C_{ji}=P_k(n)`。

先把上块一个含完整最大二进赋值的项除以 4，再对各素数选上下最大赋值位置，把公共可保留赋值放入其唯一矩阵格。各素数只进一格，得到格间互素；剩余乘积用阶乘估计控制。二进素数的分离在 `CanonicalOwnerCleaning` 中显式处理，不可省略那个 distinguished column。

这是 `原解→真实结构` 的单向必要条件，价值高于“给定某个矩阵”的条件终结器。**仍缺**从这个系统推出本库所需的低高度、足够多且在正整数原解处不同时消失的辅助多项式。它不会自己提供 small cofactor、非零性或 uniform contradiction。

## 3. 严格更强的距离约束，优先级次于通用构造

外部 `Erdos686CenterComponentLogStrip.lean: no_four_solution_of_quadratic_strip` 精确要求 `k≥16,d≥k,18d≤k²`，声明推出原乘积不等。若该证明闭包复验成功，可用原解在 `k≥16` 时的 `k²<18d`；本次未完成该原版 Lean 复验。本库已接受的是较短移植的 `k²<64d`，外部18也并非本次首次发现。

核心是最大赋值匹配压缩 `P_k(n)|(k−1)!·LCM(d−k+1,...,d+k−1)`、区间 `m!L|B·LCM(1,...,m)`、`LCM(1,...,m)≤4^m`、精确原方程比例窗口与阶乘尾部下界。该目标依赖锥没有数学上需要 MRSTT 的部分。

义务连接：原题 → 已有64界和匹配LCM → 外部18界 → 排除 `k²/64<d≤k²/18` → `k,d` 仍无界。没有配套上界时，它不是完整结束桥。

## 4. 已核失败与后续历史边界

- `FinalResidual686Hypothesis` 是公开保留的未解剩余命题；`erdos686_false_of_finalResidual(hres)` 不能算完整证明。其包装等价于奇数大尾部和大长度 smooth 分支，不因声明的公理列表干净而去掉 `hres`。
- 偶数 Runge 阈值与18距离带不重合。原报告以 `k=34,d=65` 的尺度／系数证书展示阈值远大于距离带；这反驳这条拼接方法，不反驳原题。
- `d<10^1000` 的 Farey 证书仍是有限范围。`d=10^1000` 属于未覆盖尾部；不根据规模把它升级为无限定理。
- genus-2 的 `RationalPointsGenus2` 明示 `proved_all=false`，已知点和 Mordell–Weil 基不等于全部有理点穷尽。
- 后续 `ef1e54b` 历史增加高素数 support 投影、osculation 商非零／次数桥、匹配质量和 secant/cycle 约束。但报告仍指出 bounded span、足够高度／非零族、diffuse cycle stability 等缺口。没有找到可取代本库真实全局桥的最终定理；不把23k行新形式化量当成全题推进量。

## 5. 检索到的另一个错误“形式化”宣称

`AEjonanonymous/Singmasters-Conjecture`，提交 `4284d2fcd31d94c5a5f1d283f560e64aaddcadc0`，`SingmastersConjecture.lean` 只有一系列集合与命题的 `def`，没有证明这些阶段等价或蕴含的 theorem/lemma。末端 `singmasterConjectureBound` 定义的是统一限制所有参数坐标的命题，甚至为假：取任意大 `n`、`k=2`、`t=n(n−1)/2`，满足 `solutionSetSeparated t` 而 `n` 无统一上界。Singmaster 原猜想限制表示次数，并不限制随 `t` 增长的 `n`。

该代码不含 MRSTT Proposition1.13(ii) 的素数加权二维平滑采样估计，不能补本库 prime synchronization 分析层。无需把这份仅有定义的文件编译成绿色来决定其不可用。
