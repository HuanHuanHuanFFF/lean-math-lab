# i18：theta 来源错误与不改变原阈值的修复

核验者：独立 AI `/root/i18_review`。本附录替代原 REPORT §4.4 与 notes/CONTENT_PROOF.md §3 的无限部分。原字节不修改；原报告不能原样接受。这里给出的修复不改变三条 G 定理的 L、m0，不改变原有限块、十条 Padé 数值、600000 位高度、指数块或 CRT/末端数据。

## 1. 发现及来源

固定作者稿：Bennett–Filaseta–Trifonov，*On the factorization of consecutive integers*，February 26, 2007，印刷页19，Lemma5.4。下载地址：<https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf>。本次下载 219865 字节，SHA-256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`。

原文短引：“Furthermore, for x ≥ 10^8, we have” 后的公式是

    |theta(x) - x| <= 0.000213 x.

因此 eta = 213/10^6。原 REPORT 第223行、CONTENT_PROOF 第45行、content_bounds.py 第18行和 check_content_bounds.py 第16行都误用了 213/10^7；生成器的注释还明确写了错误的小数，说明这不只是显示层笔误。

证据：`publication/page-19.png` 与 `publication/theta-constant-confirmed.png` 为原页/局部渲染；`publication/page-19-extracted.txt` 为 pypdf 抽取，显示 `0. 000213x`；网页 PDF 文本抽取也独立显示 0.000213。出版列表另确认该文于 J. Reine Angew. Math. 629 (2009), 171–200 发表：<https://personal.math.ubc.ca/~bennett/publ.html>。本次实际核对的公式版本仍是上述固定 2007 作者稿，不声称逐页比对了最终排印本。

直接用正确 eta 替换、保持旧 M 和旧 e 时，三行尾部总余量约为 0.00197165、−0.00535436、−0.00493590。即便丢弃由此变负的项，后两行仍为负。因此原来的单段无限尾部证书不能直接通过，七条使用新 G 的 Padé 行失去该依赖。此诊断不反驳 G 定理或 B699；它指出原证明的来源/预算缺口。所有有限素数区间块不使用 eta，故不受此错误影响。

## 2. 原 G 区间公式保持成立

设 N=c+d，t=Nw+r，j≡dr (mod N)，N/2<j<N，g=d（j≥c）或 c−d（j<c），v=gw+1+floor(gr/N)。令

    X(m)=A m−B, A=N/t, B=2/t;  Y(m)=C m, C=g/v.

BFT (5.14)/(5.15) 的共同弱化仍给两种 delta∈{0,1} 的区间贡献 max(theta(X(m))−theta(Y(m)),0)。m≥2N(W+1) 保证所用固定 w 范围合法。j=c 时 r=N−1，两个 g/v 都等于1/(w+1)。本次目视核对了原稿17–19页，这部分不需要修正。

## 3. 原 M 到 T=10^9 的解析桥

三行的原 M 分别为 30000000、6000000、3000000；保留原证书的106、95、78项，沿用其中的有理数 e0。对每项已精确核对

    e0≥0, e0²≥(259/125)² A/M, AM−B≥1,
    AT−B≤10^11, CT≤10^11.

最后两条的最大左值分别如下：

| c,d | max X(T) | max Y(T) |
|---|---:|---:|
|3,2|2499999999|2000000000|
|15,8|11499999999|8000000000|
|15,11|12999999999|11000000000|

所以对全部实数 M≤m≤T，BFT 的小范围结论直接给

    theta(X(m))≥(A−e0)m−B,  theta(Y(m))≤Y(m).

其中第一式由 e0² m²≥(259/125)² A m 和 X(m)≤Am 得到。这里完全不使用错误的相对误差。令 b=A−C−e0−B/M，则每一项贡献至少 b m。279个 b 全为正，三行总和分别严格大于 d log L；经过独立有理对数界核对，余量约为 0.00419460、0.00482727、0.00748219。

因此原有限块最后的 m=M−1 之后，到 T 的全部整数 m 均被覆盖。

## 4. 从 T 起的正确无限尾部

固定 eta=213/10^6，epsilon=1/100000，并对每项取

    e = eta A + epsilon.

由于

    4 eta epsilon − (259/125)²/T = 16511/3906250000000 > 0,
    e² − (259/125)² A/T
      = (eta A−epsilon)² + [4 eta epsilon−(259/125)²/T] A ≥ 0,

故 e≥eta A 且 e²≥(259/125)² A/T，不需要开方数值。对全部 m≥T，原稿中 [1,10^11] 的平方根误差与 [10^8,∞) 的正确相对误差范围重叠，统一给

    theta(X(m))≥(A−e)m−B.

而对所有 y≥0 有 theta(y)≤(1+eta)y（y<1 时 theta(y)=0，其余来自同两个范围）。因此令 h=A−(1+eta)C−e−B/T，便有每项贡献至少 h m。固定的279项全部 h>0，三行严格余量为正：

| c,d | 项数 | sum h−d log L 的已核对下界，近似显示 |
|---|---:|---:|
|3,2|106|0.0088599100|
|15,8|95|0.0311923181|
|15,11|78|0.0483428964|

完整分数在 `CORRECTED_THETA_CERTIFICATE.json` 与 `CORRECTED_THETA_CHECK.json`，小数不用于接受。桥覆盖 M≤m≤T，尾部覆盖 m≥T，在 T 重叠；没有未处理的整数。

## 5. 结论与证据边界

结合原来的连续有限块，三条原定理仍成立：

- (c,d)=(3,2)，L=8103/5000，对全部整数 m>12018；
- (15,8)，L=4541/2500，对全部整数 m>4211；
- (15,11)，L=361/250，对全部整数 m>1373；

均有 G(c,d,dm−delta)>L^(dm)，delta=0,1。因此修复后十条 Padé 使用的所有输入不变，所有下游的量词连接和有限数学数据可以保留。

构造程序 `build_corrected_theta.py` 用100项 atanh 正项展开计算对数上界；检查器 `check_corrected_theta.py` 不导入它或原生成器，以180项 −log(1−u) 展开独立核对全部279项、来源哈希、两个区间的域、正余量和接合。实际返回 `PASS_CORRECTED_ANALYTIC_BRIDGE_AND_INFINITE_TAILS`；错误 eta、错误过渡点、缺项和零误差四种变体都被拒绝。

本附录是独立 AI 重构的纸面修复加精确有理检查，未经过第二位独立审读者或人类审稿，也未 Lean 化。本轮没有重新筛素数或复跑指数块、CRT、末端全量。采用原有限证书时仍须绑定其已有验收记录；本附录不凭自身创造新的有限验收。

`BOUNDED_PAPER_SUPPORT.json` 记录本轮发现错误之前对原数字的有限辅助检查，其旧 eta 尾部检查已被本附录取代，不能继续作为无限接受依据。原报告、原失败预算和本轮修复保留在不同文件中，不改写历史。
