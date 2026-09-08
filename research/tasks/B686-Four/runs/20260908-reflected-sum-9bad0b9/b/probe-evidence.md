# 结构实验决定性证据

执行时间：2026-09-07 21:15–21:16 UTC。

```text
$ python3 research/tasks/B686-Four/round9/b/structure_probe.py
exit code: 0
```

实际输出中的决定性字段（节录，不声称是完整 stdout）：

```json
{
  "evidence": "Python arbitrary-precision exact arithmetic; not Lean-checked",
  "multiplier9_control": {
    "k": 3,
    "n": 11,
    "m": 25,
    "multiplier": 9,
    "upper": 19656,
    "lower": 2184
  },
  "discriminant_and_radial_identity_grid": "passed",
  "squarefree_certificate": {
    "prime": 7,
    "gcd": [1],
    "remainders": [[0, 2, 6, 5, 1], [1, 5], [1], [0]]
  },
  "height_bound": 128,
  "physical_primitive_slopes_tested": 1216,
  "physical_quotient_lifts": [
    {
      "a": 14,
      "b": 11,
      "S": -10740,
      "h2": "1/9",
      "h": "1/3",
      "x": "11/3",
      "y": "14/3"
    },
    {"a": 14, "b": 11, "S": 10740, "h2": "2/197"}
  ]
}
```

注意：代码字段 `S` 是带符号的求根分支；备忘录定义的 `S` 是非负平方根。备忘录选用 `5B−S` 对应代码中的 `S=-10740`，并无符号冲突。

环境诊断：`command -v lean` 与 `command -v lake` 未找到命令；`python3 -c 'import sympy; print(sympy.__version__)'` 返回 `ModuleNotFoundError: No module named 'sympy'`。因此选择标准库实现精确判别式和有限域欧几里得算法，未安装依赖，未修复共享环境。

21:18:57 UTC 重跑同一脚本仍退出 0；另用独立原定义检查：

```text
python3 -c 'from fractions import Fraction as F; from math import prod; x=prod(F(2,3)+i for i in range(1,6)); y=prod(F(5,3)+i for i in range(1,6)); assert x==F(104720,243) and y==4*x; print("Independent original-definition rational check:",x,y)'
Independent original-definition rational check: 104720/243 418880/243
```
