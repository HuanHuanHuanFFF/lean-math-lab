# 最小下一证明：实际整数归一化行的有理余项

以下是计划中的新声明，不是已有 Lean 定理。只需导入当前已验 `Pade/Content.lean` 和 `Moment/Identity.lean`；不需要 Growth/Normalization 或数值实例。命名空间建议另设 `Math.B699.PadeRationalHomogeneous`，不修改旧冻结源码。

先证明两个有理 cast 辅助式：

`(G:Q)*(pNormalizedValue u v x y:Q)=(y:Q)^u*(pPolynomial u v u).eval2 (Int.castRingHom Q) ((x:Q)/(y:Q))`；Q同形。

其中G=`qContent u v u`。可把原 `homogeneousValue_cast_eq` 的有限求和证明复用于Q，再调用实际 `qContent_mul_pNormalizedValue`、`qContent_mul_normalizedValue`。这里不用除以G；保留G乘法式避免额外field_simp义务。

随后精确目标（Lean签名草案，尚未编译）：

```lean
theorem normalized_remainder_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qContent u v u : ℚ) *
      ((y : ℚ) ^ (u + v + 1) * (pNormalizedValue u v x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (qNormalizedValue u v u x y : ℚ)) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ)
          ((x : ℚ) / (y : ℚ))
```

证明路径：由两条cast式把左端合并为 `y^(2u+v+1)*(P-(1-x/y)^(u+v+1)Q)`；直接用已验 `actual_integer_pade_identity u v u (x/y)`；代 `div_pow`，消去非零y幂。次数等式 `2u+v+1=(2u+1)+v` 没有截断负指数。

量词边界：全部u,v>=0、任意x:Int、y!=0。该恒等式允许x=0；调用实际Rows时仍另外证明种子x>0。δ映射不是本定理假设：后续用m>=1、1<=d<c、δ<=1证明相邻Bool行与u=dm−δ,v=(c−d)m+δ−1相同。

已有有限检查：u,v=0..4，x=-2,-1,0,1,2,3，y=-3,-1,1,2,4，共750个实际整数系数/gcd归一化与有理余项比较通过；它不证明上述全参数声明。见 `check_scaling_and_small_bases.py`、`scaling-and-small-bases.json`。

验收：primary 独立串行编译新短模块，检查源SHA、全部新公开定理的传递公理仅std3；不接受sorryAx、Identity假设、新axiom或只证明同义数据接口。若成功，下一步可直接从真实Q/E/G界控制actual_bft_integer_gap的两项。
