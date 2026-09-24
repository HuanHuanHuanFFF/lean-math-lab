# EXPERIMENTS — 辅助精确否证扫描（非证明）

## 目的

在投入 `D=Q-v`, `v|D³-1` 路线前，快速检查新的精确整数 core 是否在低高度大量产生相容点，从而尽早否证“这套坐标很刚”的直觉。

这项计算**不参与** `R_*≥2D+10` 等无限结论。

## 输入范围

```text
D 为奇数，3≤D≤5000；
对每个 D，枚举全部正除数 v | D³-1；
Q=D+v。
```

生成器通过由最小支消元得到的关于 `h` 的精确二次式寻找正奇 `h`，然后回查：

```text
ν=(hD-Q)/2 >0,
P=Q+hv,
vν²=PQ²−1,
v(ν²-hQ²)=Q³−1.
```

“current_width_solutions” 还要求 `P≥4Q` 与 `t=P+ν<Q²`。

## 输出

`outputs/core_scan_D5000.json`：

```json
{
  "limit_D": 5000,
  "divisor_pair_count": 195126,
  "core_solutions": [],
  "current_width_solutions": []
}
```

## 两个检查器

- `src/check_certificate.py`：重新走关于 `h` 的二次判别式路线；带 `--self-test-tamper` 时把证书计数故意改坏，必须拒绝。
- `src/check_certificate_alt.py`：不解该二次式，改用

  ```text
  W²=Q²m+Q+D,
  hD²=2Q²+QD+2W
  ```

  从平方恢复 `h`，然后回查 core。

冻结输出：

```text
PASS checker-A
PASS tamper-rejection
PASS checker-B (Pell-square reconstruction)
```

## 证据边界

扫描未要求所有真实 NC3 条件，如完整 `P,Q` source 素数幂、`α=c2^s`、原始 `j/k`、实际 `Ψ` 与全部 source carry。因此即便出现整数点，也只能是弱外壳；未出现点同样不能证明一般无解。
