# (5,3) 八个固定数值证书

Owner `/root/i18_downstream_review`，唯一目录为本 run 的 `experiments/huan-i11-five-three-numeric-5e2d13bb/`。开始 2026-09-11 15:37:06 UTC；20 分钟检查点 15:57:06 UTC。四个源均是**未编译候选**；未运行 Lean、Git、下载，也未改旧实验或共享源。

目标：解除刚冻结 FixedEdge 的八个数值输入。实际交付：这八个精确命题均已有无数值假设的 Lean 候选，并准备了只保留真实增长树输入的最终实例。显式整数检查最大 **1,190 bit**，没有重新计算旧千万位 selector 目标，也没有重新展开 A3 的 213 次幂。原 m=213、Y0=2^15359、Z、A3、权重全部保持。辅助幂 6 和 36 只用于证明原 213 次幂命题，不改变所选 Padé 指数。

## 固定常量与八个目标

`Z=5726930071079973414170`, `M=213`, `Y0=2^15359`。p=5 对 N=20000、weight=354、alpha=646；q=3 对 N=35000、weight=228、alpha=772。

原实际 `qRate qBase` 精确等于 N_A/D_A，其中

`N_A=1694801261684299070333536458252484608`，
`D_A=1476369155193264712520030439541015625>0`。

`ActualNumeric.actual_a3_eq_rational` 直接展开实际 qRate、qBase、beta 与原 qLambda 并给出该等式；没有定义一个与原对象脱离的新 A3。

八条实际目标是：

1. `(48:Q)<(qRate qBase)^213`。
2. `Z^(M-1)<=4*Y0`。
3. `5^20000<=Z^646`。
4. `(5^20000)^M<=Y0^646`。
5. `4^646*(5^20000)^(M+1)<=Z^(646*M)`。
6. `3^35000<=Z^772`。
7. `(3^35000)^M<=Y0^772`。
8. `4^772*(3^35000)^(M+1)<=Z^(772*M)`。

这些完整类型集中在 `ActualNumeric.actual_numeric_certificates`，使用冻结 FixedEdge 的实际 `fiveThreeZ/fiveThreeM/fiveThreeY0/qRate/qBase`，并非假设包。每条单独证明在 RatioPower 或 Selector 中也有审计入口。

## 小整数证明

**A3**：两个固定整数 N_A、D_A 各为 121 bit。`Basis.a3_sixth_integer` 用内核 `decide` 证明 `2*D_A^6<=N_A^6`，左右分别 722/723 bit。正分母允许用 `le_div_iff₀` 等价转换为 `2<=A3^6`。再升六次幂，`64<=A3^36`；由 N_A>=D_A 得 A3>=1，且 36<=213，所以 `48<64<=A3^213`。

`RatioPower.a3Rational_pow213_iff_integer` 另外给出精确等价

`48<A3^213 ↔ 48*D_A^213<N_A^213`，

分母正性显式证明。这条大整数目标由短证明推出，未传给 decide/norm_num 求值。不是用有限浮点近似替代有理命题。

**前项界**：新增的辅助短上界 `Z^8<=2^579` 只涉及 579/580 bit；指数证书 `579*212<=8*15361` 余量 140。复用 `base_from_short_basis` 并由正八次幂反推，得到 `Z^212<=2^15361=4*2^15359`。M 仍为 213。

**两端各三条**：严格复用原短基

`5^512<=2^1189`, `3^128<=2^203`, `2^289<=Z^4`。

调用冻结 `DiscreteSelector.ShortPowerBounds.conditions_from_short_bases`，p/q 的 rate、base、lookahead 指数余量分别为 `(467328,14879968,1774848)` 和 `(137824,4349944,145984)`。这些余量的左右整数重算在证书账本中；没有求值约千万位的最终幂。

## 模块与来源

1. `Basis.lean`：薄 Nat 导入，四个短幂基、A3 六次幂证书，以及分母正性和分子关系；明确被求值的整数最大 1190 bit。使用 `decide`，没有 native_decide 或 ofReduceBool。maxRecDepth=4096 仅为短幂的递归展开留余量；这不是已测 Lean 资源结论。
2. `Selector.lean`：复用当前 `lean/DiscreteSelector/ShortPowerBounds.lean` 的完整三个通用桥，推出七个实际所需命题。
3. `RatioPower.lean`：正分母、有理短幂、原 213 次幂命题及其精确整数等价。可在完整 Padé 实际对象导入前单独检查。
4. `ActualNumeric.lean`：将纯数值对象接回被冻结的实际 qRate/qBase/Z，并调用 `five_three_edge_of_fixed_certificates`。最终 `five_three_edge_of_growth_trees` 不再有八个数值输入，仍明确保留两族 Bool-indexed 实际 GrowthTree。

`certificate.json` 和 `source-ledger.json` 记录原计划、原短基、固定缩放源、冻结清单、原/集成 ShortPowerBounds 的 SHA256，后者还记录实际声明行号及完整签名。`decimal-hex-ledger.json` 包含所有固定常量、每个实际整数比较两侧的**十进制字符串、十六进制字符串和 bit 数**。所有数值由 Python 整数保存，不经浮点或 JavaScript 数值舍入。

## 实际有界检查

`bounded_check.py` 重算 12 条短整数比较：五个基础数值比较、六个两端指数条件和一个前项指数条件。另核对固定分母正性、原 A3 分数、原 m/权重/指数映射与全部来源哈希。最大显式整数为 2^1189，1190 bit；运行约 0.00234 秒。

八种篡改全部拒绝：5 的上界少一位、3 的上界少一位、Z 下界多一位、Z 上界少一位、错误的 A3^6>=3、修改原 M、修改原 A3 分子、伪造指数余量。前五种由精确不等式本身拒绝；后三种由固定来源绑定或重新计算拒绝。结果见 `bounded-check-results.json`。这些检查验证证书内容和来源一致性，不是 Lean 编译或全链内核验收。

## 还剩什么

父任务应按 Basis、Selector、RatioPower、ActualNumeric 顺序串行编译并执行 27 个公开 #print 审计。A3 的数值表达式接回实际 qRate 时仍须检查所导入的冻结缩放候选链；文件存在不代表接受。实际 (5,3) 增长树来自 frozen `huan-i11-five-three-growth-tree-5e2d13bb` 的四个根 `q_tree_delta0/q_tree_delta1/e_tree_delta0/e_tree_delta1`，仍须主任务整合和验收。

最终实例严格保留所有自然数 Y,e,f,A,C，Y>=2^15359、C>=1、Y<=5^e A、Y<=3^f C<=2Y、整数 gap<=24；推出原两端余因子析取。gap=0 和位置相同仍允许。该候选没有证明其余四条边、2^15360 初始高度或 B699 原题。B 原题仍 0/19，无新颖性声明。
