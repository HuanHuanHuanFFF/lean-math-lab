# 外部686证明的最小复用审计

## 来源和权限

- 仓库：[williamjblair/lean-proofs](https://github.com/williamjblair/lean-proofs)。当前main只列已闭合任务；686的新仓库链接不可访问，不由此推断不存在旧公开成果。
- 已找到公开分支 `codex/erdos686-corrected-package-final`；固定提交 [aff1d30b3b1c6bd705810fa4d588b03940fb31df](https://github.com/williamjblair/lean-proofs/tree/aff1d30b3b1c6bd705810fa4d588b03940fb31df)，时间2026-07-17。
- 原Lean/mathlib为4.29.1；本仓库仍固定4.33.1，适配后的源码必须重新编译、公理检查，不继承外部绿色状态。
- 原作者Will Blair，MIT许可，见[许可文本](LICENSE-Will-Blair.txt)。只提取与本目标有关的通用证明，保留来源；不引入该仓库的其他任务或外部未使用包。
- 外部分支约537MB、5478文件；本轮没有完整克隆，先下载三个相关源码和许可至D盘`.tools/external/686-aff1d30/`。对方报告和声明仍是待核查证据。

## 已核查声明和待验状态

[原CenterComponentLogStrip.lean](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686CenterComponentLogStrip.lean)第1239行的 `no_four_solution_of_quadratic_strip` 直接在 `k≥16,d≥k,18*d≤k²` 下排除原产品等式，没有额外开放假设参数。下载源SHA256为 `403ca583701c0df2641bed55ce6cbf85e0591cb1d535d94ef6d267b6cd889be5`，与该提交的attestations记录一致；这仍不是本机完整验证。

核心链为：最大赋值匹配把整个下块压入 `(k−1)!*lcm(d−k+1,…,d+k−1)`；精确区间LCM整除恒等式和初始LCM的 `4^N` 界；对称差乘积上界；阶乘尾部配对下界；原方程大小关系。它不需要未形式化的Rosser–Schoenfeld或积分输入。

## 05:29后的投入决策

暂停原250000界的分析消费者，保留已验RankProduct、Choose和Algebraic作为独立可复用产出，未通过候选保持未接受。优先用上述通用工具收尾。

为降低适配成本，先复用本仓库已有大小界导出 `k*d<3*n`（k≥6），目标采用保守的 `k²<64*d`。这已覆盖原250000目标，且比此前本仓库纸面排除区域更强；外部18界更强这一事实保留，不将64常数说成创新。若64链闭合，不为追18而自动追加证明工程。

- 主任务：`../main/MatchingLcm.lean`，对任意两块的完整gcd推广及原题桥。
- A：LCM、阶乘工具的必要切片和最终消费者，位于 `../uniform/`。
- 辅助：只补当前明确需要的固定依赖。
- 接受前：检查全部新源、真实依赖、公理和原始Nat/有理数题面；来源报告中更大范围的其他成果不自动纳入本仓库覆盖。
