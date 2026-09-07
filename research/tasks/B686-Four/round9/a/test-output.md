# 首阶段测试与执行证据

执行于 2026-09-07 21:17:03 UTC，Python 3.12.13。

命令：`python3 research/tasks/B686-Four/round9/a/exact-probe.py`

退出码：0。

程序逐项核对偶数 `k=2,4,…,40`：R 非零且次数界成立、W 非零、Q 的精确分母整除 `2^(k−1)`、系数阈值 B 不大于闭式 U；对每个长度在 `n=0,1,k,k³` 比较直接乘积与多项式求值，并检验 `P=Q²+R`。这些是有限范围的实现/转录检查，不是通用纸面证明的机器证明。

决定性输出：

```text
neutral_ratio9_witness:
  k=3, n=11, m=25, left=19656, right=19656, disjoint=True

false_cubic_small_error_claim:
  k=10, n=1000, m_for_scale_checks=1150, D=256
  Q_coefficients_ascending=[496705/256,353947/128,21175/16,2255/8,55/2,1]
  Q_n=263112499508390705/256
  P_n_direct=1056338308678480352264208268800
  (Q_n_minus_1_over_D)^2_minus_P_n=39406611510974761/256
  conclusion=Q(n)-sqrt(P(n)) > 1/D
  all_packet_scale_conditions=True
  is_B686_solution=False

PASS: rational identities, direct products, denominator bounds, and counterexample
```

脚本实际标准输出使用 JSON 排版；上面按字段原值展开，未修改数值。完整输出可用该命令即时复现。

同次输出示例表明界不可直接当作可行穷举：k=10 的系数阈值 B 有 11 位十进制数字，U 有 42 位；k=40 的 B 有 72 位，U 有 206 位。这些不是最优界。

环境探测：`command -v lean` 与 `command -v lake` 均未返回路径（与主任务提示的恢复中一致）。没有尝试安装、导入、改依赖或绕过环境；本阶段没有 Lean 产物或公理审计。
