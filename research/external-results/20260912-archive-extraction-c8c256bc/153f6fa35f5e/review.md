# 草稿独立复核（2026-09-08 UTC）

审阅对象：`external-research/report-draft.md` 与 `external-research/b686-paper-audit.md`；对照已接受基线、B677 findings、B699 checkpoint 及当前未跟踪 formalization snapshot。结论表格大体与基线一致，但发布前应修正下列状态和量词，避免把外部源码或进行中材料写成项目验收结果。

## 必须修正

1. **B686 的 18 界必须标成外部源码命题。** 草稿 `report-draft.md:86-88,197` 以及 `b686-paper-audit.md:50-56` 的数学推导本身按外部文件 `Erdos686CenterComponentLogStrip.lean` 的声明读取是清楚的，但“真实更强”“排除 `k²/64<d≤k²/18`”容易被读成当前仓库结论。固定验收 `research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/uniform/verification.json` 明确 `external_constant_18_locally_verified:false`；当前接受根是 `B686UniformRound9.uniform_distance_bound_sixty_four` 等 64 界根。应写成“外部源码声称／若固定 pin 复验成功则可排除”，并始终保留 `16≤k`、`k≤d`、`18d≤k²`。`b686-paper-audit.md:52` 中“本库…64”是准确的，不能让前面的 18 源码推论覆盖它。

2. **EvenTail 也不是当前 Lean 验收。** `report-draft.md:9,48-74,193` 可保留为高价值候选，但应加入 `source-level candidate / external v4.29.1` 标签。`.../independent/external/README.md:3` 说外部记录待审计且不能替代本仓验收；同轮 `.../independent/external-decision-review.md:3,39` 明确本分支未编译外部 Lean 依赖。精确量词是 `∀ r≥2`、`k=2r≥4`、`∀n` 且 `d≥max(2r,M_r)`，其中阈值依赖 `r`；不可简称为包含 `k=2` 的所有偶数，也不可暗示存在统一 `M` 或已直接可导入的终结器。

3. **Canonical owner 系统应标为未闭合的外部 provider。** `report-draft.md:76-82,196` 的“真正从原方程产生”是源码层面的必要条件，但当前 snapshot 只编译了 `CanonicalOwnerDensity.SystemInput` 小接口。`research/tasks/B686-Four/runs/20260908-formalization-92c221/notes/canonical/matrix-declaration-closure.md:98-105,120-130` 明确 provider/adapter 因 v4.29.1 递归依赖未在固定 v4.33.1 闭包中成功编译。请改为“外部 source claim／条件 handoff”，并保留 `4≤k`、`k≤d`、原产品等式及下游高度、非零性义务。

4. **B677 独立审计与仓库已接受事实要分栏。** `report-draft.md:11,114,195` 叙述的 `B677Audit.collision_iff_divisor_candidate` 有独立证据（`external-research/b677/verification/evidence.json`），但不在目标仓库 `Math/B677`，也不属于基线 acceptance。表 1 已正确没有把它列为现有 Lean 事实；开头和优先级表应明确写“独立研究目录的 Lean audit”，避免“导入即可”之读法。等价式必须继续保留 `k>0`、`V>0`，并把 C5-K4 正约数串只叫 `M(m,k)\mid V` 候选，不能叫原题反例。

5. **表格里的采样下界缺少量词。** `report-draft.md:25` 的“实际固定平滑采样误差下界”当前接受声明仅适用于 `k≥802` 的固定测试函数；没有 MRSTT 上界、周期范数到该函数的桥或完整 height assembly。应把 `k≥802` 与“固定函数下界”写进表格，否则会像全 `k` 的分析层定理。

6. **B677 剩余区域应给精确交集。** `report-draft.md:26` 的 `n>369k,d>8k` 是宽泛描述；若同时引用有限计算截断，应写成基线所记录的 `n>369k,d>8k,m≥89693`（并保留 `k>0,m≥n+k`），不要让读者误以为只剩两个不等式而忽略 `m` 门槛。

## 量词与新颖性检查

- B699 的 Prime Power Bridge（`report-draft.md:156-165`）当前保留了真实条件 `j<p^e`，因此 checkpoint 所述的模 `p^e` 证明方向是对的；后续压缩成仅 `p≥i` 会出错，必须保留 `a<i<j≤n`、`j<p^e` 以及素数、`e≥1`。`p=i` 分支应继续和现有 `i<p` cofactor pair 定理分开。
- `report-draft.md:15` 对“首次回收”的限定是恰当的。18 界、EvenTail、canonical matrix 都是已有公开提交中的源码／主张；最终稿避免“新发现”“已证明”措辞，改用“本次读取／外部候选／条件复用”。
- 开头 `report-draft.md:3` 的“全部实验均位于独立研究目录”过宽，因为同一基线下确有 `runs/20260908-formalization-92c221` 未跟踪进行中实验；建议限定为“本次外部审计的源码与实验”。

B699 候选/Lucas/失败例以及 B677 divisor-run 的数学归约与本基线 findings 一致；B686 的已接受 64 界、反射和/余因子边界与验收记录一致。若最终稿加入新 EEES1978 或其他计算来源，应另标为 paper/computational evidence（目前没有原始 Lean 或完整 campaign replay），不要并入“已接受 Lean”表。
