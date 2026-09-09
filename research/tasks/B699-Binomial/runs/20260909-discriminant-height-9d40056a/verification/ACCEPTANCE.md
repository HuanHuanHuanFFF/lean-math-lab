# 最终专项验收

接受：本轮原题反例的有效高度界，以及对应的Common尾部消费者。

成功原始证据：[20260909T070200Z/evidence.json](20260909T070200Z/evidence.json)。实际运行区间为2026-09-09T07:02:00.285623Z至07:02:51.581685Z，exit0。源码哈希、命令、输出哈希、版本及闭包均绑定在该记录中；交付整理未修改这些已验数学源码。

[交付复核](delivery-checks-20260909T071048Z.json)再次确认当前源码与fresh证据一致，文件范围和相对链接通过，未把编译产物纳入交付，自有Lean/Lake进程已结束。

## 接受的准确 statement

`H = B699Height.effectiveHeight`，`t = i.primesBelow.card = π(i−1)`。当 `s=i−4t>0` 时，

`H(i)=2^(⌊4i/s⌋+1)*i^(⌊(i+3)/s⌋+1)`。

[OriginalHeight.lean](../lean/OriginalHeight.lean) 的主消费者为：

```lean
∀ n i j : ℕ, 1 ≤ i → i < j → j ≤ n / 2 →
  4 * i.primesBelow.card < i →
  (¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
    p ∣ Nat.gcd (n.choose i) (n.choose j)) →
  n ≤ B699Height.effectiveHeight i
```

`counterexample_height`直接证明该命题；`common_of_height_lt`给其原题逆否形式。`counterexample_height_of_index185`和`common_of_index185_height_lt`使用旧已验轮筛，在 `185≤i` 时内部消去素数计数条件。所有量词是自然数；阈值是 `i≤p`，保留 `p=i`。

实际F的每项完整幂整除、整数内容商、判别式缩放、实际判别式正性、实际阶乘缩放上界、U界和正指数消去均在导入链内证明。最终消费者没有Jacobi公式、非零性、可分性、EEES、Dusart或结构假设参数。

## 实际验收范围

- 九份新主链模块和六份必要旧项目模块，从源码编译到 `.tools/verification/20260909T070200Z/olean`。这次LEAN_PATH只含该新根和固定依赖包缓存，不含旧项目对象或本轮dev对象。
- Lean4.33.1，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。全部九项manifest包HEAD匹配且源码clean；pins未改。
- 每个Lean命令 `-j1 -M4096`，一个串行流水线。源码policy覆盖准确的15模块闭包，所有源码前后哈希一致，所有编译exit0。
- 67条真正打印的传递公理输出通过严格审计；并集恰为 `propext`、`Classical.choice`、`Quot.sound`。最终四项原题消费者全部实际打印。没有 `sorry`、`admit`、新项目公理或 `native_decide`。
- 旧轮筛的四条guard输出由同一新对象根的额外import消费者实际打印，见 [实际stdout](20260909T070200Z/guarded-axioms/guarded-axioms-13-research.tasks.B686-Four.formalization.PrimeCounting.LinearPrimeCounting/actual-output.txt) 和同目录companion源码/JSON。旧源码原来的stdout计数失败也保留在总证据中；没有从注释推断成功。补充源码前后哈希一致。
- [Acceptance.lean](../lean/Acceptance.lean) 实际核对F(12,2,4)的三个系数、D(12,2,4)=2的边界素数、D(16,2,6)=15与V=120的区别、s(185)=17及H(185)的完整整数，并消费全自然数量词定理。三个D/V计算经已证的素因数列表计数关系化简后用 `decide +kernel`，未使用native求值公理。

严格审计会拒绝编译失败、缺失输出、异常公理、源码变化、pin不符及超时。新guard补充适配另有 [12项拒绝检查](guard-checks-20260909T070337615299Z.json) 和可运行 [检查脚本](check_guarded_audit.py)。合成消息只测试验证器；实际证明以本次Lean输出为准。

独立AI数学及statement审查见 [review](../reviews/independent-math-review.md)。它与本次内核验收分开记录；没有运行独立实现的第二内核检查器，没有人类同行评审或新颖性认证。保留的少量tactic linter警告不影响成功结果；旧模块警告未通过改动旧源码处理。

## 复现入口

已具有固定Lean可执行文件和固定包缓存时，从仓库根执行：

```sh
python3 research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/verification/verify.py \
  --lean /absolute/path/to/lean-4.33.1/bin/lean \
  --package-root /absolute/path/to/fixed/packages \
  --root research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/lean/Acceptance.lean \
  --memory-mb 4096 --timeout 180
```

本次云端采用现有 `scripts/lean-work.sh` 的进程内procfs兼容库，直接验证器调用前把 `.tools/lean-work/proc-self.so` 放入LD_PRELOAD；Lean二进制没有修改。实际环境路径和命令见 [HANDOFF](../HANDOFF.md)。验证器不下载或升级依赖，每次分配新的项目输出根。

接续时直接采用本验收。只有新的实际消费者需要这些源时，才随新链编译，不以重跑本轮作为初始化。

## 未接受为本轮成果的内容

没有证明整个B699，也没有给i统一的有限上界。`n≤H(i)`中的剩余区域仍需要数学处理；H可极大。旧 `i≥10^6` 排除仍是纸面，完整EEES和Dusart缺口保持不变。未重跑旧全局扫描、低指标探索或不相关旧证书。

`dev-*`保留成功/失败的开发记录；`runtime/ImportProbe.lean`是环境诊断，不是本次验收根。失败源码快照及日志不能被当作完成证明，详见 [失败目录说明](../notes/failures.md)。
