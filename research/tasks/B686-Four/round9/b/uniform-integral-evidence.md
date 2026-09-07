# B9-2 精确积分实验：实际证据节录

执行时间：2026-09-07 21:26:03 UTC；命令：

```text
python3 research/tasks/B686-Four/round9/b/uniform_integral_probe.py
exit code: 0
```

决定性输出（实际 stdout 节录）：

```json
{
  "evidence": "exact rational interval integration; finite checks, not Lean",
  "corner_implications": "passed",
  "test_count": 48,
  "all_certificate_bounds": "passed",
  "strip_bound_equality": {"D": "5/2", "measure": "1/8"},
  "minimum_observed_certificate_over_D": {
    "D": "5/2",
    "L": "1600/3",
    "band_measure": "1/8",
    "components": 1,
    "certificate_measure": "99/12824",
    "certificate_over_D": "99/32060"
  },
  "uniform_proved_bound_over_D": "1/640",
  "old_rectangle_counterexample": {
    "D": "2",
    "x_interval": "[1/2,1]",
    "required_fractional_x": "(1/5,2/5)",
    "integral": "0 for every L"
  }
}
```

部分边界/共振检查的实际精确值：

| `D` | `L` | 周期条带长度 | `W=1` 证书集长度 |
|---|---|---|---|
| `1` | `400` | `1/4` | `1/64` |
| `1` | `38801/97` | `1/4` | `2425/155204` |
| `2` | `400` | `1/4` | `25/1604` |
| `2` | `38801/97` | `1/4` | `2425/155592` |
| `5/2` | `400` | `1/8` | `25/3208` |
| `5/2` | `38801/97` | `1/8` | `2425/311184` |
| `16` | `400` | `2` | `801/6416` |
| `16` | `38801/97` | `2` | `188420075/1509281298` |

证书集只计入论文证明选取的两个平台窗口；`W` 在其它地方还可能为正，故该长度是积分的下界，不是声称求得光滑函数积分的精确值。

## 精确算法

对 `[a,b]=[7/8,15/16]`，令

\[
F(y)=(b-a)\lfloor y\rfloor+
\min(b-a,\max(0,\{y\}-a)).
\]

则 `F` 是周期窗口指标的连续分段线性原函数，故在任意有理区间 `[c,e]` 上，频率 `λ>0` 的窗口精确长度为 `(F(λe)−F(λc))/λ`。脚本只用标准库 `Fraction` 计算此式。

无限量词的证明在 [`uniform-all-D-integral.md`](uniform-all-D-integral.md)，并不从这张有限表归纳得到。无 Lean 检查、无素数采样、无浮点近似。
