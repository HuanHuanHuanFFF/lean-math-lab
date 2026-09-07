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
- 当前 `.lake/mathlib-cache` 约 195 MB、2,633 个 `.ltar`；整个 `.lake` 约 3.3 GB，磁盘余量约 23 GB。
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

`verify-round9.sh` 可从任意 cwd 定位仓库；最新从 `/tmp` 的实际冷路径运行 exit 0。
当前 accepted 顺序和分类为：HitSemantics（proof）、PrimeSynchronization（proof）、
CounterexampleChecks（diagnostic）、PhaseInterface（proof）、StripePrimitive（proof）、
StripeIntegral（proof）、WindowIntegral（proof）、QuarterGeometry（proof）、
GridGeometry（proof）。StripeIntegral、WindowIntegral、QuarterGeometry 与 GridGeometry
的直接 imports 已由前述固定 cache 覆盖；本次没有增加大 cache 请求。
每个 root 都单独运行 `check-lean-policy.py`（包括 `sorry/admit/axiom/native_decide` 规则）
并单独编译到 fresh `.lake/round9-verify/olean/`；诊断证书不会和原理论证合并成同一日志项。
最终一遍实际计数为 `#print axioms/#guard_msgs`：3/3、5/5、8/8、3/3、2/2、4/4、3/3、2/2、3/3，九者均
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

实际成功和 before/after hash 也分别留在 `verify-round9-logs/` 中对应的九个
`.lean.log` 文件。该九 root 验收仅验证当前 Lean 文件、其 kernel axiom 输出及 policy；
没有把 MRSTT 分析定理作为已形式化前提，也不声称原题已全 Lean 化。PhaseGeometry
仍处于开发阶段，未加入 accepted verifier。

## 范围与异常

- `lean-toolchain`、`lake-manifest.json`、`scripts/lean-work.sh`、`scripts/verify.ps1` 均无 tracked diff；未运行全仓库 build。
- 9 个 manifest package 的 checkout revision 已逐项核对为 `OK`，详见 `package-pin-verification.log`。
- 一次初始 package-revision 汇总命令因 Python 内联引号错误失败，随后用 heredoc 重跑成功；不是 Lean/cache 失败，保留在最终命令输出记录中。
- 除上述 accepted roots 外，尚未下载 Analysis/Real/floor/log/integral 的其他 root。
