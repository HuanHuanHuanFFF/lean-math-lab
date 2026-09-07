# Saradha–Shorey 1990 原文审计

审计分支：B686 第七轮 A；审计时段2026-09-07 17:56–18:08 UTC。目标是核对原定理的量词、适用条件和常数性质，不把综述替代原文。

## 来源和可复现访问

N. Saradha and T. N. Shorey, *On the ratio of two blocks of consecutive integers*, Proceedings of the Indian Academy of Sciences (Mathematical Sciences) 100(2) (1990), 107–132. DOI：[10.1007/BF02880956](https://doi.org/10.1007/BF02880956)。

原刊全文：[IAS公开档案](https://www.ias.ac.in/article/fulltext/pmsc/100/02/0107-0132)。本机 `Invoke-WebRequest -Uri <URL> -OutFile research/tasks/B686-Four/round7/a/saradha-shorey-1990.pdf -PassThru -TimeoutSec 25` 返回HTTP200。26页、929068字节；SHA256 `52C19760BCD8EBFD7B25186CD63FC0560BEAE9E2025716C0E14852B1FBA6852F`。

原件：[saradha-shorey-1990.pdf](saradha-shorey-1990.pdf)。提取文本：[source-text.txt](source-text.txt)。使用本机既有pypdf提取、Poppler渲染；实际视觉核读107、110、111、113、114、115页，关键页保存在同目录`original-*.png`和`page-*.jpg`。扫描OCR有错误，例如114页(43)实际为x≥k^(3/2)，不能依据OCR猜指数。

访问失败另记于[分支日志](README.md)：web访问IAS失败但本机下载成功；ResearchGate无可提取文本，web截图没有可供模型读取的图像；本地view_image受helper故障，改从已渲染文件显示图像。上述均是访问/工具问题，不是数学障碍。

## 精确声明和本题映射

原107页设a,b为互素正整数；全文约定x,y为非负整数，k≥2，l≥0，k+l≥3。式(1)要求x≥y+k+l，式(2)为

    a ∏_{i=1}^k(x+i) = b ∏_{i=1}^{k+l}(y+i)。

原110页Theorem6的共同前提就是式(1)+(2)。原111页Theorem6(d)说明存在仅依赖a,b的有效可计算C17>0，使x−y≥C17 x^(2/3)。该项没有要求P(x)、P(y)、P(x−y)有界，没有要求固定素数集，也没有另加“大x”或“大k”前提。

本题直接取a=1,b=4,l=0,x=m,y=n。因此原定理覆盖k≥3，而k=2不在它的k+l≥3域内。综述用了从x起的乘积；其x=m+1、y=n+1与原文符号不同。两套符号不能混用。

由本题的m>kd/2和d>0，原文下界推出

    d³ ≥ C17³ m² > (C17³/4) k²d²，
    d > (C17³/4) k²。

这是原文支持的纸面推论。C17的实际数字没有在原文定理中给出，本轮也没有从原证明全部隐含阈值反算C17。

## 相关证明核对

- 113页Lemma5式(32)、(33)，l=0时分别给x−y≤c1(k+x/k)及x−y≥c2 y/k，常数有效且只依赖a,b。
- 114页Lemma6，l=0时给x(logx)²≥c6 k³(logk)²。其证明先约化到充分大k和x<k³，再按素数范围分拆两块乘积的gcd。
- 小素数≤k：逐素数删除块中最大赋值项，剩余赋值由k!控制。中间素数k<p≤2k+l−1单独估计。
- 大素数p>2k+l−1：gcd的这部分整除跨块差的连续乘积除以(2k+l−1)!。l=0时就是binom(x−y+k−1,2k−1)。
- 115页合并这些估计成式(45)；随后由Lemma5和Lemma6得到Theorem6(d)。该段不使用之后才陈述的Baker/Yu对数线性形式。原证明仍有素数计数、素数间隙和“充分大”阈值；本轮没有逐项重证这些原文外引。

本题可把同一gcd结构单独写成通用不等式，并用一个已核读的显式素数计数定理取代隐含阈值。由此得到的明确数字是本轮的特化推论，不是论文印出的C17值。见[显式界完整证明](explicit-bound.md)。

## 显式素数计数输入的原源

J. Barkley Rosser and Lowell Schoenfeld, *Approximate formulas for some functions of prime numbers*, Illinois Journal of Mathematics 6(1) (1962), 64–94，DOI：[10.1215/ijm/1255631807](https://doi.org/10.1215/ijm/1255631807)。

原69页Corollary1式(3.6)：对所有实数x>1，π(x)<1.25506x/logx。该不等式无RH前提；同页较前式(3.5)的x≥17仅用于另一条下界，不得误移到本次所用上界。

原刊PDF端点遇TLS/安全检查，公开影印镜像HTTPS失败但[HTTP镜像](http://denise.vella.chemla.free.fr/Rosser-Schoenfeld-1962.pdf)下载HTTP200。31页、2520753字节；SHA256 `8E37B06F82E09421BCEB2502578C47B61469141F0287E6ACEDB70E01765AB556`。原件[rosser-schoenfeld-1962.pdf](rosser-schoenfeld-1962.pdf)，原69页已视觉核读，保存`rs-page-69.jpg`，提取文本`rs-source-text.txt`。OEIS也提供[原论文若干页影印索引](https://oeis.org/A000720/a000720.html)。本轮核读的是定理声明和该页说明，没有重做原文后续解析数论证明及历史有限计算。

## 状态和边界

原定理适用性：已核。原常数有效性：原文明确声明。原C17数值：未求得。完整原证明外引链：未重证。本轮具体二次界：有完整纸面特化证明及主任务交叉复核，尚无Lean证明。新颖性未调查、没有外部评审、没有提交或公开。
