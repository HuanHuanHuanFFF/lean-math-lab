# 来源审查、实际读取与未读边界

## 私有/项目输入

直接解包读取上传的 TASKS.md、source/B699-middle-index-review-20260909.md；此前报告与证据 ZIP 从本对话真实挂载路径复制，未改其字节。Files 内容检索未命中，因此使用实际挂载文件，不由网页替代用户文件。

项目固定 pin 通过已连接 GitHub 读取了 lake-manifest.json；mathlib 原代码通过同一连接读取。具体版本见 pinned-source-provenance.json，实际源代码见 mathlib-pinned-excerpts.md。未读取另一会话的主机盘或实时验收状态。

## 直接读取的原始数学来源

1. J. Barkley Rosser and Lowell Schoenfeld, Approximate formulas for some functions of prime numbers, Illinois J. Math. 6 (1962), 64–94。直接打开 31 页原论文 PDF，并查看第 6 张页面（印刷 p.69）截图：Theorem 2 式 (3.4) 是 π(x)<x/(log x−3/2)，范围 e^(3/2)<x。该计数输入在本轮主方案中已经删除。

```text
https://denisevellachemla.eu/Rosser-Schoenfeld-1962.pdf
https://doi.org/10.1215/ijm/1255631807
```

2. Pierre Dusart, Estimates of some functions over primes without R.H., arXiv:1002.0442v1。直接打开 20 页 v1，并查看第 8 张页面的截图。Proposition 6.8 的准确条件是 x≥396738，见证 x<p≤x(1+1/(25 log²x))。同页明确引用 Schoenfeld 的开区间 (x,x+x/16597)，适用 x≥2010759.9。本轮主方案只使用 Proposition 6.8，不使用同文的计数上界。没有重新证明其背后的显式素数估计或把它标成 Lean 现成定理。

```text
https://arxiv.org/pdf/1002.0442v1
```

3. Hiroki Aoki, Riku Higa, Ryosei Sugawara, Existence of primes in the interval [15x,16x] — An entirely elementary proof, arXiv:2503.06069v3。直接读取摘要、Theorem 6 的阶乘比条件及后续构造，并查看相关页面截图。它的 P(k) 表述是：每个指定正整数 N 存在某个阈值，之后每个 [kx,(k+1)x] 含至少 N 个素数，k≤15。本轮没有提取具体可用阈值，没有复核其全部大周期 floor 计算，也没有将其收入接受依赖。

```text
https://arxiv.org/pdf/2503.06069v3
```

## 未成功取得的原论文

Lowell Schoenfeld, Sharper bounds for the Chebyshev functions θ(x) and ψ(x). II, Math. Comp. 30 (1976), 337–360, Theorem 12。

AMS PDF 返回错误/403，JSTOR 重定向为元数据页，mathscinet.ru 原文副本多次超时，容器 download 同样失败。所以本轮只核对了 Dusart 原文中的明确引用，没有声称重新读取 Schoenfeld p.359 的原始证明。主方案用直接已读的 Dusart Proposition 6.8 即可完整闭合；Schoenfeld 仅作为附件既有可选接口说明。

```text
https://www.ams.org/mcom/1976-30-134/S0025-5718-1976-0457374-X/S0025-5718-1976-0457374-X.pdf
https://www.jstor.org/stable/pdf/2005976.pdf
https://mathscinet.ru/files/sqrtlog8.pdf
```

数学陈述未发现与附件应用冲突，但没有将“找到更早论文”自动视为“更便宜的 Lean 证明”。
