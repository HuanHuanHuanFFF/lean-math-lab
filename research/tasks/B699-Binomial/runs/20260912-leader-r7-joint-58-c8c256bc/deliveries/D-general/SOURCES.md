# 来源、冻结输入与公开接口核对

## 私有冻结输入

1. `B699-ProD-R7-results-20260912.zip`，SHA256 `3a7bd771e359b97687f527c97454d051734365b3cec12b5333610583b4ec6f5b`。读取REPORT、HANDOFF、notes/PROOFS、MINIMAL_INTERFACE、FAILURES，并重放其六步接受链。用于完整五因子非空及既有边界。
2. 本会话误接B后归档的 `B699-ProB-R7-primepower-closure-results-20260912.zip`，SHA256 `a0eb7676a54af78624348818304a70c9e530a040459c1565fc4c308599423971`。读取REPORT、HANDOFF、PROOFS；其§1初等重建和§2互补商为直接上游。原单侧a≤21结果保留，不重复计功。

实际解包路径及v2不可用记录见input/INTAKE.json。输入文件逐成员与原ZIP比较，原ZIP字节另存input/archives。v2三个指定文件未读；没有把摘要冒称原件。

## [BEG13] 两个分别核对的公开数学接口

Attila Bérczes, Jan-Hendrik Evertse, Kálmán Győry,
*Effective results for hyper- and superelliptic equations over number fields*, arXiv:1301.7168v1 (2013-01-30).

公开定位：`https://arxiv.org/abs/1301.7168`；PDF：`https://arxiv.org/pdf/1301.7168`。

本轮通过web实际打开31页PDF，并截图核对PDF第4、11、12页（印刷页码4、11、12）；不是只引用搜索摘要。container直接下载DNS失败，未保存本地PDF原件，故无PDF字节哈希。

- 印刷页11—12，§3.5及Proposition3.10：绝对高度按次数归一化；实位N(v)=2。使用d=2、三个代数数的明确特化；非零线性形式/指数范围、每个高度、常数放宽均在新PROOFS §6逐项证明。
- 印刷页4，Theorem2.2和其前置定义：Q、S={∞}、次数4、非零整数乘子、无重根多项式。每个新四次模板的无重根性和系数界已独立展开；原数值前因子为16^(212·4⁴)=16^54272，指数12800=50·4⁴。这是新PROOFS §9的接口。

没有使用2017年Bugeaud–Evertse–Győry有效S部分结论的未经核对常数，也没有采用E报告被指出有异议的统一S-unit建议。

## 未采用的外部信息

Erdős–Szekeres原论文只曾用于早期gcd探针的方向检查；没有任何新消费者调用其中的新外部定理。新默认检查器只用标准库。mpmath用于生成p/q候选，sympy用于探索和找实例；最终接受不信任它们的数值或素性标签。

## 原文常数的排版交叉核对

另读取 Bui–Pratt–Zaharescu, *A problem of Erdős–Graham–Granville–Selfridge on integral points on hyperelliptic curves* 的 Cambridge Core 正式研究论文正文，Lemma6.2以可读LaTeX重述(4n)^{212n^4}H^{50n^4}并明确注明来自[BEG13] Theorem2.2。用来排除PDF文本把“212”与“2的幂”混淆的风险；本轮仍采用BEG原文允许b=w的版本，没有把该重述的b=1版本直接代入。

定位：`https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/problem-of-erdosgrahamgranvilleselfridge-on-integral-points-on-hyperelliptic-curves/4B9D41CA5BF810F513A7A8DF4315EEE5`。
