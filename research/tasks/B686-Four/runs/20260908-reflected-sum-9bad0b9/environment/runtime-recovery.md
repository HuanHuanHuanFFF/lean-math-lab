# 2026-09-08 运行环境恢复验收

本记录属于环境辅助线。主任务于00:54 UTC报告主exec恢复，并已自行保存stash及fetch/ff。本线00:56 UTC开始正常读取，00:58:47完成14根与2旧依赖实际Lean复验，01:00:04完成四份JS的Node复跑。此次辅助截止01:30 UTC；整轮仍02:00 UTC，不自动延期。

## 基线与真实版本

- 实际本地HEAD：`25b25fa9bddd77386223d9e7c6b94ad1497ff365`。
- 实际HEAD tree：`44113721228857cba84cd984e974986a75ad00b4`。这是Git提交树，不代表并行开发中的整个工作树无修改。
- 固定工具链：`leanprover/lean4:v4.33.1`；实际输出为`Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)`。
- 实际Lake：`Lake version 5.0.0-src+819816b (Lean version 4.33.1)`。
- `elan which lean`实际路径：`/workspace/scratch/0d28e8b53182/lean-math-lab/.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean`。
- Lean二进制SHA256：`e8baaa71855a616dc351028f3ad2200051b0671f423a1696a100e809302d5550`。
- mathlib固定且实际checkout：`0df444a360eaa60ab8c11dca51a86af692955474`（输入tag `v4.33.1`）。manifest列出的全部9个package，其实际HEAD与锁定rev逐一一致。
- `lean-toolchain` SHA256：`3aac669c7a910ec2389f4e4f921b605adf6ebf2d1e0c9b9cd0be4d33f3f5db71`。
- `lake-manifest.json` SHA256：`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。

具体版本输出、package rev、命令argv、起止时间和退出码见[Lean证据JSON](recovery-logs/20260908T005756Z-lean/evidence.json)。本次没有依赖更新或cache下载；复用了恢复前已有的mathlib预编译依赖。

## 14根与2旧依赖复验

完整读过现有`verify-round9.sh`后确认：无位置参数，日志路径固定为脚本旁的`verify-round9-logs`。因此把脚本原样复制到新的恢复运行目录后执行，未修改共享verifier。原件与执行副本SHA256均为`ce7e3bb72d7c29cd0ad903a467e5e72f5c062f9019d7000ef17ceb6ca7cff49a`。

实际入口命令（仓库根cwd）：

```sh
python3 research/tasks/B686-Four/round9/environment/recovery-logs/replay-lean.py
```

记录器调用的实际verifier命令如下，cwd特意为仓库父目录`/workspace/scratch/0d28e8b53182`，验证从其他cwd定位仓库根：

```sh
bash /workspace/scratch/0d28e8b53182/lean-math-lab/research/tasks/B686-Four/round9/environment/recovery-logs/20260908T005756Z-lean/verify-round9.sh
```

运行区间：**00:57:56.787650—00:58:47.856940 UTC**；verifier耗时**51.069秒**，**exit 0**；外层记录器也**exit 0**。每个文件实际执行`bash scripts/lean-work.sh lake env lean -o <output> <source>`；输出位于忽略的`.lake/round9-verify/olean`，正确后缀为`.olean`。16个项目文件均从源码重新编译，依赖缓存的存在本身没有被视为编译通过。

先编译两个旧依赖：`independent/TargetBridge.lean`和`round8/continuation/SizeBounds.lean`，均`legacy`、`require_guards=0`、实际编译exit 0。它们不是本轮新验收证明。SizeBounds正常打印6项标准传递公理列表，完整输出保留。

随后按原verifier顺序编译以下14个`round9/main`根，均`require_guards=1`、源码policy通过、实际编译exit 0，编译前后源码SHA256一致：

| 根 | 类型 | 实际接受的guard数 |
| --- | --- | ---: |
| HitSemantics | proof | 3 |
| PrimeSynchronization | proof | 5 |
| CounterexampleChecks | diagnostic | 8 |
| PhaseInterface | proof | 3 |
| StripePrimitive | proof | 2 |
| StripeIntegral | proof | 4 |
| WindowIntegral | proof | 3 |
| QuarterGeometry | proof | 2 |
| GridGeometry | proof | 3 |
| PhaseGeometry | proof | 3 |
| WeightedGeometry | proof | 5 |
| PeriodicSmooth | proof | 1 |
| SmoothTestFunction | proof | 6 |
| OriginalDiscrepancy | proof | 3 |

合计51个`#guard_msgs`的源码期望被实际Lean接受；14个新根均无编译输出或warning。没有把新纸面候选、JS诊断或新开发根加入集合。逐根源码SHA、完整命令及输出在[新运行日志目录](recovery-logs/20260908T005756Z-lean/verify-round9-logs)，总输出见[verifier.log](recovery-logs/20260908T005756Z-lean/verifier.log)。87个既有受保护文件（旧环境日志/记录、固定pins、仓库脚本和相关Lean源码）的运行前后SHA映射完全一致，见证据JSON的`protected_unchanged: true`。

## Node复跑与保存JSON比较

实际Node：`v24.19.0`，路径`/opt/codex/runtimes/codex-primary-runtime/dependencies/node/bin/node`。实际入口（仓库根cwd）：

```sh
python3 research/tasks/B686-Four/round9/environment/recovery-logs/replay-node.py
```

记录器逐一执行`node research/tasks/B686-Four/round9/main/<源文件>`（实际argv使用完整绝对路径），stdout保存到新的恢复目录，stderr单独保留。01:00:03.572559—01:00:04.134510 UTC，四个Node进程及外层记录器均**exit 0**。每份输出与对应的已保存JSON**逐字节完全一致**，另做JSON结构及精确值比较也全部一致；源JS与保存JSON的前后SHA均未改变。

| JS源文件 | 保存JSON | 耗时/秒 |
| --- | --- | ---: |
| offline-certificates-independent.js | offline-certificates-output.json | 0.065 |
| three-moment-independent.js | three-moment-independent-output.json | 0.165 |
| three-moment-coefficient-check.js | three-moment-coefficient-output.json | 0.265 |
| twice-prime-power-finite.js | twice-prime-power-finite-output.json | 0.066 |

四份源文件、原JSON及本次输出的完整SHA256、精确argv、退出码见[Node证据JSON](recovery-logs/20260908T010003Z-node/evidence.json)。同目录保留本次stdout、stderr和原JSON的`.saved`副本。执行结束时`main/*.js`仅有以上四份，没有遗漏的JS文件。比对没有修改数学输入、范围或保存结果。

## 01:05 UTC：独立新增根ReflectedGeometry与Node复核

在上述14根与2旧依赖实际重编结束之后，单独检查`main/ReflectedGeometry.lean`。**原verifier及14＋2统计保持原样；新增根只作为一次独立验收列在本节。**

实际入口命令（仓库根cwd）：

```sh
python3 research/tasks/B686-Four/round9/environment/recovery-logs/check-reflected.py
```

源码policy使用仓库现有`check-lean-policy.py`，在忽略目录中的单文件副本上运行，**exit 0**。注释和字符串屏蔽后，源码有6个`#print axioms`与6个`#guard_msgs`。随后使用固定Lean 4.33.1和刚复验的旧依赖前缀实际运行：

```sh
bash scripts/lean-work.sh lake env lean -o /workspace/scratch/0d28e8b53182/lean-math-lab/.lake/round9-recovery/20260908T010554Z/olean/research/tasks/B686-Four/round9/main/ReflectedGeometry.olean research/tasks/B686-Four/round9/main/ReflectedGeometry.lean
```

编译区间：**01:05:54.858733—01:05:59.539591 UTC**，耗时**4.681秒**，**exit 0**，无输出、无warning；新建隔离输出路径中确实生成了olean。外层记录器也exit 0。6项源码中的标准公理期望`[propext, Classical.choice, Quot.sound]`均由实际Lean接受。

- 源码前后SHA256：`c43dc912029ab0a2e4b630c0b53d24497b0a3012cb993ececbbbfe827d5922e4`。
- 新输出olean SHA256：`118051df5680974ab876b8e683d59a5c49de2755d2dacaa0c2ae17d6ab40e5db`。
- 原14根verifier、toolchain和manifest的前后SHA均未变化。

完整命令、退出码、guard名称和SHA见[ReflectedGeometry证据JSON](recovery-logs/20260908T010554Z-reflected/evidence.json)，同目录保留原始编译及policy日志。6个定理覆盖源码所陈述的原题几何与`k=5,S=50`有限尾；**完整S素数幂排除仍不在这次Lean验收范围内**。本线仅核验已有源码，没有开展额外数学研究。

为主任务checkpoint7再次运行既有`replay-node.py`：**01:05:54.822205—01:05:55.382322 UTC**，四个Node进程及外层记录器均**exit 0**，全部输出与保存JSON逐字节一致，JSON精确比较也一致；源JS和保存JSON均未改变。记录器的`unlisted_js`为空，当前四份JS全部覆盖。见[本次Node证据JSON](recovery-logs/20260908T010554Z-node/evidence.json)。本次复核保留01:00的原始日志。

## 01:10 UTC：两个恢复后新根按依赖顺序独立复验

主任务冻结`ReflectedGeometry.lean`及新增`PrimeReflectedSum.lean`后，本线按**Geometry → PrimeReflectedSum**顺序实际重编。当前统计明确为**旧14根＋2旧依赖，另有恢复后2个新根**；共享`verify-round9.sh`及其原集合未修改。

实际入口命令（仓库根cwd）：

```sh
python3 research/tasks/B686-Four/round9/environment/recovery-logs/check-reflected-pair.py
```

记录器创建全新的忽略输出前缀`.lake/round9-recovery/20260908T011015Z-pair/olean`，核对旧依赖源码SHA后复制原16份已验证olean作为依赖，没有重新编译旧14＋2。两份新增olean均由本次实际编译生成；第二根导入的是本次先生成的Geometry。

| 独立新根 | 实际编译UTC区间 | 秒 | policy退出码 | Lean退出码 | guards |
| --- | --- | ---: | ---: | ---: | ---: |
| ReflectedGeometry | 01:10:15.730840—01:10:20.156715 | 4.426 | 0 | 0 | 6 |
| PrimeReflectedSum | 01:10:20.191007—01:10:22.145684 | 1.955 | 0 | 0 | 3 |

外层记录器**exit 0**；两根均无编译输出或warning，9项标准传递公理guards全部由固定Lean 4.33.1实际接受。源码前后SHA相同：

- ReflectedGeometry：`c43dc912029ab0a2e4b630c0b53d24497b0a3012cb993ececbbbfe827d5922e4`。
- PrimeReflectedSum：`20bee0662bdb39be0715f7bd90aa47fbbd2937cf1d60debd3591ad4cd8168b09`。

第二根核验源码所陈述的原题`S ∣ 15*P²`与`S`本身为素数时的完整子族排除，没有高阶接触假设；**高次素数幂子族的完整排除仍未由这两个根形式化**。完整实际argv、依赖来源、olean SHA及逐步退出码见[双根证据JSON](recovery-logs/20260908T011015Z-reflected-pair/evidence.json)，同目录保留两根各自的policy与编译原日志。本次未扩展Node计算；01:05已有四份脚本逐字节一致的复跑证据，交付时只复核其源码/JSON SHA未变。

最新push7准备记录为[checkpoint7-pair-readiness.json](recovery-logs/checkpoint7-pair-readiness.json)；较早的单根准备记录按原时间保留。

## 执行边界与可复验性

23:21左右掉线后，本地Lean/shell不可用，但主任务及研究agent确实在仍可用的code-mode V8执行过标记清楚的BigInt/有理数诊断。不能把这段时期写成“完全没有计算”。本次Node运行是恢复后的复现证据；它与Lean内核验收分别记录，也不把有限诊断提升为无限命题的证明。

本线未操作stash、fetch、merge、commit、push或其他Git写操作；主任务恢复动作按其报告记录，本线只读取当前提交元数据。没有改共享ENVIRONMENT-SUMMARY、main/verification、源码入口或依赖；此次可见写集仅`runtime-recovery.md`与`recovery-logs/*`，另有已授权的忽略编译输出。

标准仓库验证此前的真实日志保持原样，本次未重新运行其`lake build`流程；也没有新的GitHub Actions执行结论。此记录不改变MRSTT及后续纸面组装的形式化状态。

恢复记录器每次创建新的UTC时间戳目录，可用上面命令再现检查而不覆盖本次或旧日志。`SHA256SUMS`位于`recovery-logs/`；从仓库根运行`sha256sum -c research/tasks/B686-Four/round9/environment/recovery-logs/SHA256SUMS`可检查此次交付文件是否变化。01:03及01:08的旧清单分别另存为`SHA256SUMS-20260908T010308Z`与`SHA256SUMS-20260908T010803Z`，保留当时摘要；当前验收使用更新后的`SHA256SUMS`。

以上追加记录及SHA清单核对完成后，环境辅助线暂停写入，交由主任务执行checkpoint7推送及local index/tree核对；本记录不声称该次远端推送已经发生。
