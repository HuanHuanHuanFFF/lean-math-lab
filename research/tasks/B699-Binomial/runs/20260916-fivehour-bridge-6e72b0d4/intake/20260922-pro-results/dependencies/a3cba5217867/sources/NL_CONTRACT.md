# 外部合同 NL-LENGTH3

作者：Michael A. Bennett、Aaron Levin。
题名：The Nagell–Ljunggren equation via Runge’s method。
版本定位：arXiv:1312.4037v1，第一页 Proposition 1，连同首页列出的四个例外。
访问核对日期：2026-09-21。

```text
https://arxiv.org/pdf/1312.4037v1
https://arxiv.org/abs/1312.4037
```

## 实际采用的命题（转述）

对于整数|x|>1、|y|>1、n_ext>2、q>=2，若 `(x^n_ext-1)/(x-1)=y^q` 不在首页列出的四个例外中，则n_ext的最小素因子至少为5。

令n_ext=3，便不存在非例外。四例中正x、n_ext=3只对应 `(x,y,q)=(18,7,3)`。故x>1时 `x²+x+1=y^a,a>=2` 只剩x18。

注意n_ext是外部幂长度，不是B699原n；x代入的是d=Delta。负x=-19虽在外部例外里，不属于当前正d。

这不是“整个Nagell–Ljunggren方程已解”的声明，也不需要采用本文主定理关于一般n_ext素因子个数的结论。

## 核验记录与版本限制

实际通过网页工具读取PDF第一页文字，并核对截图；页眉arXiv版本标记和页面内排版日期不一致，HTML自动呈现日期也不同。本包按固定arXiv标识、Proposition定位和实际公式采用，不据此宣称一个2026年新结果。

本包没有保存整篇PDF或声称其原文件哈希。`external_contract.json` 是声明依赖及精确特化，不是计算机证明外部命题。
