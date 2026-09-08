# J1/J2 有界独立转录检查

本检查读取 `independent/jet-denominator-cost.md` 的 J1/J2 定义后，独立用 Python `Fraction` 从乘积系数重建局部因子 `f_h`、约分后的 `a/b`、符号 `ε` 和唯一形式分支 `y(x)`。脚本没有导入既有 jet 实验代码，也没有使用 Lean。

覆盖 `k=4,5,8`；每个 k 选 3 个不同网格点 `(i,j)`，并分别取 `μ=4,6`，共 18 个 case。每个 case 都执行：

- 从 `∏(z+u−h)` 独立检查归一化因子、映射方向与 `ε=(-1)^(i+j)`；
- 逐阶递推并精确验证 `b f_i(y)=4εa f_j(x)`；
- 变换 `V(t)=y(bΛt)/Λ`，检查 `b^h Λ^(h−1)c_h` 对 `1≤h≤μ` 为整数；
- 对总次数 `D=kμ` 的所有标准单项式 `X^pY^q`，在 `(-j,-i)` 平移、代入形式分支，按第 h 行乘 `(bΛ)^h`（`h<μ`），检查条目为整数且不超过 J2 的
  `B_entry=(μ+1)^2 k^D [2^(4k+2) k μ²(D+1)]^μ`。

结果：18/18 通过，失败 0。原始精确分数系数、每个 case 的 `c_h`、`V` 系数、最坏条目和 `B_entry` 保存在 [jet-results.json](jet-results.json)；脚本、命令和完整 stdout 分别见 [check_jets.py](check_jets.py)、[command.txt](command.txt)、[run.log](run.log)。

这只是有限转录检查：`D=kμ` 是本次明确选择，不能替代任意 k、任意 μ 的证明，也不处理目标点为零、bounded span 或全局无解问题。
