# 实际输入、固定版本与采用边界

## 访问事实

用户指定参考 `OVERVIEW2026-9-16-11.md` 和分支：

https://github.com/HuanHuanHuanFFF/lean-math-lab/tree/huan/b699-fivehour-20260916-6e72b0d4

通过 GitHub 连接器实际读取该分支 ref，观察到的 HEAD：

    da4d9bab862e8d3a3cc5e1676be52e4fa82722f3

总览中写的五小时数学快照：

    67b494c841d41a70b7e209940be417637a59a235

二者不混同。本文不声称 HEAD 是交付以后仍保持不变的最新版本。

总览通过 Files 检索并完整读取；工具返回其名字、文件标识与全文。尝试获取原字节时，Files 返回没有授权的 raw-byte materialization path。因此包中**没有伪造总览原文件或原文件 SHA256**；本文件记录读取事实，OVERVIEW.md 是本轮新写接续，不是所读总览的复制品。

未克隆完整仓库；未重跑未改动历史证据；未访问其他会话本轮正在生成的新结果；未推送、发 PR 或合并。

## 实际读过的固定入口

在指定分支或上述固定提交读取：

- AGENTS.md；docs/STRUCTURE.md 的相关布局/研究批次规则；
- .agents/skills/lean-research/SKILL.md；
- .agents/skills/lean-research/references/open-problem-workflow.md；
- research/tasks/B699-Binomial/README.md 的题面和入口；
- research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260916-pro-results/sources/ProB/notes/PROOFS.md，正文从第一节到末尾分两次读取。

最后一份数学稿的 Git blob SHA：

    a611c30e22216b46e4080bfaaabe8f9e80a0b188

固定源：

https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/da4d9bab862e8d3a3cc5e1676be52e4fa82722f3/research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20260916-pro-results/sources/ProB/notes/PROOFS.md

## 数学依赖逐项

1. 原题、NC3 定义、完整源幂/孤立3：来自总览与所读 B 稿，本文 PROOFS §1 从阶乘估值完整展开。
2. ROW128/ROW-3：旧 B 结果；本文 §2 重建其整数分配及常数。旧结果不计为本轮新发现。
3. B 的“两位只剩 E4/E5”仅用于选题和前沿对照；本文 TB 自己证明所有指数分支，不把 B 的模板结论作为黑箱前置。
4. B 的两源行刚性定理：读过其证明说明，但本轮主结果不依赖其成立，也未将其登记成独立接受。
5. A 的 H013、D 的分母消费者、五小时的其他计算证书：只知道总览所列状态；本轮未展开采用，也未上调接受等级。
6. 新结果 TB、BOX、GB、S1、S2、BR：由本文的原题源窗口、旧 ROW-3 重建以及新余式证明承担，不使用 Baker/Yu/Masser、椭圆整点、未附 CAS 输出或条件猜想。

## 公共文献检索

本轮对 binomial common prime / Erdős 699 作了定向公开检索，检索结果包括旧 McTague 论文条目。Erdős 699 站点正文访问返回403，另一正文请求未成功。没有把检索摘要或无法读到的正文作为新证明前置；未检索到的内容不作不存在或首创性的证据。

## 审核与新颖性

本轮为同一主线程作者纸面证明；SymPy 精确展开及原定义有限回归是真实运行，但不是独立 AI 审稿、人类同行评审或 Lean 内核验收。没有全历史覆盖差集证书，没有全世界新颖性断言。
