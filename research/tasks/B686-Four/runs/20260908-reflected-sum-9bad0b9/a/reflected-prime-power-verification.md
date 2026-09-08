# A / ReflectedPrimePower 验证记录

**最终状态（2026-09-08 01:20:28 UTC）：全 p 高分支核心通过 Lean 4.33.1，
零 warning、5/5 可失败公理 guards；源码已冻结，独立 import 检查也通过。**
下文早期阻塞按历史原样保留，不代表最终状态。全 S≠p^a/B2/一般 B 的消费者未在本文件中证明，
主任务正在独立接入；不可把本核心说成完整原题无解或所有纸面结果已 Lean。

锁定目标：从自然数原题 `k≥2,n+k≤m,product k m=4*product k n` 推出
反射和 S=m+n+k+1 的全 p 高分支位置赋值与非零整数接触。
设 a=v_p(S)、e=v_p(4*(-1)^k-1)，`k<p^(L+1)`、`L+e<a`。
目标为存在 i∈[1,k]，v_p(n+i)=a-e，T=|S+(4*(-1)^k-1)(n+i)|>0，
并且 `p^(a+1+v_p4)∣T`。不把高位置或接触作为原题消费者的假设。

预计用途：S素数幂排除、S=2p^a排除与一般补因子B界的共同 Lean 依赖。
几何与 k5/S50 尾部由 main/ReflectedGeometry.lean 提供；不重复主任务的 a=1 回退。
未完成任何关键环节时仍标 pending，不因局部易引理改变全局研究状态。

## 环境和命令

2026-09-08 00:57 后 exec 恢复，实际工作树 HEAD 为
`25b25fa9bddd77386223d9e7c6b94ad1497ff365`。
`lake env lean --version` 首次因普通 PATH 无 lake 退出127；改用仓库既有包装脚本后实际输出
Lean 4.33.1，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。
固定调用：

```sh
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/elan/bin:$PATH" \
LEAN_PATH="$PWD/.lake/round9-verify/olean:$PWD" \
bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/round9/a/ReflectedPrimePower.lean
```

01:05 左右首次实际编译：缺失
`Mathlib/NumberTheory/Padics/PadicVal/Basic.olean`，没有进入代码验收。
已向主任务申请这个明确 root；A 不自行更改依赖或下载整套库。

## 实现策略及特别风险

使用局部化意义的有理 p 值来实现“归一化单位积”；`ValGE p h x := x=0 ∨ h≤v_p(x)`
显式处理 mathlib 的 `padicValRat p 0=0` 约定。
先由原反射乘积排除全部位置低赋值，再用连续差 `<p^(L+1)` 保证高位置唯一，
其余比值形成近1的单位积 U。由原式而非额外假设导出
`U-λ=(S/z)U` 和 `R U=λ z(U-1)`，最后利用原题严格几何证明 R≠0。
倍率4的 p 值保留，不取消4；同时覆盖 p=2。

当前文件只含完整证明尝试，无占位证明或新公理；但编译前不声称这些尝试已通过。
01:25检查点，01:40冻结，正常共同截止02:00UTC不变。

## 实际编译过程与修复

- 01:13：PadicVal.Basic 已可读后第一次完整编译 exit1。错误包括不存在的
  `Nat.dvd_sub'`、Nat 差值未显式规范化、有理/自然系数4的 coercion、局部 let 的
  表达式没有统一展开。guards 如实拒绝错误恢复生成的 `sorryAx`。
  完整输出：`reflected-contact-attempt-1.log`。
- 01:14：第二次 exit1。另有 A 的一次 apply_patch 命中较早的 `dsimp [a]`，
  造成 `hdv` 尚未进入作用域的错误；不是数学反例。随后按完整上下文精确修复。
  完整输出：`reflected-contact-attempt-2.log`。
- 01:15:47：全部原题核心首次 exit0，三个主定理 guards 通过，剩一条样式 warning。
- 01:17:45：从同一证明导出完整 `2a-e-L+v_p4` 界，五个主定理 guards 通过，exit0、零 warning。
- 01:19:02：再次按下列命令生成约定 olean，exit0、零 warning；编译前后源码 hash 相同。
- 01:20:28：从新 olean 独立 import；打印实际主接口、公理列表，并核验两个定义边界诊断，exit0。
  最后三次编译与 import 原始输出：`reflected-contact-passing-checks.log`。

源码 policy 曾误以单文件传入 `--roots`，脚本只接受目录，因而 exit1；这不是文件消失。
改为 `python3 scripts/check-lean-policy.py --roots research/tasks/B686-Four/round9/a` 后
实际输出 `Lean source policy passed for 1 file(s).`，exit0。
最终全 p 核心没有占位证明、native_decide 或自定义公理。

## 冻结产物与可复现命令

源码：`research/tasks/B686-Four/round9/a/ReflectedPrimePower.lean`。
SHA256：`0eb03b3d996f4a67c3b03466b36c3d24b02ff4e58195b594fddd2a07302ba717`。

读取／导入的主任务几何源 `round9/main/ReflectedGeometry.lean` SHA256：
`c43dc912029ab0a2e4b630c0b53d24497b0a3012cb993ececbbbfe827d5922e4`。

olean：`.lake/round9-verify/olean/research/tasks/B686-Four/round9/a/ReflectedPrimePower.olean`。
SHA256：`c6186663a24e8e50bcb699b71e2c7205ce130ab5c5eb1dde4cd5505bd38680cd`。

```sh
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/elan/bin:$PATH" \
LEAN_PATH="$PWD/.lake/round9-verify/olean:$PWD" \
bash scripts/lean-work.sh lake env lean \
  -o .lake/round9-verify/olean/research/tasks/B686-Four/round9/a/ReflectedPrimePower.olean \
  research/tasks/B686-Four/round9/a/ReflectedPrimePower.lean
```

导入路径：`research.tasks.«B686-Four».round9.a.ReflectedPrimePower`。
namespace：`B686ReflectedA`。
可失败 guards 分别检查 `exists_high_position`、`original_high_contact_data`、
`original_high_contact`、`original_high_contact_nat`、`original_high_contact_sharp_nat`。
五者实际传递公理均恰为 `[propext, Classical.choice, Quot.sound]`。
没有运行独立 Lean checker，也没有重建全部研究仓库；本验收范围是当前源、导入依赖和上述 guards。

## 主接口与源对应

`original_high_contact_nat k n m p hp hk hsep heq hhigh` 的调用前提全部来自原题：
`p.Prime`、`2≤k`、`n+k≤m`、`B686Target.product k m=4*B686Target.product k n`，
再加明确高分支 `Nat.log p k + v_p(c) < v_p(S)`。
`product` 与主任务 `blockProduct` 定义同一 Icc 连乘；没有改倍率或分离边界。

其定义为：

- `S = B686Reflected.reflectedSum k n m = m+n+k+1`；
- `reflectedCoefficient k = |4*(-1)^k-1|`，偶 k 为3，奇 k 为5；
- `R = reflectedContact k n m i = S+(4*(-1)^k-1)*(n+i)`；
- `T = R.natAbs`。偶 k 的 R=S+3z，奇 k 的 R=S-5z，而正 T=5z-S。

输出某 `i∈Icc 1 k`、`v_p(n+i)=a-e`、`0<T`、`p^(a+1+v_p4)∣T`。
`original_high_contact_sharp_nat` 在完全相同输入下输出
`p^(2*a-e-Nat.log p k+v_p4)∣T`；高分支保证自然数减法不造成纸面指数的截断差异。
`original_high_contact_data` 另暴露整数赋值下界，供无需重做幂整除转换的消费者。

证明链实质为：原反射乘积⇒存在高位置⇒连续差给唯一性⇒其它位置组成近1的单位积 U⇒
`U-λ=(S/z)U` 精确求 b=a-e⇒原式导出 `R U=λ z(U-1)`⇒严格几何 R≠0⇒完整接触阶。
没有假设“高位置存在”、“归一化积的接触”或“所需整除结论”。p=2/3/5 均包含，4的赋值没有丢弃。

独立 import 的定义边界诊断（`lean --stdin`，不是写入额外源文件）：

```lean
import research.tasks.«B686-Four».round9.a.ReflectedPrimePower
open B686ReflectedA B686Reflected B686Target
#check original_high_contact_nat
#check original_high_contact_sharp_nat
#print axioms original_high_contact_data
#print axioms original_high_contact_nat
#print axioms original_high_contact_sharp_nat
example : reflectedCoefficient 2 = 3 ∧ reflectedCoefficient 3 = 5 := by decide
example : reflectedSum 3 0 1 = 5 ∧ product 3 1 = 4 * product 3 0 ∧
    reflectedContact 3 0 1 1 = 0 ∧ ¬ (0 + 3 ≤ 1) := by decide
```

后一诊断是原连乘的重叠控制，不是686见证；它捕捉了删除分离条件后 R 可以为零的真实风险。

## 接续与边界

01:20 已通知主任务 olean 可用并冻结核心声明；主任务独占
`main/SumPrimePowerExclusion.lean`，负责由核心接全 S≠p^a 的高／低分支。
A 没有重复主任务 a=1 回退，没有碰 B 的两位置范数候选，也没有扩大固定 B 扫描。
更早已采纳的 B1/B2/一般 B 纸面结果与旧 k5 重叠见 `reflection-boundary-handoff.md`。
本阶段实际改变的是共同高阶依赖的证据等级（纸面→Lean）；全题未知区域不因此自动闭合。
没有作首次性、人工同行评审或全题完成声明；没有 spawn、commit、push 或修改共享索引／依赖。
