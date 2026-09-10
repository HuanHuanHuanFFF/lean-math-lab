# 原始来源与假设核查

## 1. 用户提供的固定项目推导

`input/task_bundle.zip`，来源提交：`63a04b064d62e7e8752b1edd75c186d07dc57a20`。

本轮读取TASKS、report、低指标handoff、reduced-slope、quartic-content-crt、cubic-krawtchouk-gap、s-part-finiteness、two-cutoff、zero-boundary reduction。采用三窗口和原始U/V/D定义；旧Lean状态不升级。原始provenance中的每项哈希由复现器重新检查。

这些来源是用户给定的历史快照；没有声称读取主机当前工作区或最新提交。

## 2. Bennett–Filaseta–Trifonov（BFT）

论文：*On the factorization of consecutive integers*。

实际读取版本：作者托管2007-02-26预印本，35页。对应J. Reine Angew. Math. 629 (2009)论文；本轮不声称逐页核对过期刊最终排版。

原始URL：
`https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf`

### Theorem 2.1，印刷页4（PDF索引3）

实际读取正文并查看原页截图：表中(p,q)和λ、指数和余因子均非负整数、差的绝对值≤100、小值分支p^a A≤1000、双向例外列表及严格max结论。

主证明仅采用三对：

```
2,7  : 259/1000
3,11 : 329/1000
5,13 : 163/1000
```

所有明列例外的坐标最大值为1,771,561；n≥2^22且i≤33时实际窗口值全部大于该数。定理没有要求本轮额外证明余因子事先有常数界，也没有要求用radical代替完整幂。

代码中的14对整表只服务于附加方法分类，不是主高度证明必需。表值按精确有理数读取，未把原页小数当二进制浮点。

### Corollary 2.3，印刷页7（PDF索引6）

实际查看该页：给定正整数差界D，有有效可计算x₀(D)；若p^a A≥x₀(D)且差≤D，则max余因子严格大于(p^a A)的表列幂。阈值针对该表统一。

本轮D=32的C₀尚未数值展开。其表值与Theorem2.1不同，不得挪用前者的小值/例外范围。四项的已完成消费者明确依赖C₀。

### 访问记录说明

首次成功读取正文及两页截图；最终自审再次请求正文时出现超时，但原页截图仍成功返回并再次核对了表和异常条件。没有把这次重取超时说成从未读到原文，也没有假称它成功。

## 3. Bugeaud–Evertse–Győry（BEG）

论文：*S-parts of values of univariate polynomials, binary forms and decomposable forms at integral points*。

实际读取版本：作者托管最终稿，40页。

原始URL：
`https://irma.math.unistra.fr/~bugeaud/travaux/BuEvGy-AAdef.pdf`

Theorem2.1(i)的声明横跨印刷页3–4（PDF索引2–3），本轮读取并查看截图。假设：整数多项式度≥2且无重根、S为有限非空素数集合、ε>0、f(x)≠0。结论的常数仅依赖f,S,ε，但来源明确此版本非有效。

代入：f=X(X−1)(X−2)(X−3)，S={2,3}，ε=1/48，度4；24U₄=[f(n)]S。故上界指数为4(1/4+1/48)=13/12。与新U₄下界7/6产生严格指数间隙。

同页Theorem2.2的有效结果是另一指数，不被偷换成Theorem2.1(i)的有效版本。

arXiv v1 PDF直接访问曾失败；成功读取的是上述作者最终稿，另曾读取arXiv HTML核对标题和声明。没有用失败PDF声称完成原页核对。

## 4. 不属于外部黑箱的本轮推导

I/J/W公式、合法区域非零、j消去、三对余因子乘积、七项高度消费者、T₃/T₄全多项式阈值和圆锥参数化均在REPORT中给出证明。

代码检查只验证有限代数与数字，不重证BFT/BEG论文，不替代无限量词推导。不附外部整篇版权论文副本，按上述版本和页面复核即可。
