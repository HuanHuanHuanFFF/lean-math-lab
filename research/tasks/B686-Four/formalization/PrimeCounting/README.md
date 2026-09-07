# U5：全局线性素数计数界

所属任务：B686-Four，第八轮续段。仅本目录归本分支所有；未改冻结round8记录或UniformDistance。

- 续段起点：2026-09-07 18:49:33 UTC；原截止19:19:33；分支交付目标19:12；没有延期。
- 子任务接手时的实际时钟：19:01:00 UTC。主任务负责U4，另一研究分支负责U1-U3，本分支仅负责U5。
- 目标：对所有N:Nat，`77 * Nat.primeCounting N ≤ 16 * N + 616`，即π(N)≤(16/77)N+8。

## 证明结构

`wheelPred n := Nat.Coprime n 2310`，`Nat.count wheelPred N`数0≤n<N的互素数。与旧fold证书不同，本目录给出全部计数语义桥。

1. `wheelData`在一次递归中累计计数和所有前缀不等式。精确常数采用稍宽的215：`77 count(N) ≤16N+215`。有限证书断言`wheelData 2310=(480,true)`，由`decide`核验，没有native_decide。
2. `wheel_data_count`证明递归计数等于mathlib的Nat.count；`wheel_data_bounds`证明布尔值true传递所有前缀界。
3. gcd对加2310不变，推出`count(2310+n)=480+count(n)`，继而`count(2310q+r)=480q+count(r)`。
4. 欧几里得除法把任意N化为2310q+r，完整得到`wheel_count_linear`。这一桥已经单独编译通过。
5. 任何不与2310互素的素数必整除2·3·5·7·11，故只可能为五个例外之一。对有限集合取基数，得到`π(N)≤count(N+1)+5`。
6. 乘77，使用`215+16+77·5=616`完成目标。

## 当前文件

- `Wheel.lean`：独立编译的有限证书与全局周期桥。
- `LinearPrimeCounting.lean`：单文件完整交付，包含Wheel源及五例外桥，方便后续研究模块导入。
- `Probe.lean`：接口名称的只读探针，不是交付定理。

没有使用RS、素数定理或未解释公理。纯有限证书无公理；全局证明允许的标准传递公理为propext、Classical.choice、Quot.sound。最终编译、公理审计、源指纹及实际时间会在交付前补齐。

## 环境

现有PrimeCounting.olean缺失，运行`scripts/lake.ps1 build Mathlib.NumberTheory.PrimeCounting`增量构建成功（输出最终1248 jobs，其中本次约19个模块实际构建）；没有安装、下载或改动依赖版本。完成后立即通知主任务，避免重复构建。未主动构建Chebyshev或ExpBounds。

## 下一验收

完整LinearPrimeCounting编译、精确传递公理审计和外部consumer导入检查。若全部通过，U5数学与Lean桥闭合；这不等于B686位移界或全題已闭合。

## 冻结与最终验收（2026-09-07 19:10:47 UTC）

U5已经完整闭合。最终可调用定理：

```lean
B686PrimeCounting.prime_counting_linear (N : ℕ) :
  77 * Nat.primeCounting N ≤ 16 * N + 616
```

- 最终命令：`pwsh -File research/tasks/B686-Four/formalization/PrimeCounting/verify.ps1`；exit 0。
- `LinearPrimeCounting.lean`已用`--root=<本目录>`编译为本目录`LinearPrimeCounting.olean`；有限证书、周期语义桥、五例外比较、目标定理的四个精确`#guard_msgs`公理守卫全部通过。
- `Consumer.lean`通过实际`import LinearPrimeCounting`使用目标定理，且重新守卫其传递公理。导入方法由verify.ps1展示：在现有mathlib搜索路径前加入本目录。consumer验收在主任务最新冻结消息前已经启动，收到消息后没有启动新的证明、构建或U6。
- [verification.log](verification.log)记录两个成功步骤；单文件和consumer的log在严格guard成功时为空，这是正常结果。
- 有限证书无任何公理；其余三个被审计的全局定理依赖且仅依赖`propext, Classical.choice, Quot.sound`。没有sorry、admit、native_decide或新增axiom声明。
- Lean pinned `leanprover/lean4:v4.33.1`，mathlib pinned `0df444a360eaa60ab8c11dca51a86af692955474`。未改变依赖版本，未提交、推送或修改冻结记录。
- 唯一工程失败：verify初版把Lean的`-o`直接转给PowerShell高级脚本，触发`-OutVariable/-OutBuffer`参数歧义；改为显式`-LakeArgs`数组后重新验收通过。这不是数学或Lean证明失败。
- 最终源、consumer、脚本、日志及olean的SHA256见[artifact-hashes.json](artifact-hashes.json)。

## 尚未完成的上层义务

U6尚待主任务：把Nat素数计数界转为实数输入的floor界，与Chebyshev theta界及Abel/积分公式拼接，推出k≥250000时π(2k−1)·log k<3k。随后还需与U1-U4的gcd及因子估计组合，得出全局d>k²/250000。这些解析桥及B686组合不由本目录定理自动完成；没有声称原题全域无解。

研究来源与新颖性：初等轮筛和周期计数是经典方法。本次贡献是特定常数的完整Lean证明链，不主张数学首次性。该分支的数学链先前已有独立纸面复核，本次是核验其精确形式化，没有新增外部同行评审或发表。
