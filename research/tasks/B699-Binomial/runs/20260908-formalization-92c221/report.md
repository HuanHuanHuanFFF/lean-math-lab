# B699 已采用判据接续核验

当前采用的带条件双余因子判据已在基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13` 完整 Lean 化。本批核对 `20260908-binomial-cofactors-f0a6539` 的完整报告、独立审查、验收与实际源码后，没有重复实现。

精确范围为自然数 $n,i,j,a,b,p,q,e,f,u,v$，$i<j\le n/2$、$a,b<i$，$p,q$ 为大于 $i$ 的素数，$e,f\ge1$，

$$
n=up^e+a=vq^f+b,\qquad \gcd$u,v$=1,\qquad uv$a+b$<n.
$$

则存在素数 $r\ge i$ 同时整除 $\binom ni$ 和 $\binom nj$。不需要 $p\ne q$，不需要 $e,f$ 是精确估值，$1\le i$ 由余数范围推出。现行 [CofactorCriterion.lean](../../../../../Math/B699/CofactorCriterion.lean) 已接通 Kummer 进位、余数、整数核心与 gcd 消费者；不存在遗漏的已接受无条件强迫步骤。

本批在新项目输出目录重新编译 Math 依赖、5 项传递公理测试及实际 Example。例子 $n=86,i=8$ 保持全部 $8<j\le43$，没有用一个指定 $j$ 取代范围消费者。Lean 固定 `v4.33.1`，9 项包 pins 一致。实际成功记录为 [evidence.json](verification/baseline/20260908T095843Z/evidence.json)，原始命令、源码哈希和日志均随记录保存。

复现命令（仓库根目录，先按固定版本恢复本机环境）：

```sh
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root Math/B699/CofactorCriterion.lean --guards 0 \
  --root Tests/B699CofactorCriterion.lean --guards 5 \
  --root Examples/CofactorCriterion.lean --guards 0 \
  --output research/tasks/B699-Binomial/runs/20260908-formalization-92c221/verification/baseline/<new-UTC>
```

以上路径以当前源码为准；本批原始已运行命令在证据的 `argv` 字段。每次分配新输出，不覆盖历史证据。

开放项仍是合法 $n,i$ 中未覆盖的结构补集：没有证明全部输入必能找到这些双余因子数据。原报告没有接受这个强迫结论，因此它是数学缺口，不是可以靠补 Lean 胶合关闭的定理。终端因子、约分分母及低剩余扫描限制属于条件判据选择/诊断，没有被升级为全题覆盖。范围复核见 [来源复核](../../../../shared/20260908-formalization-external-audit/adoption-followup.md)。

本批没有增加 B699 数学排除范围；交付的是源码对照和新目录独立验证。完整状态见 [ledger.md](ledger.md) 与 [frontier.md](frontier.md)。
