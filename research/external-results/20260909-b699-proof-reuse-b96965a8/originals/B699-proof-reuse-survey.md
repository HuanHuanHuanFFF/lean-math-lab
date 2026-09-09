# B699 面向证明复用的深度研究报告

## 结论与前沿更新

本次检索到的最有价值结果不是原题的现成完整解，而是两条**此前基线尚未采用、可以严格转移到 B699 的经典已证明素数定理**。其中第一条组合实际上缩小了当前数学未知区域；第二条无条件补上了基线中缺失的 `Gap2048` 供应商。

最重要的新结论是：

> **新增纸面全域排除定理。**  
> 对所有自然数 \(n,i,j\)，若
> \[
> 1\le i<j\le \lfloor n/2\rfloor,\qquad i\ge 150000,
> \]
> 则存在素数 \(p\ge i\)，同时整除
> \[
> \binom ni,\qquad \binom nj.
> \]
> 该推导继续使用仓库原来的 `noCommon`、实际 avoiding part \(D\)、完整 \(p\)-进指数，并**没有删除 \(p=i\) 的边界情形**。

因此，按**纸面数学层**计，原先的统一前沿

\[
i\ge 10^6
\]

可以推进到

\[
\boxed{i\ge 150000}.
\]

这实质上把此前仍需依赖固定高度处理的中指标区域从

\[
185\le i<10^6
\]

缩为

\[
\boxed{185\le i<150000}.
\]

仓库已有的高度定理仍然告诉我们：对每个这样的固定 \(i\)，反例只能落在 \(n\le H(i)\)；因此新的真实剩余中指标区域是

\[
185\le i<150000,\qquad n\le H(i),
\]

而不是无界的 \(n\)-尾部。高度消费者的完整原题版本已在固定 Lean 环境验收。fileciteturn2file0

第二项新增结果是：

> **无条件 `Gap2048` 供应。**
> \[
> \boxed{\mathrm{Gap2048}(2011743)}
> \]
> 成立，即对每个整数 \(N\ge 2\,011\,743\)，存在素数 \(p\le N\) 使
> \[
> 2047N<2048p.
> \]

这正好供应基线中缺失的接口，因此“\(i\ge2^{256}\Rightarrow n<2048i\)，再消费 `Gap2048`”这条路线不再是条件路线；不过它的指标阈值远弱于新得到的 \(150000\)，所以其主要价值是**提供一个非常干净的固定比例素数接口**，而不是更新最强数学前沿。基线中 `Gap2048` 的消费者形状和 \(2^{256}\) 计数推导见既有记录。fileciteturn1file0

按用户要求区分证据等级，本轮结果可概括为：

| 候选 | 数学状态 | 对 B699 的作用 | Lean 状态 |
|---|---|---|---|
| Rosser–Schoenfeld 1962 + Schoenfeld 1976 | **能直接采用（纸面）** | 无条件推出全部 \(i\ge150000\) | 外部解析定理尚未形式化 |
| Schoenfeld 1976 → `Gap2048(2011743)` | **能直接采用（纸面）** | 无条件供应基线缺失接口 | 纯消费者很便宜；源定理尚未形式化 |
| FormalConjectures-Bench 的 Sylvester–Schur | **代码层真实形式化证据，但不能闭合原题** | 可复用单二项式/顶端区间技巧 | 非本仓固定依赖；许可也需谨慎 |
| 固定 pin 的 mathlib Chebyshev 界 | **能直接 Lean 采用但强度不足** | 无法供应 \(16597\) 或 \(2048\) 所需比例 | 已在固定 pin 中 |
| 1988 单二项式大素因子结果等 | **已排除为直接闭合候选** | 不能强迫同一个素数进入第二个二项式系数 | 不值得为 B699 主线新增依赖 |

可下载交付已经生成：

[下载完整 Markdown 报告](sandbox:/mnt/data/B699_proof_reuse_deep_research_2026-09-09.md)

[下载精确证据包 ZIP](sandbox:/mnt/data/B699_proof_reuse_evidence_2026-09-09.zip)

证据包中的 `verify_bridge.py` 只使用 Python 标准库、精确整数/有理数运算和确定性试除；本次运行结果为 **ALL CHECKS PASSED**。它不联网、不使用浮点数承担证明、不使用概率素性测试。

## 原题、仓库基线与文献状态

Erdős–Szekeres 1978 年原文确实提出了这里讨论的同一问题：对 \(1\le i<j\le n/2\)，研究
\[
P\!\left(\gcd\!\left(\binom ni,\binom nj\right)\right)
\]
是否至少为 \(i\)。原文同时指出 Sylvester–Schur 只能保证单个 \(\binom ni\) 有一个 \(>i\) 的素因子；这两者不能混同。原论文为 P. Erdős 与 G. Szekeres, *Some Number Theoretic Problems on Binomial Coefficients*, Austral. Math. Soc. Gazette 5 (1978), 97–99。citeturn32search1turn32search16

截至检索时，Erdős Problems #699 页面仍把该问题标为 “FALSIFIABLE / Open”，且页面自身明确提醒这种状态不构成完备文献检索证明。因此这里**不把网站状态当作“无人解决”的首创认证**；它只能说明当前公开问题数据库没有登记完整解决。citeturn32search6

仓库给出的旧大指标证明比一般“大素因子”结论精细得多。对
\[
k=n-j,\qquad
F(X)=\sum_{r=0}^{i}\binom jr\binom{k}{i-r}X^r,
\]
它定义
\[
D=\prod_{\substack{p\ {\rm prime}\\p\ge i\\
p\mid\binom ni\\p\nmid\binom nj}}
p^{v_p(\binom ni)}.
\]
这里是**完整指数**，并且条件是 \(p\ge i\)，所以 \(p=i\) 没有被偷偷删去。系数恒等式
\[
\binom ni\binom ir\binom{n-i}{j-r}
=
\binom nj\binom jr\binom{n-j}{i-r}
\]
给出 \(D\) 整除 \(F\) 的每个系数；在 `noCommon` 下才进一步用 \(D=V\)。fileciteturn0file0

这一链最终已经得到本次所需的关键消费者。令
\[
X=\frac ni,\qquad
r=\frac{\pi(i-1)}i.
\]
在 `noCommon` 下，
\[
\boxed{
\left(\frac12-2r\right)\log X
<
\log2+2r\log i+\frac{\log i}{i-1}
}
\tag{D}
\]
并且 `noCommon` 蕴含顶端区间
\[
(n-i,n]
\]
没有素数。旧 \(i\ge10^6\) 证明随后分别用 Dusart 的 \(\pi(x)\) 上界和短区间素数定理闭合。fileciteturn0file0

云端代数批已经进一步把判别式核心从 Jacobi 分析公式改写成实际多项式的代数递推，并在固定 Lean 4.33.1/mathlib pin 上验收：
\[
i^{i-2}\Disc(F_i)
=
j^{i-1}\binom{n-j}{i-1}\binom{n-1}{i-1}\Disc(F_{i-1}),
\]
同时证明实际判别式严格为正。因此，**云端代数核心本身已经足够锐**；本轮发现的主要新杠杆确实位于外部素数输入，而不是再找一条新的 Jacobi/判别式公式。fileciteturn3file0

低指标方面，检查点明确记录：纸面数学与独立证书已排除 \(i=29\) 及 \(35\le i\le184\)，另有 Matveev 路线排除 \(28,31,34\)；剩余
\[
\{3,\ldots,27,30,32,33\}
\]
共 28 项。与此同时，具体 151 行覆盖消费者在该检查点仍不能升级成“完整最终 Lean 消费者已验收”。fileciteturn4file0turn5file0

## 新增统一定理：全部 \(i\ge150000\)

这一节给出完整参数代入，而不是只列文献。

反设存在合法反例，并采用仓库原定义的 `noCommon`。写
\[
L=\log i,\qquad
r=\frac{\pi(i-1)}i,\qquad
X=\frac ni.
\]

### 素数计数输入

Rosser–Schoenfeld 1962 年论文 *Approximate formulas for some functions of prime numbers*, Illinois J. Math. 6 (1962), 64–94 的 **Theorem 2, p.69** 给出
\[
\boxed{
\pi(x)<\frac{x}{\log x-\frac32}
}
\qquad (x>e^{3/2}).
\tag{RS}
\]
这是已发表结果，不是渐近记号，阈值和常数都是有效的。citeturn17search0turn13search3

仓库旧证明已经精确证明了
\[
e<\frac{68}{25}.
\]
本次证据包核验整数不等式
\[
68^{119}<150000^{10}25^{119},
\]
故
\[
e^{119/10}
<
\left(\frac{68}{25}\right)^{119/10}
<150000.
\]
于是 \(i\ge150000\) 时
\[
L>\frac{119}{10}=11.9.
\]

由 (RS)，
\[
r=\frac{\pi(i-1)}i
\le \frac{\pi(i)}i
<
\frac1{L-\frac32}
<
\frac1{\,\frac{119}{10}-\frac{15}{10}\,}
=
\frac5{52}.
\]
所以
\[
\frac12-2r
>
\frac12-\frac{10}{52}
=
\boxed{\frac4{13}}>0.
\tag{A}
\]

另一方面，
\[
rL<\frac{L}{L-\frac32}.
\]
函数 \(L/(L-\frac32)\) 在 \(L>3/2\) 上严格递减，因此
\[
2rL
<
2\frac{119/10}{104/10}
=
\boxed{\frac{119}{52}}.
\tag{B}
\]

### 对数余项的完全显式控制

对 \(u=\sqrt i\) 使用 \(\log u\le u-1\)，得到
\[
\log i=2\log\sqrt i\le2(\sqrt i-1),
\]
因而
\[
\frac{\log i}{i-1}
\le
\frac{2}{\sqrt i+1}.
\]
而
\[
387^2=149769<150000\le i,
\]
所以
\[
\frac{\log i}{i-1}<\boxed{\frac1{194}}.
\tag{C}
\]

本次证据包还直接验证四阶 Taylor 下界：
\[
\sum_{k=0}^{4}\frac{(347/500)^k}{k!}-2
=
\frac{289173281}{1500000000000}>0.
\]
由于 \(e^x\) 大于其正项 Taylor 部分和，
\[
e^{347/500}>2,
\]
故
\[
\boxed{\log2<\frac{347}{500}}.
\tag{E}
\]

代入项目已经证明的 (D)，利用 \(\log X>0\) 与 (A)，得到
\[
\frac4{13}\log X
<
\frac{347}{500}
+\frac{119}{52}
+\frac1{194}.
\]
右边精确等于
\[
\frac{470923}{157625},
\]
因此
\[
\boxed{
\log X<\frac{470923}{48500}
}.
\]
证据包进一步精确核验
\[
\frac{470923}{48500}
<
\frac{369}{38},
\qquad
\frac{369}{38}-\frac{470923}{48500}
=
\frac{713}{921500}>0.
\]

再利用旧有 \(e<68/25\)，本次精确整数证书为
\[
68^{369}<16598^{38}25^{369}.
\]
因此
\[
e^{369/38}
<
\left(\frac{68}{25}\right)^{369/38}
<16598.
\]
最终得到
\[
\boxed{X<16598}.
\tag{F}
\]

这一步尤其重要：不是数值采样，也没有对 \(i\) 做有限扫描；整个 \(i\ge150000\) 区域由符号不等式一次覆盖。

### 短区间素数输入

Schoenfeld 1976 年 *Sharper bounds for the Chebyshev functions \(\theta(x)\) and \(\psi(x)\). II*, Math. Comp. 30 (1976), 337–360 的 **Theorem 12, p.359** 明确证明：
\[
\boxed{
x>2\,010\,759.9
\Longrightarrow
\exists p\ {\rm prime}:
x<p<x+\frac{x}{16597}.
}
\tag{S}
\]
原扫描文本中的定理号、常数 \(16597\)、阈值 \(2\,010\,759.9\) 和开区间端点均可核对；后续文献也以 `[Schoenfeld, Theorem 12]` 的这一形式引用。citeturn37search1turn35search1

令
\[
y=n-i.
\]
由合法条件 \(j\ge i+1\) 且 \(j\le n/2\)，
\[
n\ge2i+2,
\qquad
y\ge i+2\ge150002.
\tag{G}
\]
而 (F) 给
\[
n<16598i,
\]
所以
\[
\boxed{y<16597i}.
\tag{H}
\]

若整数
\[
y\ge2\,010\,760,
\]
则 (S) 给素数 \(q\) 满足
\[
y<q<y+\frac{y}{16597}.
\]
由 (H)，
\[
\frac{y}{16597}<i,
\]
于是
\[
y<q<y+i=n.
\]
即
\[
q\in(n-i,n).
\]
这直接与项目已有的 `noCommon ⇒ (n-i,n]` 无素数桥矛盾。该顶端素数桥的作用并不修改 \(D\) 或 \(V\) 的指数定义。fileciteturn1file0

### Schoenfeld 阈值以下只有一个很小的精确证书

还需覆盖
\[
150002\le y\le2\,010\,759.
\]
这里不需要任何巨大素数表。本次构造并独立试除验证了 14 个素数：
\[
\begin{aligned}
&290011,\ 430013,\ 570029,\ 710051,\ 850061,\ 990137,\ 1130191,\\
&1270193,\ 1410197,\ 1550203,\ 1690211,\ 1830223,\ 1970233,\ 2110247.
\end{aligned}
\]

从哨兵 \(150002\) 到第一项以及相邻素数之间的间隔依次为
\[
140009,140002,140016,140022,140010,140076,140054,
140002,140004,140006,140008,140012,140010,140014.
\]
最大值仅为
\[
\boxed{140076<150000}.
\]
最后一个素数
\[
2110247>2010759.
\]

所以，对任意上述范围内的整数 \(y\)，取链中**第一个严格大于 \(y\)** 的素数 \(q\)，总有
\[
0<q-y<150000\le i.
\]
故仍然
\[
y<q<y+i=n,
\]
与顶端素数桥矛盾。

证据包中的核验不是“实验支持”：每个列出的数都由确定性试除至 \(\lfloor\sqrt p\rfloor\) 验素，而只要这 14 项及有限个精确间距正确，整个有限区间覆盖就是一个有限证书。没有从有限数据外推无限命题；无限的 \(i\)-方向已经在前面的符号不等式中完成。

因此得到本轮最强的新数学结论：

\[
\boxed{
i\ge150000
\quad\Longrightarrow\quad
\text{B699 对全部合法 }n,j\text{ 成立}.
}
\]

**证据等级：已发表外部定理 + 仓库既有纸面判别式消费者 + 本轮精确有限证书；尚未成为新的 Lean 内核定理。**

## `Gap2048` 已可无条件供应

Schoenfeld 的同一个 Theorem 12 还能精确填上基线一直缺失的 `Gap2048`。

取整数
\[
N\ge M:=2\,011\,743
\]
并置
\[
x=\frac{2047}{2048}N.
\]

在最小 \(N=M\) 处，本次精确计算得到
\[
\frac{2047}{2048}M-\frac{20107599}{10}
=
\boxed{\frac{8229}{10240}}>0.
\]
因此对所有 \(N\ge M\)，都有
\[
x>2\,010\,759.9.
\]

Schoenfeld 给出素数
\[
x<p<x\left(1+\frac1{16597}\right)
=
x\frac{16598}{16597}.
\]
而完全整数化地，
\[
2048\cdot16597-2047\cdot16598
=
\boxed{14550}>0,
\]
所以
\[
\frac{2047}{2048}\frac{16598}{16597}<1.
\]
从而
\[
p<
\frac{2047}{2048}N\frac{16598}{16597}
<N.
\]
另一方面 \(p>x\) 等价于
\[
2048p>2047N.
\]

因此
\[
\boxed{
\forall N\ge2011743,\ 
\exists p\ {\rm prime},\
p\le N\land2047N<2048p.
}
\]

也就是基线要求的精确接口
\[
\boxed{\mathrm{Gap2048}(2011743)}.
\]

这不是“假设接口 \(\Rightarrow\) 结论”的再次包装，而是从已发表定理给出了接口的无条件供应。Schoenfeld 的原定理本身是无条件结果，不依赖 RH；论文另有 RH 条件结果，但这里没有使用。citeturn37search1turn32search11

所以基线中的路线

\[
i\ge2^{256}
\Rightarrow
\text{noCommon}\Rightarrow n<2048i
\]

现在可以真正接上一个无条件的固定比例素数输入。此前的 \(n<2048i\) 是通过 mathlib 的 primorial/Chebyshev 基础和新的有效分割得到的纸面结果，而不是 Dusart 的改名封装。fileciteturn1file0

不过从前沿角度必须诚实比较：

\[
150000\ll2^{256}.
\]

因此 `Gap2048` 新供应**不应被宣称为比 \(i\ge150000\) 更强的新覆盖**。它的价值在于：

1. 把一条此前明确标成“B 类条件成果”的独立路线变成无条件纸面路线；
2. 给未来 Lean 边界提供一个非常简单的固定比例消费者；
3. 若将来希望完全移除旧 Dusart 路线，可以保留它作为独立交叉证明。

## 大指标依赖与 Lean 复用判断

### 云端代数核心已经够锐，不应再重做 Jacobi

本次核对云端 `notes/algebra.md` 后，结论很明确：大指标证明中原来最令人担心的 Jacobi/判别式解析公式已经可以由结果式和下降关系纯代数重建。固定 Lean 环境中实际证明了判别式递推、正性和非零性，随后 `ScaledDiscriminant` / `OriginalHeight` 消费了精确阶乘消去。fileciteturn3file0turn2file0

因此就“后续 Lean 成本”而言，**没有必要引入一个新的 Jacobi 多项式库、根分离定理或 DLMF 判别式公式来支撑大指标主线**。现有代数核已经供给判别式端所需的锐度。

真正外露的依赖是显式素数分布。

### 固定 mathlib 的现成 \(\pi\) 上界还不够强

在仓库固定的 mathlib 提交
`0df444a360eaa60ab8c11dca51a86af692955474`
中，`Mathlib/NumberTheory/Chebyshev.lean` 的确已有完全显式定理

```lean
theorem pi_le_log4_mul_div {x : ℝ} (hx : 1 < x) :
  π ⌊x⌋₊ ≤ log 4 * x / log √x + √x
```

而不是只有渐近 PNT。fileciteturn10file0

但这个现成界的渐近主项为
\[
\pi(x)\lesssim \frac{2\log4}{\log x}x.
\]
即在判别式消费者中相当于
\[
r\lesssim \frac{A}{\log i},
\qquad
A=2\log4=\log16.
\]
对于一般 \(r\sim A/\log i\)，项目自己的强度诊断给
\[
X\to4e^{4A}.
\]
代入 \(A=\log16\)：
\[
4e^{4\log16}
=
4\cdot16^4
=
\boxed{262144}.
\]
这远大于 Schoenfeld 接口所需的
\[
X<16598,
\]
更不用说 `Gap2048` 所需的 \(X<2048\)。因此 **`pi_le_log4_mul_div` 虽然已 Lean 化，但不能直接替代 Rosser–Schoenfeld 的锐计数输入**。这个结论不是“名字看起来太弱”，而是经过了消费者常数代入。fileciteturn10file0turn1file0

同一固定文件中的

```lean
eventually_primeCounting_le
```

只有滤子意义的 `∀ᶠ x in atTop`，没有一个可以直接拿来做 B699 有效整数边界的数值阈值。fileciteturn9file0

因此，目前可复用性判断是：

> **固定 pin mathlib 已经能承担项目自己的初等 \(2^{256}\) 计数路线，但没有找到一个现成 Lean 定理能以足够锐的有效常数替代本报告使用的 Rosser–Schoenfeld 上界。**

### Schoenfeld 比 Dusart 的“消费者”明显更轻，但“基础形式化”未必更轻

对于旧 \(i\ge10^6\) 路线，Dusart 短区间输入是
\[
y<p\le
y\left(1+\frac1{25(\log y)^2}\right),
\]
之后还需要多轮 \(\log y\) bootstrap 才把 \(X\) 与 11000 互相挤出矛盾。旧证明清楚记录了这套步骤。fileciteturn0file0

Schoenfeld 输入则只是
\[
y<p<y\left(1+\frac1{16597}\right),
\]
因此一旦有
\[
X<16598,
\]
消费者只有一行
\[
y=(X-1)i<16597i
\Rightarrow \frac y{16597}<i.
\]

所以从**项目内消费者的 Lean 复杂度**看，Schoenfeld 固定比例接口明显更简单。

但不能由此推断“整个外部解析数论的 Lean 形式化已经变轻”。Schoenfeld 1976 和 Rosser–Schoenfeld 1962 自身仍是有效 PNT/显式 Chebyshev 类型结果；当前固定 mathlib 并没有现成形式化这些常数。换言之：

> **我们删掉的是 Dusart 依赖和项目内的 log² bootstrap；并没有凭空删掉显式素数分布本身的数学成本。**

若项目的最终政策允许纸面层引用经典已发表定理，这次替换是真推进；若要求所有显式素数定理最终也进 Lean 内核，那么目前的正确状态仍是“补一条明确外部桥后可采用”，而不是“Lean 已闭合”。

### 找到真实 Sylvester–Schur Lean 源码，但它不是 B699 解

Google DeepMind `formal-conjectures` 当前 B699 文件精确地把原题声明为
\[
\exists p,\quad p.\mathrm{Prime}\land i\le p
\land p\mid\gcd\!\left(\binom ni,\binom nj\right),
\]
但 `erdos_699` 本身仍以 `sorry` 占位，因此不能把该仓库当作 B699 的形式化解决。该文件明确标注 Apache-2.0。fileciteturn14file0

同一文件的 `sylvester_schur` 元数据则指向一个实际 Lean proof。顺着链接读取 `AllenGrahamHart/FormalConjectures-Bench` 的指定提交后，确实看到最终定理是实质证明体：

```lean
theorem sylvester_schur
    (n i : ℕ) (hi : 1 ≤ i) (hi_half : i ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i < p ∧ p ∣ Nat.choose n i := by
  ...
```

它由 \(i\le48\)、\(i\ge4840\) 以及中间有限范围等子证明拼接，而不是目标区域的一行 `sorry`。fileciteturn15file0

其源码还包含 `prime_dvd_choose_of_dvd_mem_interval`、`sylvester_schur_of_prime_in_top_interval` 一类很贴近 B699 顶端素数桥的接口。fileciteturn18file0

但它证明的只是
\[
p\mid\binom ni,
\]
没有推出
\[
p\mid\binom nj.
\]
所以这不是当前缺失的“共同大素因子定理”。而本仓已经有顶端素数桥，因此将这份大体量 Sylvester–Schur formalization 整体移植进来，**对 B699 当前关键路径的边际收益很低**。

兼容性上还存在两个明确问题：目标源码导入 `FormalConjectures.ErdosProblems.«961»` 等非本仓依赖，并不是用户固定 mathlib pin 上的独立文件。fileciteturn17file0 此外，GitHub API 对 `FormalConjectures-Bench` 仓库返回 `license: null`，且目标源码开头没有独立许可证头；因此本报告不建议直接复制该源码。fileciteturn24file0

## 剩余区域与关键无效候选

### 中指标的未知区域确实缩小了

这是本轮最实质的前沿变化。

此前：

\[
185\le i<10^6
\]

只有固定 \(i\) 的高度上界，尚未全域排除。fileciteturn2file0

现在，本轮纸面结果无条件排除

\[
150000\le i<10^6
\]

的全部合法 \(n,j\)。所以该区域不再需要消费 \(H(i)\) 内的巨大有限高度。

留下的是

\[
\boxed{185\le i<150000}.
\]

其中每个固定 \(i\) 的反例仍然必须满足
\[
n\le H(i),
\]
这一点已经 Lean 验收。fileciteturn2file0

应特别避免把这说成“只剩有限多个三元组”：虽然 \(i\) 现在被整体限制为有限区间 \(185,\dots,149999\)，结合每个 \(H(i)\) 的确形成一个理论上的全局有限盒，但其尺寸巨大，**本报告没有生成、消费或 Lean 验收那个全局有限盒**。数学有限性、可执行证书和 Lean 验收仍须分别表述。

### 对剩余 28 个低指标，本轮没有找到统一闭合定理

低指标剩余仍是
\[
\boxed{\{3,\ldots,27,30,32,33\}}.
\]
fileciteturn4file0

本轮检索到的 Rosser–Schoenfeld/Schoenfeld 组合不能自然下降到这里，因为判别式消费者首先依赖
\[
\frac12-2r>0,
\quad\text{等价于}\quad
i>4\pi(i-1),
\]
而这正是高度链的正指数门槛之一；低指标残余并不位于该统一大指标机制的有效区间。fileciteturn2file0

低指标接续材料也已经明确指出：Mahler/BEG 一类 \(S\)-part 结果在当前消费方式下只产生**无效有限性**，不能变成可扫描上界；\(i=3,4\) 的既约斜率、CRT、中心带等结构仍留下无界参数。fileciteturn20file0

因此本轮没有把任何“固定 \(i\) 有限性”弱化成“已经解决低指标”。

### 单个二项式的大素因子定理不能直接转移

Erdős–Lacampagne–Selfridge 1988 年 *Prime factors of binomial coefficients and related problems* 等结果很接近关键词，但核心对象仍是单个二项式系数、连续整数块及其大/小素因子结构。其结论没有给出“同一个 \(p\)”同时进入 \(\binom ni\) 与 \(\binom nj\) 的桥，因此没有得到覆盖当前 B699 参数域的新定理。citeturn28view0

这与 Sylvester–Schur 的阻断完全相同：

\[
\exists p>i,\ p\mid\binom ni
\]

远不足以推出

\[
\exists p\ge i,\ 
p\mid\binom ni
\ \land\
p\mid\binom nj.
\]

只有当该素数落入类似 \((n-i,n]\) 的特殊顶端区间时，仓库现有桥才会自动让它同时整除两个二项式；一般“大素因子存在性”不提供其位置。

### 更现代的短区间素数结果并不自动更适合形式化

Axler 2018 对短区间素数结果的整理明确列出 Schoenfeld 的 \(1/16597\) 定理，并同时指出若干更现代、更窄的区间；但这些结果常只从更高阈值起效，部分证明链在中间区间仍显式调用 Dusart。citeturn35search3

因此，为 B699 换入“数值上更窄”的最新短区间并不必然减少依赖。我们的消费者只需要
\[
\delta<\frac1{X-1}.
\]
一旦 Rosser–Schoenfeld 已经给 \(X<16598\)，Schoenfeld 的经典常数正好够用，而且阈值只有约 \(2.01\times10^6\)，下方只需 14 个小素数证书。这比引入零密度、部分 RH 验证或大规模计算型区间定理更适合当前“证明复用/Lean 成本”目标。Schoenfeld 定理本身的有效阈值与区间宽度见原文 Theorem 12。citeturn37search1

## 建议的后续 Work 与首个验收目标

综合前沿收益、数学依赖和 Lean 成本，我的建议不是继续维护旧的 \(i\ge10^6\) Dusart 路线作为主线，而是：

> **纸面主前沿采用新的 \(i\ge150000\) 路线；旧 \(i\ge10^6\) 证明保留作独立交叉校验。**
>
> **同时把 `Gap2048(2011743)` 记录为已无条件供应的独立接口，但不把 \(i\ge2^{256}\) 误报成新的最强覆盖。**

这样实际删除的是：

- 旧大指标主证明对 Dusart Theorem 6.9 的依赖；
- 旧大指标主证明对 Dusart Proposition 6.8 的依赖；
- 三轮基于 \(25(\log y)^2\) 的 bootstrap；
- \(10^6\) 到 \(150000\) 之间原本仍需要高度消费者处理的整个无界 \(n,j\) 区域。旧路线的 Dusart 使用位置见原证明。fileciteturn0file0

新增的是：

- Rosser–Schoenfeld 1962, Theorem 2, p.69；
- Schoenfeld 1976, Theorem 12, p.359；
- 14 个约两百万以下的小素数确定性证书；
- 一小段完全有理化的对数常数桥。

**首个最合理、可独立验收的具体目标**应当是：

> `Schoenfeld16597 → Gap2048 2011743`

其目标接口可以精确写成：

```text
Schoenfeld16597 :
  ∀ x : ℝ, 20107599 / 10 < x →
    ∃ p : ℕ, p.Prime ∧
      x < p ∧
      (p : ℝ) < x * (16598 / 16597)
```

消费者只需证明，对 \(N\ge2011743\)，令
\[
x=\frac{2047}{2048}N,
\]
则
\[
x>2010759.9,
\qquad
x\frac{16598}{16597}<N.
\]
两个关键余量已经是精确整数/有理数：
\[
\frac{8229}{10240}>0,
\qquad
2048\cdot16597-2047\cdot16598=14550>0.
\]

这项工作**不需要判别式、不需要重新跑低指标证书、不需要全库构建，也不需要任何素数扫描**；作为消费者，它应当是最小、最清晰的首个验收单元。

随后第二目标才应是：

> `RosserSchoenfeldPi + Schoenfeld16597 + existing_discriminant_consumer → common_of_index_ge_150000`

其中项目内新增数学桥只有：

\[
L>\frac{119}{10},
\quad
r<\frac5{52},
\quad
2rL<\frac{119}{52},
\quad
\frac{\log i}{i-1}<\frac1{194},
\]
\[
\log X<\frac{470923}{48500}<\frac{369}{38},
\quad
X<16598,
\]
以及 14-prime 有限覆盖。

真正需要先做政策判断的只有一点：**是否要求 Rosser–Schoenfeld 与 Schoenfeld 的解析源定理本身最终也在 Lean 内核中重证。** 如果答案是肯定的，那么外部显式 PNT 仍是主要数学缺口，不能把这次替换描述成“Lean 已经轻量闭合”；如果允许经典出版定理作为纸面层输入，那么新的 \(i\ge150000\) 路线已经是严格更强且消费者更简单的主路线。

本次没有找到能闭合剩余 28 个低指标的现成已证明统一定理，也没有找到固定 mathlib pin 中足够锐的有效 \(\pi(x)\) 定理。最值得投入的下一数学区域因此已经从“继续优化 \(10^6\) 大指标常数”转移为：

\[
\boxed{185\le i<150000,\ n\le H(i)}
\]

以及独立的

\[
\boxed{\{3,\ldots,27,30,32,33\}}
\]

两块；前者应优先考虑把现有高度定理与更强的有限覆盖/素数幂定位结合，后者则仍需真正新的低指标结构，而不是更多单二项式大素因子文献。仓库已经有可复用的 `binomial_prime_power_localization`，并明确保留 \(p=i\) 和完整二项式素数幂指数，这应是低端后续工作比重新引入 Mahler 型无效有限性更合适的基础接口。fileciteturn20file0