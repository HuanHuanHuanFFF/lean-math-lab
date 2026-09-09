# 一手来源、固定版本与实际读取记录

审计日期：2026-09-09。仅将实际读到的声明作为已核对来源；搜索摘要没有被当作 Lean 实现证据。

## S0. 任务固定参考：arithmetic-bound.md

仓库：HuanHuanHuanFFF/lean-math-lab。
固定 commit：`7fd3928656489afe2c80698f0a09d1d933444186`。

文件：
`research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md`

固定入口：
https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/7fd3928656489afe2c80698f0a09d1d933444186/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md

GitHub 返回的文件 blob SHA：`12c9cba63bfe41f0db11a94cd6a47d2b1fe61c60`。

实际读取：完整文件，通过 GitHub connector 成功取得。
相关位置：“Cancel the factorial before bounding anything” 的公式 (L)；“Dusart bootstrap contradicts that upper bound” 中的顶端素数归约应用。

读到的 (L) 与任务给定公式一致。源文件也明确把 i≥1,000,000 的结果标成依赖外部源定理的纸面证明，而非 Lean 已接受。本轮仅接受并使用 (L) 与顶端素数归约，不重做判别式，不重验旧 Lean。

没有把源文件中的全部证明复制进附件；固定版本与 blob 足以定位。

## S1. 指定 mathlib 中的 Chebyshev 上界——最终采用的计数来源

仓库：leanprover-community/mathlib4。
固定 commit：`0df444a360eaa60ab8c11dca51a86af692955474`。
文件：`Mathlib/NumberTheory/Chebyshev.lean`。
blob SHA：`6ffaf1bc3538b5a86fae7f4c62cc1287f9d48f2a`。

固定入口：
https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/NumberTheory/Chebyshev.lean

**实际声明：**

```lean
theorem theta_le_log4_mul_x {x : ℝ} (hx : 0 ≤ x) :
    θ x ≤ log 4 * x := by
```

完整名称：`Chebyshev.theta_le_log4_mul_x`。θ 是 `Chebyshev.theta` 的 scoped notation。

**精确范围：** 任意实数 x≥0；没有“足够大”或未给出的阈值。

**实际读取位置：** 文件头 1–100 行；含该定理的 150–240 行段；另读取 PrimeCounting 的相关段。

**证明体核对：** 使用 `theta_eq_log_primorial` 将 θ 写成 log(primorial(floor x))，再调用 `primorial_le_four_pow`、log 单调性、log_pow 与 floor_le。没有调用 Dusart 或 PNT。相关证明体已阅读；本轮未执行 `#print axioms` 或独立构建，因此这是固定源码核验，不是新一轮 kernel 验收。

**许可：** 文件头明确 Apache 2.0。署名 Alastair Irving、Terry Tao、Ruben Van de Velde。依赖文件虽还包含积分、Abel 求和和渐近引理，但本定理的证明不消费那些后续结果。

### 已发现但未直接采用的较弱计数声明

同文件末尾，读取范围 830–文件末：

```lean
theorem pi_le_log4_mul_div {x : ℝ} (hx : 1 < x) :
    π ⌊x⌋₊ ≤ log 4 * x / log √x + √x := by
```

完整名称：`Chebyshev.pi_le_log4_mul_div`。
范围：实数 x>1；π 采用自然数 primeCounting，传入 floor x。

它对应平方根分割，主系数为 2log4；本轮选择 α=15/16 的纸面分割，主系数降为 (16/15)log4，使固定区间接口不必窄到约 1/262143。本轮不宣称 α=15/16 的新引理已经存在于 mathlib。

## S2. 初等 primorial 上界——S1 的实际基础

同一 mathlib commit。
文件：`Mathlib/NumberTheory/Primorial.lean`。
blob SHA：`147e83d499d4d460ddc330bf3966da10a98d7939`。

固定入口：
https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/NumberTheory/Primorial.lean

**实际声明：** `primorial_le_four_pow (n : ℕ) : primorial n ≤ 4 ^ n`。
代码中 `n#` 是局部记号；不是一个额外对象。

**阈值：** 所有自然数 n，包括 0。

**实际读取：** 文件 1–200 行，包含定义、`primorial_add_dvd`、`primorial_add_le`、强归纳证明 `primorial_lt_four_pow` 及非严格版本。

**证明依赖：** 大于半区间的素数对二项式系数的整除、不同素数积的整除、中央二项式上界与强归纳；没有解析素数分布理论。derivation.md 第 3 节同时给出简短纸面证明。

**许可：** Apache 2.0；署名 Patrick Stevens、Yury Kudryashov、Bhavik Mehta。

## S3. 已存在的 Bertrand 声明——核实后排除直接代入

同一 mathlib commit。
文件：`Mathlib/NumberTheory/Bertrand.lean`。
blob SHA：`89e05cf1c9edb1d129832ecb8cd548e5d7c2c5fe`。

固定入口：
https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/NumberTheory/Bertrand.lean

**实际声明形状：**

```lean
theorem exists_prime_lt_and_le_two_mul (n : ℕ) (hn0 : n ≠ 0) :
    ∃ p, Nat.Prime p ∧ n < p ∧ p ≤ 2 * n := by
```

文件也给出 `bertrand` 别名。读取了文件头、210–226 行的声明以及后续证明收尾。

**阈值和端点：** 每个正自然数 n；左端严格、右端非严格。没有隐含的大数阈值。

**许可：** Apache 2.0；署名 Patrick Stevens、Bolton Bailey。

该来源说明 Bertrand 本身的形式化不是缺口；失败的是宽度与当前消费者不匹配。

## S4. 工具链与兼容性

同一 mathlib commit 的 `lean-toolchain`：
https://github.com/leanprover-community/mathlib4/blob/0df444a360eaa60ab8c11dca51a86af692955474/lean-toolchain

实际内容：`leanprover/lean4:v4.33.1`。
blob SHA：`a8afa7d1b02d96f0671eba854a8dc4b416beb473`。

这与任务指定环境吻合。不需要以浮动 main 上的声明冒充固定环境里的声明。

本包没有复制完整外部实现或附带二进制库，仅记录声明、定位信息与证明摘要。正式复用代码时应保留 Apache 2.0 许可及署名；在同 pin 里直接引用已有 theorem 通常无需复制实现。未测试其他 Lean/mathlib 版本，不作跨版本兼容保证。

## S5. 已撤回的任意固定比例区间捷径——不采用

作者：Shiva Kintali。
题名：*Towards Proving Legendre's Conjecture*。
arXiv：0811.4451。

官方版本页：
https://arxiv.org/abs/0811.4451v3

实际成功读取的官方入口：
https://arxiv.org/abs/0811.4451

读取时官方页明确显示版本历史：v1 为 2008-11-26；v2 为 2009-01-11；v3 为 2026-07-19，并标明 withdrawn。撤回备注说明存在计算错误，修正后论证不能取得目标结果。

旧摘要宣称对任意固定 k 可以初等、显式构造 N(k)，使 n≥N(k) 时 (kn,(k+1)n) 有素数。由于撤回，这个声明没有被当作已证明定理，也没有采用搜索结果里出现的阈值公式。

旧稿还以 *A Generalization of Erdös's Proof of Bertrand-Chebyshev Theorem* 为题出现在检索结果中；这只作为发现线索，采用与否由官方 arXiv 撤回记录决定。

**访问限制：** 尝试打开 v1/v2 PDF 未成功。没有声称读过这些 PDF，也没有自行断言具体哪条旧公式出错。淘汰依据是作者官方撤回记录。

## S6. 一个较窄初等区间来源——强度仍不足

作者：Hiroki Aoki、Riku Higa、Ryosei Sugawara。
题名：*Existence of primes in the interval [15x,16x] — An entirely elementary proof*。
固定版本：arXiv:2503.06069v3，2025-08-04。

固定版本入口：
https://arxiv.org/html/2503.06069v3

实际成功读取的 HTML 入口：
https://arxiv.org/html/2503.06069

页面头部显示 v3 与上述日期。核对位置：摘要、§1、§2.1 中 P(k) 与 P*(k,a) 的定义、§2.4 的 primorial Lemma 5、§3.1 的 Theorem 6。

**实际结果的相关部分：** 对 k≤15，证明每个固定正整数数量的素数最终存在于 [kx,(k+1)x]。本轮没有提取并认证一个明确数值 L_(15,1)，也没有将其实数端点版本直接当作本任务所需的严格左端版本。

即便授予有效阈值与端点修补，k=15 的相对宽度 1/15 仍远大于最终所需 1/2047。此项仅用于量化淘汰，不作为主消费者依赖。没有复制论文正文、图表或代码；没有声称它具有 Lean 形式化。

## S7. 原 Dusart 输入：仅作保留依赖的校准，不冒充新来源

Pierre Dusart，arXiv:1002.0442v1：
https://arxiv.org/abs/1002.0442v1
https://arxiv.org/pdf/1002.0442v1

任务给定并由 S0 明确标出的两个位置：

- Theorem 6.9、上界 (6.5)：π(x)≤x/log x·(1+1.2762/log x)，x>1。
- Proposition 6.8：y≥396738 时，存在素数 y<p≤y(1+1/(25(log y)^2))。

本轮将这些声明的相关内容视为任务已经提供的信息，**没有重新独立读取 Dusart PDF 或复核其整篇证明**。最终独立计数路线不使用第一条；derivation.md 第 7 节只用第二条说明“保留旧区间结果即可删除精细计数分支”。这不是新的去 Dusart 闭合。

## 访问范围与未作的断言

GitHub connector 的固定版本读取成功。容器直接请求 raw.githubusercontent.com 时 DNS 失败；未伪称文件已下载，未将失败下载物打包为原始源码。有效来源证据由上述固定链接、blob SHA、声明及本轮读取记录组成。

定向检索没有找到并验收一个可直接填入 Gap2048(2^257) 的更轻 Lean 供应定理；这不等于证明所有外部项目都没有这种结果。没有维护项目活跃度榜，没有审计整套 PNT+ 或其他大型解析数论工程。
