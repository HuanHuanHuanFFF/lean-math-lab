# 本轮新增出版输入及获取边界

## 主文

Kálmán Győry, “Bounds for the solutions of S-unit equations and decomposable form equations II”, Publ. Math. Debrecen 94 (2019), 507–526.
固定原稿：arXiv:1901.11289v1，2019-01-31。

- https://arxiv.org/pdf/1901.11289v1
- https://arxiv.org/html/1901.11289v1

读取：第4节的有限位绝对值、绝对对数高度与log*定义；Proposition5（PDF印刷页11，0-based页10）的原图；第5节正确使用负号的(5.7)、(5.14)。原命题陈述的右侧缺少负号，不能按原印刷式直接采用。

## 正式勘误

Kálmán Győry, “Corrigendum to: Bounds for the solutions of S-unit equations and decomposable form equations. II”, Publ. Math. Debrecen 97/3–4 (2020), 525.
DOI: 10.5486/PMD.2020.9043.

- https://publi.math.unideb.hu/paper/2418
- https://publi.math.unideb.hu/paper/2418/download/10_5486_PMD_2020_9043.pdf

出版商条目与摘要明确：Proposition5的下界漏印负号，原文后续证明已按正确符号使用，不需修改其他结论。它指向Evertse–Győry, Unit Equations in Diophantine Number Theory (CUP, 2015), Theorem4.2.1。后一本书本轮未阅读全文；不声称从书中重新验证底层线性形式定理。

## 被采用的特化

对Q上固定秩m=1或2的小素数生成群Γ，η∈Q*，H=max(h(η),1)，θ为生成元高度乘积。若ξ∈Γ且ηξ≠1，则

    −log|1−ηξ|_q < c_m (q/log q) θ H log*(q h(ξ)/H),
    c_1=48(16e)^8, c_2=6(16e)^11.

有限位采用|x|_q=q^(−vq(x))。本轮的ξ>1、ηξ=n/r>1，两个退化量均排除。H被完整保留，随粗部分W增长；归一化h(ξ)/H不可删除。全部粗素数保留在单个系数η，不进入Γ的秩或生成元列表。

## 获取记录

通过web读取了主文PDF图像和HTML正文、勘误出版商完整摘要。出版商勘误PDF本轮打开跳转到订阅提示；未尝试绕过。容器直接下载arXiv PDF也失败（普通请求DNS失败，下载工具亦报错）。因此归档中没有主文或勘误的PDF字节，也没有虚构PDF哈希；这里的版本、页码、URL与特化是可复查的采用记录。

检索中看过BEG2013 Proposition3.10和其他p-adic路线，但新主链不采用它们，也不把上轮非有效S-parts结果当作有效常数。
