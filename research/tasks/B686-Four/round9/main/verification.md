# 第九轮主任务验证账本

## 2026-09-07 21:22 UTC：核心余数语义

文件：`HitSemantics.lean`。Lean4.33.1，固定仓库工具链；实际命令（仓库根）：

```sh
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/elan/bin:$PATH" \
  bash scripts/lean-work.sh lean \
  -o research/tasks/B686-Four/round9/main/HitSemantics.olean \
  research/tasks/B686-Four/round9/main/HitSemantics.lean
```

最终exit0，无输出。两个`#guard_msgs`核验传递公理，只有`propext`、`Quot.sound`以及第二引理中的`Classical.choice`；无`native_decide`、新增公理或未完成占位。

开发失败保留：首次使用`by_contra`，仅核心导入不提供该策略，改为`Nat.le_of_not_lt`；随后消除一个未使用参数警告，再将实测`#print axioms`输出换成可执行守卫。失败属于证明脚本/API问题，不是数学反例。

范围：只证明p>k时块中有p倍数等价于余数命中，以及指定矩形内一块命中、一块缺失。尚未证明一定存在这种素数，不能据此宣称任何新的全局排除。

## 21:30 UTC：原方程桥接开发中

首次直接调用包装后的`lean`找不到Mathlib；需使用同一包装器的`lake env lean`，并保留仓库根`LEAN_PATH`。这是搜索路径问题，未改固定版本。接口正在编译，完成前不记录为验证成功。

21:32 UTC补记：`PrimeSynchronization.lean`采用`lake env lean`后四个引理编译通过；实测传递公理均为`[propext, Classical.choice, Quot.sound]`，已写入逐项可执行守卫。它们接通总乘积、素数命中、倍率r的支持同步及倍率4的矩形排除。下一修改需支持B的双向、更宽低相位窗口，当前单向引理不自动适用于新W。

## 21:46 UTC：双向相位与封闭式条带下界

以下四根按依赖序实际编译完成，最终各exit0，无输出无警告：

1. `HitSemantics.lean`：新增宽矩形边界，高相位>3/4、低相位<1/2。
2. `PrimeSynchronization.lean`：原倍率4同时排除两种命中不匹配方向。
3. `PhaseInterface.lean`：调用mathlib现有`Int.fract_div_natCast_eq_div_natCast_mod`，将真实分数部分接回自然数余数；任意满足双向支撑条件的实函数，在原解的有限素数和中精确为0。
4. `StripePrimitive.lean`：封闭式周期原函数的误差上下界，以及对全部实q≥1/4的`F(2q)−F(q)≥q/5`。大q用周期误差，小q明确分段，未靠有限采样。

新增文件首次只有Real定义缺`noncomputable`的编译错误、旧导入路径弃用警告；数学证明当次已检查。补非可计算定义标记并改用固定mathlib的实际新路径后重跑成功。原函数与Lebesgue测度/积分的同一性没有在该文件中假定或宣称。

每个验收根有实测公理输出转成的`#guard_msgs`，传递公理仅标准三项。独立输出目录的冷源重编脚本由环境任务制作中，尚不能拿这组手工命令替代整仓库CI。

## 21:55 UTC：非解诊断的独立内核验证

`CounterexampleChecks.lean`八项检查使用普通`decide`并由内核检查，没有本机决策捷径。准确记录B构造的大整数对：分离、原乘积严格大于倍率4、相对余差<10^-10、2/3/5/7上的精确赋值与余差赋值全部通过；另验证倍率2四循环运输对照。每项实测公理输出已变成guard，最终exit0无输出。

这说明该具体数对确为通过所列有限局部条件的非解，不说明它满足完整等式，也不把一个实例升级成B的一般CRT无穷定理。

## 22:08—22:37 UTC：真实积分与全距离几何闭合

五个新增根按依赖序完成实际 `lake env lean -o ...` 编译；最后一次各 exit0，无输出或警告。仍使用上述固定本地工具链、仓库根 `LEAN_PATH` 和原包装器。

| 根 | 已核结论 | 公理守卫数 |
|---|---|---|
| `StripeIntegral.lean` | 可测、有界的周期条带指示函数；任意实端点积分等于已证原函数差；全部q≥1/4的真实积分下界 | 4 |
| `WindowIntegral.lean` | 一般窗口的实际积分公式、原函数误差；高相位窗口在任意实区间和任意正频率下的积分误差界 | 3 |
| `QuarterGeometry.lean` | 四分之一周期单元的精确分数部分、条带积分及正反两个频率的局部下界 | 2 |
| `GridGeometry.lean` | 裁剪网格端点/单调性/单元计数、积分望远镜求和；全q≥1/4,L≥400的双频率下界 | 3 |
| `PhaseGeometry.lean` | 高低平台的真实分数部分关系；非负且具有这些平台、轨道可积的W满足全D≥1,L≥400的积分≥D/640 | 3 |

所有列出的传递公理只有 `propext, Classical.choice, Quot.sound`，均已实测后转成可执行 `#guard_msgs`。环境任务已经独立重编前九根，正在加入最后的相位几何根；主任务手工成功不替代其独立日志。

这修补了早先明确留下的“封闭式差不等于实际积分”的缺口。最后两个定理仍把W非负、平台和可积性写为显式假设；没有用一个占位函数假称光滑测试函数已经构造，也没有偷偷假设待证积分下界。MRSTT定理、权重换元与完整高度结论尚非Lean全链。

开发错误按原因保存：一般窗口的有理式先用过宽 `field_simp/convert` 未闭合，改为明确等式后乘法比较；四分格中 `integral_const` 命名冲突和倒数规范形不匹配，改为全名及精确改写；网格两处为自然数强制转换和 `Finset.sum_div` 方向，修正后通过；相位分数部分直接展开曾触发simp递归上限，改用已有 `Int.fract_add_floor` 等式。第一次相位编译中的失败根未验收；最终无 `sorryAx`。不以提高递归/心跳上限掩盖这些问题。

## 22:35 UTC：外部数学证据独立复核

主任务完整读取A的 `independent-source-chain-audit.md` 与访问记录。A实际核读了MRSTT出版Prop1.13(ii)、Tao引用及完整应用量词，未发现阻断高度论证的隐藏条件；范数“求和/最大值”的固定因子区别补入主稿。纸面审计通过不等于分析定理内核验证。

主任务另直接打开Matveev2000原文PDF，核到印刷1219页Cor2.3、(2.4)、(2.6)及B*替换条款。B的二次两对数转移所用次数≤2、非零条件、两个高度参数和保守常数2^38与该原陈述相容；主任务已逐项阅读其代数、共轭与高度推导。它仍是带“距离粗素因子至多命中两位置”条件的纸面上界，未Lean，不可拿来闭合一般全题。Gouillon具体参数最优化结论尚未由主任务独立细审。

## 22:49 UTC：带权换元已接通真实采样积分

`WeightedGeometry.lean` 最终 `lake env lean -o ...` exit0、无输出或警告；五项传递公理守卫全部为标准三项。证明任意函数的正区间倒数换元、对数权重下界及其连续性，再将真实双频率积分接到 `∫[2k,4k] W(n/t,m/t)/log(t) dt` 的参数化版本，下界为 `k/(160 log(4k))`。W仍有显式非负、平台、二维连续性假设；尚不声称在Lean中构造了光滑W或引用了MRSTT。

记录实际错误：IntegrationByParts未传递导入倒数求导，首次缺HasDerivAt.div，补精确Deriv.Inv缓存后解决；`fun_div` 的模块实例展开需 `using!`，`integral_neg`/`integral_mul_const`需显式命名空间；`field_simp`已闭合的两端点恒等式后多余`ring`产生“no goals”，删除后重跑。最终守卫成功，失败版从未作为验收根。

下一目标不是增加结论计数：用固定光滑测试函数实例化目前接口，再把旧SizeBounds的自然数原方程条件接入，从而仅留下真正外部的解析采样定理，而不是一长串未核的应用环节。预计不再扩大纸面高度范围；此阶段检查点23:20 UTC，若光滑周期接缝工程失去研究价值则记录后转回数学路线。

## 22:52—23:02 UTC：固定光滑W与原题采样误差下界

- `PeriodicSmooth.lean`：任意在0、1附近为零的光滑实函数，按小数部分周期延拓后仍光滑。整数点附近证明延拓恒零，非整数点用固定floor的局部公式；并非假定fract光滑。最终守卫1项，exit0。
- `SmoothTestFunction.lean`：复用mathlib已有 `Real.smoothTransition`，以固定仿射参数构造A/B；证明所有阶光滑、两个周期、明确平台/支撑、0≤W≤1。最终守卫6项，exit0。
- `OriginalDiscrepancy.lean`：导入既有SizeBounds并核对乘积定义相同，直接由自然数原题条件与k≥802导出D≥1,L≥400；随后得到真实采样积分及误差的下界。最终守卫3项，23:02实际 `-o` exit0无输出；所有传递公理仅标准三项。

最终定理 `original_sampling_discrepancy_lower` **不含额外的采样估计或测试函数假设**，也没有新解析公理；假设就是原方程、分离条件和k≥802。它没有声称所有k≥802无解：误差的相反上界及其高度限制来自未在本轮形式化的MRSTT。导数范数/外部误差接口和渐近阈值组装仍与完整高度结论分列。

开发问题：Periodic初始缺定义导入，先误写Group/Periodic路径，按实际库文件改Ring/Periodic；函数主体的光滑证明当次已通过。原参数文件中的 `exact_mod_cast` 不展开新distance定义，显式unfold并指定2m的实乘法后解决。环境任务早期legacy编译的 `.lean.olean` 后缀和缺Ring.Nat缓存另有真实失败日志，随后修正；主任务没有借过期对象当新源验证。主任务一度用默认忽略规则的`rg --files`查oleans，误以为不存在，已纠正检索判断。

当前14个新验收根（包括一个diagnostic），另两个旧文件仅作legacy依赖，不能计为本轮新证明。环境任务已冷输出重编13根，正在纳入最后OriginalDiscrepancy；以其最新逐根sourcehash日志确认最终整合。

## 仓库原有验证范围

环境任务的 `official-validation-equivalent.log`：pwsh不可用，按脚本相同顺序运行源码policy、原 `lake build`、两个Tests及一个Example。2026-09-07 22:52:34—22:52:48 UTC，各步exit0，总exit0。固定依赖未改。这是真实本地标准验证，不是研究根全覆盖或GitHub Actions通过的代称。
