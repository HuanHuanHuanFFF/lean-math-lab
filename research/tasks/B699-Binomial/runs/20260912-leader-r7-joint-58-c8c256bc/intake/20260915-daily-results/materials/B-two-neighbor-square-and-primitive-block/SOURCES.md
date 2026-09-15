# 来源采用与依赖分层

## S1. 唯一采用的冻结研究源

`B699-R7-ProB-periodic-block-and-double-run-closure-evidence-20260915.zip`。

原字节位于 `sources/previous.zip`，SHA-256为
`2359c1e2041400eec6f24d472b0a386e87ff52e47885f8cd224b3303424e7126`。

直接读取其REPORT、HANDOFF及notes/PROOFS；三个原文字节已逐一与ZIP核对，映射、大小、哈希在 `SOURCE_ADOPTION.json`。本轮没有读取最新在线仓库，也没有读取其他会话当前成果。

采用内容：NC3的α形状、完整p幂窗口与奇行/非4倍数排除；上轮k≥3的完整重复字块定理；最近的准确失败边界。新平方因子主定理只需基础前置，正文重写；合并为任意k≥2时才使用旧k≥3消费者，未重跑其历史接受链。

S1等级维持“作者纸面推导＋确定性证书，未Lean，未外部独立研究者/人审”。它不是已经独立验收的数学事实清单，本轮也没有审计其全部历史依赖。新主定理的完整推导在本轮正文中可独立检查。

## S2. 定向外部核对

官方 mathlib 文档：
`https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html`

本轮实际网页读取的内容：Nat.factorization_factorial (Legendre)、Nat.factorization_choose (各层进位计数)。访问日期2026-09-15。网页读取不等于本项目固定版本内核验收，也没有调用其中的已编译对象。

这些公式已经在S1采用，本轮重新由阶乘地板和展开；不依赖其源文件作为未经证明的公理。没有新增BFT、Padé、Matveev、BEG、S-unit或素数分布输入。网页原HTML未保存；没有伪称包内附有该文件。

## 发现与验证软件

发现阶段使用过现有SymPy作小三次式因式分解，另编译过C++17小范围探针；它们均不在默认接受依赖。最终无限身份、覆盖证书和有限底部检查只用Python标准库。两套实现都由本会话编写，不能称作第二独立研究者审稿或Lean验证。
