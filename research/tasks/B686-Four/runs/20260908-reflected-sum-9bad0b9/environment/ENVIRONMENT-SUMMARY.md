# B686 round9 environment summary

时间：2026-09-07 UTC；仓库：`/workspace/scratch/0d28e8b53182/lean-math-lab`。

## 固定输入与真实版本

- `lean-toolchain`：`leanprover/lean4:v4.33.1`，SHA-256
  `3aac669c7a910ec2389f4e4f921b605adf6ebf2d1e0c9b9cd0be4d33f3f5db71`。
- `lake-manifest.json`：mathlib input `v4.33.1`，revision
  `0df444a360eaa60ab8c11dca51a86af692955474`，manifest SHA-256
  `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。
- 安装目标：`.tools/elan`；依赖源码、Lake 构建物及定向 cache：`.lake/`。
- 实际版本命令（均通过仓库既有 `scripts/lean-work.sh`，只为容器 `/proc` 启动兼容而设置 preload）：
  - `elan 4.2.4 (227caca13 2026-08-25)`
  - `Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)`
  - `Lake version 5.0.0-src+819816b (Lean version 4.33.1)`
- `elan which lean` 指向
  `.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean`；该文件为真实 x86-64 ELF，SHA-256
  `e8baaa71855a616dc351028f3ad2200051b0671f423a1696a100e809302d5550`。

## elan 安装诊断

官方安装器 URL：
`https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh`；保存的忽略副本在
`.tools/elan-init.sh`，SHA-256 为
`a620ff164161622f8d37c54845492004bb84d6877cdbc944dd65c1aa685bf53`。

第一次命令返回 0，但日志真实显示 `tar: elan-init: Cannot change ownership ...` 和
`tar xf elan-init.tar.gz` 失败；该返回值未被当作成功标准。随后使用同一官方安装器和
`TAR_OPTIONS=--no-same-owner` 最小重试，日志无 ownership 报错；最后以真实 elan/Lean/Lake
二进制版本和 smoke 编译作为接受证据。

对应日志：`elan-install.log`、`elan-install-no-owner.log`、`version-verification.log`。

## 定向 cache

后续 cache 命令均显式设置：
`MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache"`，没有执行 `lake update`。

- 全量探测：`cache get` 报告 8,690 文件；在 88 个文件附近按成本停止，日志
  `cache-get.log`，不宣称成功。
- 早期 922 文件试验：显式模块参数被 cache 解释为 root，报告 922 个传递文件；在 114 个附近停止，日志
  `cache-targeted.log`。这次用了显式 `--cache-from=master`，产生了 cache 安全范围提示，不作为最终成功证据。
- 首需四 root：
  `Mathlib.Data.Nat.Prime.Basic`、`Mathlib.Algebra.BigOperators.Intervals`、
  `Mathlib.Tactic.Ring`、`Mathlib.Tactic.NormNum`。
  命令实际报告 `Attempting to download 864 file(s)`，随后
  `Decompressed 864 file(s)`、`Decompressed 1 already-cached file(s)`、exit 0；日志
  `cache-targeted-prime.log`。
- PrimeSynchronization 追加三 root：
  `Mathlib.Algebra.BigOperators.Associated`、`Mathlib.Data.Nat.Prime.Basic`、
  `Mathlib.Order.Interval.Finset.Nat`。
  命令实际报告 47 个新文件、`Already decompressed 859 file(s)`、exit 0；日志
  `cache-prime-sync.log`。
- `cache lookup` 对每个显式模块都打印了对应 root `.ltar` 路径；`Mathlib.Tactic.Ring` 的
  lookup 注释明确为 `git=mathlib4@0df444...`，证明没有把 root 参数静默忽略。
- 21:32:34 UTC 的最终 lookup 对 Associated、Nat.Prime.Basic、Finset.Nat、NormNum、Ring
  五个 root 均打印相同的 `git=mathlib4@0df444...` 注释；详见 `cache-root-verification.log`。
- 当前 `.lake/mathlib-cache` 约 203 MB、2,753 个 `.ltar`；整个 `.lake` 约 3.4 GB，磁盘余量约 23 GB。
  早期误用的默认 `/root/.cache/mathlib` 中本轮触及的文件已移入 `.lake/mathlib-cache`，未清理未知的外部文件。

## 最小实证

文件：`BasicSmoke.lean`。实际命令：

```sh
MATHLIB_CACHE_DIR="$PWD/.lake/mathlib-cache" \
ELAN_HOME="$PWD/.tools/elan" PATH="$PWD/.tools/elan/bin:$PATH" \
bash scripts/lean-work.sh lake env lean \
  research/tasks/B686-Four/round9/environment/BasicSmoke.lean
```

21:30:28 UTC 退出 0；文件覆盖整数 `norm_num`、`Nat.Prime`、Nat Finset 区间/求和、内置
`omega` 的模算术及整数 `ring` 恒等式。日志：`basic-smoke-final.log`。

## 后续分数桥接 cache 与 accepted 冷路径 verifier

PhaseInterface 所需基础 root 已定向完成：
`Mathlib.Algebra.Order.Floor.Ring`、`Mathlib.Data.Real.Archimedean`、
`Mathlib.Tactic.Linarith`、`Mathlib.Tactic.FieldSimp`；21:42:13–21:43:03 UTC
下载/解压 58 个文件、复用 878 个，exit 0。完整日志：`cache-phase-interface.log`。

随后最初请求 `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` 与
`Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus`，cache 正确解析为
1477 个待下载文件；按范围变更在 391 attempted/388 decompressed 附近中断，已得文件保留，
该批次不作为成功证据，日志：`cache-integral-interface.log`。

按 StripeIntegral 当前实际首需范围改为只请求：
`Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic`、
`Mathlib.MeasureTheory.Function.Floor`。21:51:18–22:00:53 UTC 的命令实际报告
1493 个既有解压文件，下载并解压 1068 个文件，另复用 1 个已缓存文件，耗时 571565 ms，
exit 0；没有请求 FundThmCalculus，没有执行 `lake update` 或全量 cache。完整日志：
`cache-periodic-floor.log`。两个 root 的 `cache lookup` 均找到 `.ltar` 且固定到
`git=mathlib4@0df444a360eaa60ab8c11dca51a86af692955474`：

- `Periodic` → `.lake/mathlib-cache/3c17fe7515102474.ltar`
- `MeasureTheory.Function.Floor` → `.lake/mathlib-cache/af29f536161333a6.ltar`

lookup 证据在 `cache-periodic-floor-root-verification.log`。

22:39:57–22:40:58 UTC 仅补充主任务明确给出的
`Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts`；
`Mathlib.Analysis.SpecialFunctions.Log.Basic` lookup 已成功，未重复下载。前者实际报告
76 个文件，下载/解压 76 个并复用 2642 个已解压文件，exit 0。
准确 root 证据为：

- `IntervalIntegral.IntegrationByParts` → `.lake/mathlib-cache/452cd33df5bc66ee.ltar`
- `Analysis.SpecialFunctions.Log.Basic` → `.lake/mathlib-cache/53991385b3b3998e.ltar`

两者均标记 `git=mathlib4@0df444a360eaa60ab8c11dca51a86af692955474`；完整下载日志为
`cache-integration-by-parts.log`。本次仍未执行 `lake update` 或全量 cache。

22:44:53–22:45:13 UTC 又按 WeightedGeometry 的明确需求只请求
`Mathlib.Analysis.Calculus.Deriv.Inv`。初始 lookup 因 `.ltar` 缺失 exit 1；定向命令实际
报告 1 个文件，下载/解压 1 个并复用 1972 个已解压文件，exit 0。最终 lookup exit 0，
固定到 `.lake/mathlib-cache/1961fc98f52a65a2.ltar` 和同一 mathlib revision；完整日志：
`cache-deriv-inv.log`。没有下载其它 root。

22:49:37–22:50:16 UTC 按显式 W 需求只请求
`Mathlib.Analysis.Calculus.BumpFunction.InnerProduct`；实际下载/解压 42 个文件，复用
2466 个已解压文件，exit 0。`Mathlib.Analysis.SpecialFunctions.SmoothTransition` 与
`Mathlib.Topology.Algebra.Order.Floor` 均未下载、直接 lookup 成功；三者固定 root 为：

- `BumpFunction.InnerProduct` → `.lake/mathlib-cache/13bb7f857c5ede32.ltar`
- `SmoothTransition` → `.lake/mathlib-cache/3b43b50e6d675f25.ltar`
- `Topology.Algebra.Order.Floor` → `.lake/mathlib-cache/1826c7c87bd76bd6.ltar`

均标记 `git=mathlib4@0df444a360eaa60ab8c11dca51a86af692955474`；没有请求 FiniteDimension
或其它 root。

22:56:23–22:56:41 UTC 为 legacy `TargetBridge` 的唯一缺失 direct import
`Mathlib.Algebra.BigOperators.Ring.Nat` 补充 1 个文件，exit 0；最终 lookup 为
`.lake/mathlib-cache/8b4d6f6e09f5ec04.ltar`，同一固定 revision。日志：
`cache-targetbridge-ring-nat.log`。

`verify-round9.sh` 可从任意 cwd 定位仓库；最新从 `/tmp` 的实际冷路径运行 exit 0。
当前 accepted 顺序和分类为：HitSemantics（proof）、PrimeSynchronization（proof）、
CounterexampleChecks（diagnostic）、PhaseInterface（proof）、StripePrimitive（proof）、
StripeIntegral（proof）、WindowIntegral（proof）、QuarterGeometry（proof）、
GridGeometry（proof）、PhaseGeometry（proof）、WeightedGeometry（proof）、
PeriodicSmooth（proof）、SmoothTestFunction（proof）、OriginalDiscrepancy（proof）。原题参数连接的
`TargetBridge` 与 `SizeBounds` 仅作为前置 legacy dependency 编译，不计入 accepted proof
root。
每个 root 都单独运行 `check-lean-policy.py`（包括 `sorry/admit/axiom/native_decide` 规则）
并单独编译到 fresh `.lake/round9-verify/olean/`；诊断证书不会和原理论证合并成同一日志项。
最终一遍实际计数为 `#print axioms/#guard_msgs`：3/3、5/5、8/8、3/3、2/2、4/4、3/3、2/2、3/3、3/3、5/5、1/1、6/6、3/3，十四者均
`require_guards=1`，Lean 4.33.1 无 warning。该次 source SHA-256（编译前后相同）为：

- HitSemantics：`3d7811acbc9953243b2886996ccd749929d0d464ac34b834531672586af5f827`
- PrimeSynchronization：`e6484aa19768bc3a58721e73d6289652d6fb70d522303f997a0494f9a1175df8`
- CounterexampleChecks（diagnostic）：`57548aa3cd498518faa4c043f71f9a167acc154a318d618d8f3f805de75728fe`
- PhaseInterface：`521d13ef77da4db04560cc8dbecee0a242d91a957dcfc13ccf374ead8c83c257`
- StripePrimitive：`61b01cf10ca50be0ddfecca084e52d30d7c293709d41281d435fd5a4c8b8dc17`
- StripeIntegral：`76bf85ae01e39e5638fb66e7f1392e9f5435b22c144a6b60819188b07f8d033a`
- WindowIntegral：`33de43ada305f2af030ea33884373f3ec5e8ebce829bd996eb57c61fd934ebdc`
- QuarterGeometry：`f2fe06dcfe5e0fc8e78fb8d11888c812d777ea03b4c91d1fbefbe0faf8c1387d`
- GridGeometry：`fc1ab7d446ebcb3e29fef6de98866337bea54c64bb148bbe6ace34549027b11d`
- PhaseGeometry：`2cff8cbe7e7aa11bb2a742f4cbd6ae0f6292fc3c4800e8c5b45ebe5fc6438e5b`
- WeightedGeometry：`7c59e92b745a394d0ca28f9635fdd21dbce929b063ac286b5c746158a8669eae`
- PeriodicSmooth：`f7492832f9edac56e801d0ddf26558ca520fa167e379fabcbfd96f0402d8a9cc`
- SmoothTestFunction：`4274a493469bfdaab83e882d95767000e3d9b67c87fbc67807be466546b80012`
- OriginalDiscrepancy：`ec38cdc7a4d4a55a95a16788b7ea325031fb33f48063a9f0e064ace85975dda9`

实际成功和 before/after hash 也分别留在 `verify-round9-logs/` 中对应的十四个
`.lean.log` 文件。23:02:35–23:03:26 UTC 的十四 root 验收 exit 0；该十四 root 验收仅验证
当前 Lean 文件、其 kernel axiom 输出及 policy。`OriginalDiscrepancy` 形式化了固定显式
C∞ 窗口下的无条件自然数桥接结论；MRSTT 外部分析和渐近高度 assembly 仍明确保留为 paper
部分，不被环境报告声称为已 Lean 化。

`TargetBridge` 与 `SizeBounds` 的最终 legacy 编译分别写入：
`.lake/round9-verify/olean/research/tasks/B686-Four/independent/TargetBridge.olean` 和
`.lake/round9-verify/olean/research/tasks/B686-Four/round8/continuation/SizeBounds.olean`。
二者 source hash 分别为
`b26c40df78c176105d86d8d01789a927f2a3d9ba1855afde14120c38b2234c57`、
`7da4f63de39ca33f7817e4b8c5d208c293cbb6b34f6d128128826d0544ee01d1`，before/after 相同，
但属于 legacy，未强制 guards。早期 independent prefix 的错误 `.lean.olean` 输出及缺
`Ring.Nat` 失败日志保留在 `independent-dependency-compile.log` 和
`sizebounds-dependency-compile.log`，不作为成功证据。

## 范围与异常

- `lean-toolchain`、`lake-manifest.json`、`scripts/lean-work.sh`、`scripts/verify.ps1` 均无 tracked diff；标准
  `Math/Tests/Examples` validation 已通过，未运行 research 全仓库 build。
- 9 个 manifest package 的 checkout revision 已逐项核对为 `OK`，详见 `package-pin-verification.log`。
- 一次初始 package-revision 汇总命令因 Python 内联引号错误失败，随后用 heredoc 重跑成功；不是 Lean/cache 失败，保留在最终命令输出记录中。
- 除上述记录的 focused roots 外，没有执行其它 cache 请求。更正旧尾注：`OriginalDiscrepancy`
  已在23:02:35–23:03:26的最终14根验收中通过（见上方实际日志）；掉线后新增的纸面候选
  没有进入 verifier，也没有被称为新Lean结果。此文案更正于2026-09-08 00:27 UTC，不是新执行。

## 官方仓库验证命令与本地成本估计（只读）

原仓库标准入口 `scripts/verify.ps1` 的实际流程是：先对 `Math/`、`Tests/`、`Examples/`
共 5 个 Lean 文件运行 `check-lean-policy.py`，再执行 `lake build`，最后逐个执行 3 个
`lake env lean` 检查。`docs/GETTING_STARTED.md` 与 GitHub workflow 给出的等价顺序一致；
CI timeout 为 30 分钟，workflow 另行请求 8 个 focused cache root。

此前只读状态：标准 8 个 focused root 都能 lookup 到固定 revision；
`.lake/packages/mathlib/.lake/build` 约 2.2 GB、2385 个 olean/ilean，开始官方验证前项目根
`.lake/build` 尚无本项目产物；磁盘余量约 23 GB。因此不重新下载 cache 的情况下，
官方等价验证已实际运行（`pwsh` 不可用）：22:52:34–22:52:48 UTC，
`python3 scripts/check-lean-policy.py --roots Math Tests Examples`、
`bash scripts/lean-work.sh lake build`、3 个 `bash scripts/lean-work.sh lake env lean ...`
分别 exit 0；build 报告 1424 jobs，整体 exit 0。完整命令和逐步 exit 记录在
`official-validation-equivalent.log`。因此此前“低个位数分钟”的估计已由约 14 秒实测取代；
没有启动意外的 mathlib 源码 bulk build。
