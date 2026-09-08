# B677 的两个无限区域：供独立审阅的完整纸面论证

记录时间：2026-09-08 05:08:43 Asia/Shanghai（工具读时）。本文件属于 `B677-Lcm/explorer/`。研究轮次从 04:43:27 开始。用户于 05:12 将探索截止改为 06:10，原 10:00/11:00 时间安排已作废；主任务统一处理获授权的提交与推送，本探索者不执行 Git 写操作。

状态：下述是以已发表的无条件素数定理和可重跑的精确有限计算为依据的候选完整论证，等待新的上下文独立审阅。这里没有声称全题已解决、全部引理已由 Lean 检查、已有外部同行评审或已有原创性证明。本文的“定理”是待审阅的精确数学主张。

## 1. 精确主张与剩余问题

对自然数 n 和正整数 k，定义

\[
 M(n,k)=\operatorname{lcm}(n+1,n+2,\ldots,n+k),\qquad
 A_k=\operatorname{lcm}(1,2,\ldots,k),\quad A_0=1.
\]

所有区间都包含两端；n=0 允许。原题条件为 k>0、m>=n+k，因此两段不相交。令 d=m-n，则 d>=k。

**候选部分定理。** 若

\[
 k>0,\qquad m\ge n+k,\qquad
 \bigl(m-n\le8k\ \text{或}\ n\le369k\bigr),
\]

则 M(n,k) != M(m,k)。

因此，若原题存在反例，本论证将其限制到

\[
 n>369k,\qquad m-n>8k.
\]

n、m、k 以及 d/k 在这个剩余区域仍没有全局上界。不能把已排除的区域或有限检查数量当成原题的完成比例。

## 2. 使用的外部数学输入

唯一在下文直接引用而不重证的实质性素数分布输入是 Dusart 的无条件定理：对每个实数 x>=89693，存在素数 p 满足

\[
 x<p\le x\left(1+\frac1{(\log x)^3}\right). \tag{D}
\]

原文必要短引文为：“For all x ⩾ 89 693, there exists a prime p such that”。随后即上式；出处为 Proposition 5.4，印刷第 242 页、PDF 第 16 页，证明在印刷第 243 页、PDF 第 17 页。[Dusart, *Explicit estimates of some functions over primes*, Ramanujan J. 45 (2018), 227–251](https://doi.org/10.1007/s11139-016-9839-4)，2016 年在线发表。

这里没有假设黎曼猜想。论文证明使用无条件的解析估计以及已完成的有限素数间隔计算。作者 2018-02-26 的[勘误](https://www.unilim.fr/pages_perso/pierre.dusart/Recherche/correctif_RJ.pdf)修改 Theorem 3.5 的两处排印错误，没有声明改动 Proposition 5.4。它不是本项目的 Lean 定理。

来源取证：出版 PDF 从公开镜像下载，文件为 [Dusart publication](https://doi.org/10.1007/s11139-016-9839-4)，SHA256 `fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc`；勘误 [Dusart correction](https://www.unilim.fr/pages_perso/pierre.dusart/Recherche/correctif_RJ.pdf)，SHA256 `bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d`。作者的[出版列表](https://www.unilim.fr/pages_perso/pierre.dusart/Publications.html)与出版社元数据已核对。探索者读过 PDF 提取文本和相邻证明页；探索者的图片预览受 Windows sandbox 启动错误阻断。主任务随后通过获审查的只读取图流程成功视觉核对完整第 242 页，确认阈值、严格左端点及非严格右端点。原始失败记录保留在 first-memo.md。

## 3. 初等引理及证明

### 3.1 乘积与 LCM 的下界

对任意 a>=0、b>=1，有

\[
 \prod_{i=1}^{b}(a+i)\mid (b-1)!\,M(a,b),
 \quad\text{从而}\quad
 M(a,b)\ge \frac{\prod_{i=1}^{b}(a+i)}{(b-1)!}
 =b\binom{a+b}{b}. \tag{1}
\]

证明：固定素数 p，选一个 i 使 v_p(a+i) 在区间上最大，等于 v_p(M(a,b))。对 j!=i，由 v_p(a+j)<=v_p(a+i)，有 p^{v_p(a+j)} | |j-i|。因此其余各项的 p 进指数之和不超过

\[
 v_p((i-1)!(b-i)!)\le v_p((b-1)!),
\]

最后一步来自二项式系数 (b-1)!/((i-1)!(b-i)!) 为整数。对每个 p 合并，得到整除式。所有 a+i 都正，因此从整除式取大小是合法的。

### 3.2 区间 LCM 的二项式上界

对任意 a>=0、b>=1，有

\[
 M(a,b)\mid \binom{a+b}{b}\,A_b. \tag{2}
\]

证明：固定素数 p，设 e=max_{1<=i<=b} v_p(a+i)，h=max_{1<=i<=b}v_p(i)。设 N_s 为区间 a+1,...,a+b 中 p^s 的倍数个数。任意 b 个连续整数都有 N_s>=floor(b/p^s)，且

\[
 v_p\binom{a+b}{b}
 =\sum_{s\ge1}\left(N_s-\left\lfloor b/p^s\right\rfloor\right).
\]

若 e<=h，上界中的 A_b 已有足够指数。若 e>h，则对 h<s<=e，有 p^s>b，区间中恰有一个倍数，故该层差为 1；其余层差非负。因此二项式至少贡献 e-h 个 p，A_b 贡献 h 个，合计至少 e。逐素数即得 (2)。

### 3.3 前缀 LCM 的统一上界

对任意整数 N>=0，有

\[
 A_N\le4^N. \tag{3}
\]

给出初等证明以免隐藏另一个解析输入。N=0,1 可直接验证。N>=2 时令 a=ceil(N/2)、b=floor(N/2)，所以 b>=1、b<=a<N。由 (2) 及 A_b|A_a，

\[
 A_N=\operatorname{lcm}(A_a,M(a,b))
 \mid\binom{N}{b} A_a.
\]

对任意 N>=1 的二项式系数，Pascal 递推给出 binom(N,b)<=2^{N-1}：N=1 成立，内部项是上一行两个各不超过 2^{N-2} 的数之和，边界项为 1。用强归纳得到

\[
 A_N\le 2^{N-1}4^{\lceil N/2\rceil}
 \le 2^{2N}=4^N,
\]

其中 N-1+2ceil(N/2)<=2N。证明完成。

### 3.4 两个阶乘界

对 r>=1，

\[
 r!>\left(\frac r3\right)^r,
 \qquad
 \binom{N}{r}<\left(\frac{3N}{r}\right)^r\quad(N\ge r). \tag{4}
\]

证明第一式：二项展开和 binom(r,j)<=r^j/j! 给出

\[
 (1+1/r)^r\le\sum_{j=0}^r\frac1{j!}<3.
\]

最后的严格界可用 j!>=2^{j-1}（j>=2）及有限等比级数证明。r=1 的阶乘界成立；从 r 到 r+1，所需乘法余量恰为 3/(1+1/r)^r>1，故归纳成立。第二式用下降乘积 <=N^r 和第一式得到。

对 k>=2，

\[
 (k-1)!\le(k/2)^k. \tag{5}
\]

因为

\[
 ((k-1)!)^2=\prod_{j=1}^{k-1}j(k-j)
 \le(k^2/4)^{k-1},
\]

取非负平方根，再用 k/2>=1 即可。这不依赖 Stirling 公式。

### 3.5 相等 LCM 必须整除差值区间 LCM

假设 M(n,k)=M(m,k)=L、d=m-n>=k，则

\[
 L\mid\operatorname{lcm}(d-k+1,\ldots,d+k-1)
 \mid M(d-k,2k). \tag{6}
\]

证明：固定素数 p，令 e=v_p(L)。分别在两区间选择 i,j∈{1,...,k} 达到指数 e。于是 p^e 同时整除 n+i 和 m+j，故整除 d+j-i。由于 d>=k，

\[
 1\le d-k+1\le d+j-i\le d+k-1.
\]

所以每个最大素数幂都整除右边 LCM，得到第一重整除。第二重只是给差值区间多加入末项 d+k。对 e=0 不需额外论证；L=1 时整除也自动成立。

## 4. 位移不超过 8k 时的统一归约

k=1 时，M(n,1)=n+1、M(m,1)=m+1，而 m>=n+1，已经不可能相等。以下 k>=2。

假设 LCM 相等且 k<=d<=8k。由 (6)、(2)、(3)、(4)，

\[
\begin{aligned}
 L
 &\le M(d-k,2k)\\
 &\le\binom{d+k}{2k}A_{2k}\\
 &<\left(\frac{3(d+k)}{2k}\right)^{2k}4^{2k}\\
 &=\left(36\frac{(d+k)^2}{k^2}\right)^k
 \le2916^k.
\end{aligned} \tag{7}
\]

这里 d-k>=0，d+k>=2k，全部二项式参数合法。由 (1)、(5)，

\[
 (n+1)^k\le\prod_{i=1}^k(n+i)
 \le(k-1)!L
 <(k/2)^k2916^k=(1458k)^k.
\]

k>0 且底数非负，故

\[
 n+1<1458k,\qquad m=n+d<1466k. \tag{8}
\]

这一步对全部 n,m,k 给出统一界，并非只检查某个固定 k。

## 5. 首个起点不超过 369k 时的互补归约

仍设 k>=2 且 LCM 相等。对后一区间用 (1)，对前一区间用 (2)，得到

\[
 k\binom{m+k}{k}\le L\le\binom{n+k}{k}A_k.
\]

因为 n+k>0，

\[
 \left(\frac{m+1}{n+k}\right)^k
 \le\prod_{i=1}^k\frac{m+i}{n+i}
 =\frac{\binom{m+k}{k}}{\binom{n+k}{k}}
 \le\frac{A_k}{k}
 \le\frac{4^k}{k}<4^k.
\]

每一因子的下界来自 m+i>=m+1 和 n+i<=n+k。取正 k 次根可得

\[
 m+1<4(n+k). \tag{9}
\]

若 n<=369k，则

\[
 m<1480k. \tag{10}
\]

该区域允许全部位移 d；没有隐含 d<=8k。

## 6. 严格常数证书和所有大参数的排除

设 T=89693。下述全由整数、有理数和指数函数的标准级数性质得到：

\[
 e=\sum_{j\ge0}\frac1{j!}
 <\sum_{j=0}^8\frac1{j!}+\frac1{9!}\frac{10}{9}
 =\frac{8877691}{3265920}<\frac{87}{32}.
\]

尾项从 1/9! 开始，后续相邻比至多 1/10，且并非始终等于 1/10，所以该几何上界严格。整数比较

\[
 87^{57}<89693^5\,32^{57}
\]

于是 e^{57}<89693^5，取正五次根再取对数得

\[
 \log89693>\frac{57}{5},\qquad
 (\log89693)^3>\frac{185193}{125}>1480>1466. \tag{11}
\]

与 1480 的余量是精确的 193/125；没有用浮点近似证明临界不等式。计算脚本中的有理证书使用 Python Fraction 和整数幂；交付审计再明确检查 >1480。

若某一候选反例属于第 4 节或第 5 节的区域，而且 m>=T，则 (8) 或 (10) 都给 m<1480k。由 (11) 和 log 的单调性，

\[
 \frac m{(\log m)^3}<k.
\]

应用 (D) 存在素数 p 满足

\[
 m<p\le m+\frac m{(\log m)^3}<m+k.
\]

所以 p 在后一区间内；另一方面 p>m>=n+k，比前一区间所有数都大。因此 p 整除 M(m,k)，不整除 M(n,k)，矛盾。注意 (D) 的右端点是 <=；这里留有严格余量，所以没有端点等号漏洞。

因此两个区域内任何剩余候选都满足 1<=m<89693。这时 k<=m、0<=n<=m-k，已经是全部参数有界的有限问题。

## 7. 有限部分的完整覆盖与两个独立实现

### 7.1 为何只需 k<=71

若后一区间 (m,m+k] 含素数 p，则 p>m>=n+k，上一节的素数见证已经排除相等。因此只需检查没有素数的后一区间。

令 q(m) 是严格大于 m 的最小素数。完整筛表给出，对每个 1<=m<89693，q(m) 存在且

\[
 \min\{m,q(m)-m-1\}\le71.
\]

最大值的见证为 m=31397、q(m)=31469。若后一区间无素数，则 k<q(m)-m，故 k<=71。探索者的素数表做到 179387；在互补区域核验中，每一个 2<=x<=179387 的筛值都另外用所有整数试除数 2,...,floor(sqrt(x)) 重建并比较。这里不是概率素性测试。

### 7.2 探索者的滚动 LCM 与区间 Counter 核验

[check_finite_cones.py](check_finite_cones.py)对 1<=k<=71，构造原定义的 M(n,k)，0<=n<89693。它使用两个栈保存队列及各栈 LCM 聚合值；弹出最早项、加入下一项后，队列恰为 n+1,...,n+k。每个查询都是两栈聚合值的 LCM。

对给定 C∈{4,8}，扫描 m 时 Counter 恰保存

\[
 \{M(n,k):\max(0,m-Ck)\le n\le m-k\}
\]

及其重数：先加入 n=m-k，再删除已过期的 n=m-Ck-1。只要没有素数的后一区间值存在于 Counter，即得到允许范围内的一个相等值；反之，范围内每个相等值都会被命中。Python 字典比较完整大整数，不是仅比较哈希摘要。

[check_bounded_start.py](check_bounded_start.py)使用同类双栈队列，但 Counter 保存

\[
 \{M(n,k):0\le n\le\min(m-k,369k)\}.
\]

它没有 d/k 限制。每一步只加入新到达且 n<=369k 的前区间；停止加入后保留全部允许前区间。因此它完整覆盖第 5 节有限余项。

所有被允许的 (m,k) 都精确遍历，任何候选相等都会再次从原始两段整数直接调用 math.lcm 重算。基线队列还对 0<=n<=200、1<=k<=15 作逐项原定义对照；互补核验把该对照扩至全部 1<=k<=71。

实际命令（工作目录为本独立 worktree 根目录）：

```text
python research/tasks/B677-Lcm/explorer/check_finite_cones.py
python research/tasks/B677-Lcm/explorer/check_bounded_start.py
```

Python 为 3.14.0。运行结果：

| 范围 | 无素数 (m,k) 查询 | 经精确 Counter 同时覆盖的三元组数 | 相等见证 |
|---|---:|---:|---|
| 1<=m<89693，k<=d<=4k | 691093 | 17567901 | 无 |
| 1<=m<89693，k<=d<=8k | 691093 | 40070219 | 无 |
| 1<=m<89693，n<=369k，d>=k | 691093 | 2061156211 | 无 |

这些三元组数表示整数集合被查询覆盖的大小，不是逐组三重循环执行次数，也不衡量原题进度。详见 [finite-cones-result.json](finite-cones-result.json) 和 [bounded-start-result.json](bounded-start-result.json)。两个脚本分别用时 64.19 秒、32.01 秒。

脚本 SHA256：

- check_finite_cones.py：`f8a88eab194503657e292154dd891bc6880f32fb00b8ce32e47fb34bd650c19d`
- check_bounded_start.py：`4794f8e27382eb835f413c0a80cbc9c4fcf32c8160f0a5fc6cf337e3e1b1a305`

### 7.3 主任务的不同实现

主任务另用 LCM 稀疏表和每个精确 LCM 的最早起点扫描，覆盖所有 m<89693 的不相交等长区间，不加这两个区域限制；6368203 个区间查询没有发现相等。其素数表独立以逐数试除重建，对小起点作原定义 LCM 检查。记录见 [primary/finite_check.py](../primary/finite_check.py)、[primary/finite-check-89693.json](../primary/finite-check-89693.json)、[primary/prime-gap-certificate-89693.json](../primary/prime-gap-certificate-89693.json)。探索者读过结果文件，自己的实现未采用该稀疏表或最早起点算法。

两种实现都属于精确有限整数计算，均不是 Lean kernel 的穷尽证明。算法覆盖论证、实现正确性检查和独立实现一致是当前证据；新的审阅者仍应重跑并检查这些材料。

## 8. 结论、来源分工和验收边界

第 6 节排除两个区域内 m>=89693 的全部候选；第 7 节排除 m<89693 的全部相应候选；k=1 已单独处理。因此上述候选部分定理有一条完整的纸面与精确计算证明链。

来源分工保留如下：探索者首次独立提出 (6) 以及有界 d/k 的有限化路线，并先得到 C=4；首轮交换后主任务提出二项式上界改进至 C=8，以及 n<=369k 的互补区域；探索者独立重构了两条链并提供不同的有限算法。初等引理、LCM 周期理论、显式素数分布工具都可能有大量先例，暂无原创性结论。此前“LCM 相等值的起点必连续”这一辅助猜想已由重叠区间反例否定，见 first-memo.md；它不参与本文证明。

仍需完成的新上下文审查，应分别检查：原题对应、每条初等整除与不等式、(D) 的正确适用、整数常数、有限算法覆盖、实现和证据文件。主任务正在另行 Lean 化结构引理；本文未借用任何尚未核验的 Lean 成功声明。整个部分定理尚不能标为 Lean 已接受，更不是原题定理的证明。

下一有价值的数学问题位于 n>369k 且 d>8k；不再通过小幅改变常数掩盖这个无界区域。本子任务交付后停止当前 turn，供主任务发起新上下文审阅；以后是否开展 far-gap 研究由主任务分配。


来源缓存的获取位置、页码及哈希见 [SOURCE-MANIFEST.md](sources/SOURCE-MANIFEST.md)；完整论文和整页图像仅保留本地缓存，公开分支不重复分发。
