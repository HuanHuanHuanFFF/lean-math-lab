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
