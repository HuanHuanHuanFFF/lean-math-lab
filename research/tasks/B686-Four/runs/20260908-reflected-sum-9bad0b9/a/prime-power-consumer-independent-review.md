# A：全素数幂反射和消费者独立复核

2026-09-08 01:28 UTC；01:35前交付，A核心维持冻结。

结论：**无阻断发现，可以按下面准确范围接受为 Lean 已证无限子族排除。**
这是对 main 消费者的独立只读 AI 审查；A 是其导入的高阶核心作者，
不把本审查说成对整条核心的全新独立数学评审或人工同行评审。

## 1. 实际审阅来源

完整读取 `round9/main/SumPrimePowerExclusion.lean`，共128行。
实际 HEAD：`a552887848d751468ffb9e523904c281042fe652`；消费者尚属工作树新文件。
编译前后源码 SHA256 均为：
`bd136cad0859595367422146cac2976115052bb85750b29d139e8434a380df1e`。

依赖已核源码：

- `a/ReflectedPrimePower.lean`：`0eb03b3d996f4a67c3b03466b36c3d24b02ff4e58195b594fddd2a07302ba717`。
- `main/ReflectedGeometry.lean`：`c43dc912029ab0a2e4b630c0b53d24497b0a3012cb993ececbbbfe827d5922e4`。

没有修改消费者或核心，没有 spawn、扩大B搜索或改共享索引。

## 2. 原题与完整量词

实际打印的定理为 `B686Reflected.not_four_prime_power_reflected_sum`：

```lean
(k n m p a : ℕ) (hk : 2 ≤ k) (hsep : n+k ≤ m) (hp : p.Prime)
(hsum : reflectedSum k n m = p^a) :
  B686Target.product k m ≠ 4 * B686Target.product k n
```

其中 S=`reflectedSum k n m=m+n+k+1`，product 为 `∏ i∈Icc 1 k,(n+i)`。
n≥0由自然数类型保证；不额外限制 n>0、p>k、k奇偶或 a>0。
原等式在反证中引入，然后调用核心；调用者没有提供高位置、正T或接触整除证书。
由已核 `B686Target.ratio_iff` 接到原有理商写法的**全量词 Lean 示例**也实际通过。

## 3. 关键边界逐项审核

| 边界 | 代码实际处理 | 审核结果 |
|---|---|---|
| a=0 | `padicValNat.prime_pow 0`给v_p(S)=0；高分支不可能，低分支包含S=1 | 无漏域；已另做零指数接口实例 |
| p=2 | 明确证明v₂(4)=2，因此乘数2^(1+2)=8≥3 | 未错误约掉4；已做任意指数的p=2接口实例 |
| p=3或5 | c=3或5为素数；按p=c或p≠c分支处理e=1或0 | 包括与k奇偶匹配和不匹配的情况 |
| 正T及减法 | 偶k的R=S+3z；奇k的R=S−5z，T=5z−S；使用S<5z合法转换Nat减法 | 不把截断为零当接触，也未遗漏R=0控制 |
| 全部参数无界 | k,n,m,p,a均全称量化 | 不是有限扫描或单一a=1结果 |

高分支由A核心得到T>0及 `p^(a+1+v_p4)∣T`，因而
`3S≤p^a*p^(1+v_p4)≤T`；几何给 `2T<5S`，与S>0矛盾。
`p^(a+1+v_p4)=p^a*p^(1+v_p4)` 已在当前源中规范化并真实编译通过。

低分支的无需奇偶简化有效，且没有把p=c当无条件事实：

1. p≠c：由两者均为素数，e=v_p(c)=0，S=p^a≤p^log_p(k)≤k，与S>k²+1矛盾。
2. p=c：e=1，S≤kp；若k≥p则S≤k²矛盾，所以k<p。
   于是log_p(k)=0、a≤1、S≤p=c≤5。但k≥2给k²+1≥5，而S>k²+1，矛盾。

因此既不需要c=3/5与k奇偶的小分类，也不需要旧k5有限表或渐近定理。
消费者未引用 `not_four_sum_fifty_length_five`、MRSTT、高度界或任何额外有限扫描。

## 4. 实际执行证据

- **01:25:34 UTC**：用固定 Lean 4.33.1 和约定 LEAN_PATH 独立重编当前消费者源，
  exit0、空stdout/stderr、零warning；5个 `#guard_msgs` 公理断言全部通过。
- 原仓库 policy 扫描器的自检及对此128行源的定点检查：
  `policy_failures: []`、`guards: 5 axiom_prints: 5`，exit0。
- **01:26:56 UTC**：从主任务生成的消费者 olean 独立 import，
  `#check` 实际定理，`#print axioms` 输出恰为 `[propext, Classical.choice, Quot.sound]`；exit0。
  同一次检查包含自然指数0、任意指数p=2和原有理比值的接口实例。
- 同时用原定义直接 `decide` 核验两个必要假设控制：
  k=1,n=0,m=3,S=5，倍率4且分离成立（说明hk不可删）；
  k=3,n=0,m=1,S=5，倍率4但分离失败（说明hsep不可删）。
  它们不是686合法见证，也不是无界结论的有限搜索证明。

原始命令、实际接口输出与公理输出完整保存在
`prime-power-consumer-independent-checks.log`。
所导入消费者 olean SHA256：
`96b8d9b2bf2ed0a4cd9a7669ad6acedbc9cf5b3394bd433879d2e1706186eb74`。
没有另跑独立 Lean checker或全研究仓库重建；源码重编、公理检查与导入测试是本次实证范围。

## 5. 可接受与不可扩大的主张

可接受：原题域内 **所有自然指数、所有素数、所有长度的反射和S=p^a子族已Lean排除**。
这里源对齐和内核接受均有实际证据，不再只是独立AI纸面通过。

不可据此声称：B686全部无解、所有S=2p^a／任意B界均已Lean、MRSTT高度链已Lean，
或反射/和模数/素数幂排除的历史首次性。旧k5两素数幂和结果已有明确重叠，
见 `reflection-boundary-handoff.md` 的实际源哈希和范围对照。

下一步由主任务负责一般B消费者；A不重复实现，也不启动新方向。
最有价值的全局剩余缺口仍是从原等式强迫某个定量小补因子，
而非仅知道各补因子必须足够大。当前审核没有改变该判断。
