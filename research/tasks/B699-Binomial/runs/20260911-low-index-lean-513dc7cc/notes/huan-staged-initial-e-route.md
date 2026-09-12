# ThreeTwo 初值：分开符号结构与数值计算

本记录描述一次已验证的证明工程修复，不宣称新数学发现。原题计数仍以 target-status.json 为准。

原目标保持实际 Padé 量 actualE 23 15 0 1 (1/9) = 13515592997264/1594323，没有加入系数正确性或数值正确性作为外部假设。修复后的完整 δ0 链在1536MiB下通过，最终传递公理仅标准集合。

尝试与证据：

- 直接归约 Nat.choose 的版本耗尽心跳；改用已证明等价的阶乘商。
- 直接在具体 Polynomial 上归约快系数，1536和3072MiB均触发内核内存限制；后者见 verification/20260911T235437694706Z/evidence.json。
- 去掉 actualE 桥接，只计算闭合 Polynomial，仍于1536MiB失败，12.752秒；见 verification/20260912T000041034985Z/evidence.json。这只把失败定位到闭合求值层，不能据此称作 Lean 内核缺陷。
- 在符号 n、系数函数 a、环同态 f、变量 z 下先证明 eval₂ 等于有限和；分别验整数系数和纯有理数和；最后仅应用这些定理并用 Eq.trans 接回闭合多项式和 actualE。该分层方式通过。

复用入口：lean/I11ECoefficientStaging/EvalBridge.lean 中的 coefficientPolynomial_eval_sum，以及已验 ChooseFast 通用等价。具体 δ0 共8个系数，最大27bit。完整源包冻结在 experiments/huan-i11-e-coefficient-staging-5e2d13bb/FREEZE.json，导入映射与独立数值复核见 reviews/huan-e-coefficient-staging-integration-5e2d13bb/adoption.json。

完整接受记录：

- i11-e-staged-coeff0：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T003950997464Z/evidence.json；Root SHA 858d66c5890a0815b39256d55e7da42ad959cd043cbd70ff2fb2b0c92ce2790d。
- i11-e-staged-eval-bridge：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004041506426Z/evidence.json；Root SHA 1b87584dcd2db67ca879e4e240c8cf2a4cf3e3a2e65eaabf6ba071dcc460ef6b。
- i11-e-staged-all-coeffs：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004132521427Z/evidence.json；Root SHA 9bdc90d2eafba92fec9880d2fca65b11f8fec5fbc1fd6f89359b649fbf8212f3。
- i11-e-staged-rat-sum：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004223639464Z/evidence.json；Root SHA 24b4fc0821111478c0b15f232f0fb0dff77c800de7b7275da340209a6199d6fe。
- i11-e-staged-closed-delta0：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004312776216Z/evidence.json；Root SHA e54bda092abfb70499630368d9d985ce6d2a6cbb71cea40a3ccf394095470d31。
- i11-e-staged-actual-delta0：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004406638443Z/evidence.json；Root SHA 5b14cfef0b908427c6a5572a7c927e1d1969bd4084d0cd0837a5d3b535531614。
- i11-e-staged-full-delta0-audit：research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/20260912T004501076970Z/evidence.json；Root SHA 5491face418e556fa1f2723196e86e7bc46a7a16695638ac49220c7379a44660。

2026-09-12 01:02 UTC 检查点：δ1的九系数、纯Rat和及闭合值也已通过；实际量桥接、双cap及初始高度仍在v24中检查。δ1和cap的29个冻结文件及两条纯有理上界已独立重算，五个原公共声明类型保持；见 reviews/huan-delta1-caps-integration-5e2d13bb/adoption.json。不能把源码适配或单个初值等同于无界高度界，更不能提升为完整 i11 原题验收。
