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
