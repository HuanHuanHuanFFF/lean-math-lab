# 工具效力与公开证据的读法

协调者Root的来源备忘，2026-10-05。这里登记方法作用范围和源声明，不做数学接受；具体技术路线评价由具名审读者交付。

## 本轮已改变判断的发现

1. **701有新的全数学证明声明。** [Chang–Liu–Liu](https://arxiv.org/abs/2609.19123) 与 [Ellis–Filmus–Friedgut](https://arxiv.org/abs/2609.28404) 的9月预印本覆盖有限下闭集合族，后一稿7页直接谱证明。bounty_screen核了paper/platform量词、mathlib Intersecting含self与空集边界，结论为题面对应；没有Lean接受。它不是此前所说“只有小地集有限搜索”的状态，原公开数据库尚滞后。
2. **题目仍展示奖金额不等于可领奖。** 初读[FAQ](https://conjectures.io/faq)为站外解决即退池的概括，后由inventory读取LIVE v6/v3并与[官方当前提交条款](https://github.com/conjectures-io/conjectures-validator/blob/main/docs/SUBMISSION_TERMS.md)逐字比对，资格应按新具体条款：NOT_NOVEL需先有dated public同一direct target结果，而且submitted proof实质实现其特有论证；共享结论、普通策略或library并不足。PRIOR_EXTERNAL_FORMALIZATION要求此前公开可检查的同target完整形式化，仅announcement不够。因此不把所有已知数学形式化一概判永不付，但照701谱稿实施有明确NOT_NOVEL风险，不能作为可靠领奖方案。
3. **257有奖与277原pool分类不同。** inventory任务通过同站公开API三页取全目录，临时回报277唯一targets，其中bounty.available=true共257、ALREADY_SOLVED共20。API is_open全部true属于原pool分类，不能作当前资格分母；最终冻结统计以CATALOG与INVENTORY为准。

## 已读的全局推进原始索引

- [Feng等：Semi-Autonomous Mathematics Discovery with Gemini](https://arxiv.org/abs/2601.22401v3)，2026-02-05修订。原论文区分新论证与重新找到旧文献，935新颖性分类已修正。成功案例不能代替当前赏金pool的分母或单题概率。
- [Somani原仓](https://github.com/neelsomani/gpt-erdos) README说明新证明、文献、hidden constraints、条件证明和细微错误；剩余材料多为非改进证明。索引有用，不能把目录中proof文件视为当前完整target接受。
- [AlphaProof Nexus论文](https://arxiv.org/abs/2605.22763v2) 与 [官方结果仓](https://github.com/google-deepmind/alphaproof-nexus-results)，仅将其公开成功源码当候选证据，逐题核target/变体。第三方同名仓不是官方交付。
- [FrontierMath Erdős](https://arxiv.org/abs/2609.25050v1) 与 [公开benchmark仓](https://github.com/epoch-research/LeanOpenProblems)。论文说明选题、预算、工具与题面变体造成的差异；126的新结果是下界，不等于平台的上界目标。论文百分比不外推本pool或本聊天成功率。
- [teorth数据库](https://github.com/teorth/erdosproblems)、[AI贡献索引](https://github.com/teorth/erdosproblems/wiki/AI-contributions-to-Erd%C5%91s-problems)、[Formal Conjectures](https://github.com/google-deepmind/formal-conjectures)、平台contribution/结果feed由inventory逐项对应。数据库和paper日期不一致时保留冲突，不能只选有利状态。

## 工具改变什么，仍需什么

| 工具 | 可给的真正推进 | 不能自动补上的缺口 |
|---|---|---|
| SAT/ILP、群作用、对称破缺 | 固定阶结构的完整穷举、明确有限见证或不可满足证书 | 所有阶/所有参数的结论；搜索失败不是不存在 |
| SDP/SOS、flag algebra | 已固定的图密度/局部配置不等式及有理证书 | 数值优化结果到精确sharp常数、极值稳定性、有限图舍入及全部规模 |
| 椭圆曲线、有理点、Mordell–Weil、模方法 | 固定参数低亏格支路的全高度结果或参数构造 | 宽度/支持集合增长后的所有曲线；模可解不保证共同整数点 |
| S-unit、Baker/对数线性形式、Størmer | 在固定素数支持/固定宽度下有效高度或有限性 | 支持集合、宽度、指数全都变化时统一界；有效界仍可能不可执行 |
| CRT、p-adic赋值、Kummer | 满足有限局部条件、准确刻画素数幂需求 | 构造后来产生的全部素因子、密度/存在性和内部项同时成立 |
| 筛法、概率法、半随机构造 | 密度估计、正密度见证族、消去大片结构族 | 密度0到集合为空、临界log因子消除、对每个输入的统一结论 |
| 熵/压缩/Fourier/谱方法 | 将组合全称问题归约到统一不等式/相关性/秩界 | 若承重不等式本身未知，改写不是证明；谱数值实验不是全称证书 |
| Lean/独立checker | 在固定题面下检查已提供的完整证明和实际依赖公理 | 产生缺失数学机制、修复错误假设、保证新颖性或赏金资格 |

上述是工具的作用域，不是宣称某工具在某题有新突破。本轮不试运行求解器，不承诺现有Lean库已含全证明所需前置。必须把工具选择绑到每题具体未证义务，再给一个能改变决策的首检。

## 可行性评级规则

- **已有完整纸面路线，主要剩验证/形式化：**仍查target、原数学论证与前置规模；赏金资格单列。
- **值得做判别性探针：**命名一个具体尚未核实的桥，说明成功会消去哪片无界未知域，失败如何淘汰路线。
- **现有方法不足：**原source给定局部接口缺全局供应、uniformity、有效范围或sharp常数。记录不足属于特定方法还是全题；没有证据不扩成所有方法不可能。
- **本轮资料不足：**原全文、脚本、依赖或接受记录不可读取；保持unknown，不能把搜索未见当证明无机会。

公开实验的阴性结果只支持被完整覆盖的搜索域；模型自述、自家AI审读、有限整数重算、Lean接受、source faithful及数学原创分别登记。最后推荐按完整主奖的闭合路径与成本，不按局部文件数或参数上限。
