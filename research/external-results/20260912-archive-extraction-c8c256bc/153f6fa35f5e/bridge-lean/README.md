# B699：实际大素因子部分的整除转移

状态：独立 Lean 4.33.1 验证通过。没有改动任何现有 lean-math-lab 目录；无新工具链或依赖下载。本目录源码为本轮独立撰写，并非外部未验证 theorem 的封装。

`DivisorTransfer.lean` 的核心结论：对自然数 `i≤j≤n`，若 `D|choose n i` 且 `D.Coprime (choose n j)`，则 `D|choose j i`。证明直接使用 `Nat.choose_mul` 和互素整除消去。

文件同时定义真实的大素因子部分

```lean
def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod
    (fun p ↦ p ^ a.factorization p)
```

边界是 `p≥threshold`，保留每个素因子的完整指数。两个引理证明该部分整除原数，以及没有符合门槛的共同素因子时它与另一个数互素。由此实际消费者为：

```lean
theorem actual_prime_part_transfer {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n)
    (h : ¬ ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    primePart i (n.choose i) ∣ j.choose i
```

因此 B699 原合法条件 `1≤i<j≤n/2` 与“没有共同素数≥i”的假设直接推出转移 T。没有把 T 本身列作新假设。

运行命令：

```text
python3 -B /workspace/scratch/c6b148d48b6d/external-research/bridge-lean/verify.py
```

成功证据：`verification/20260908T111858984907Z/evidence.json`；编译退出0。四项实际公理输出均为 `[propext, Classical.choice, Quot.sound]`，验证脚本逐项核查，未使用 `native_decide`、`sorry` 或项目新公理。没有第二个独立 Lean 内核。

固定 mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；所有 manifest 依赖包 HEAD 和受跟踪源码 clean 状态实际核对。`GIT_OPTIONAL_LOCKS=0` 禁止 Git 的可选刷新写入；包对象缓存只读。此模块没有导入任何旧项目对象。验证脚本沿用相邻 `b677/support/` 的已记录 manifest 和进程局部 procfs shim；常规固定 mathlib 项目可直接编译本文件，无需该容器兼容 shim。

第一次日志 `verification/20260908T111800259428Z/` 保留：四个一般定理已成功，但两个额外数值展示例的 `decide` 无法直接约化 factorization。最终删除这两个展示例，一般命题与证明未变，重新完整编译成功；没有借助未经内核验证的计算绕过问题。

证据边界：T 已 Lean 验证；EEES1978 的小/大素因子不等式、十二例外处理和 `2j≤3i` 的 Vandermonde 区域证明未包含在本 Lean 文件中，仍为另行记录的文献/纸面/精确有限核验。没有完整 B699 Lean 证明，也没有主仓库合入。

来源与归属：数学检索入口为Liam Price相关二手描述；准确可核查的文献后续输入是Ecklund–Eggleton–Erdős–Selfridge1978。这个短转移使用标准组合恒等式 `Nat.choose_mul` 与互素消因子，由本次审计独立重新形式化；不主张数学思路首次发现，也不声称恢复了Price原稿的代码。EEES不参与这4个Lean定理的依赖链。
