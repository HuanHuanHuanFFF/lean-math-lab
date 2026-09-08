# B699 实际素数幂转移验收

## 精确目标与证明链

对所有 `n,i,j:ℕ`，定义 `Pᵢ(a)=∏_{p∈a.primeFactors, i≤p}p^(a.factorization p)`，保留完整指数与边界 `p=i`。本批原题消费者接受 `1≤i`、`i<j`、`j≤n/2`，证明：

```text
(¬∃p, p.Prime ∧ i≤p ∧ p∣gcd(choose(n,i),choose(n,j)))
  → Pᵢ(choose(n,i)) ∣ choose(j,i).
```

另有逆否消费者：相同原题范围下，若这个实际整除不成立，则存在原题要求的公共素数。它是必要条件归约及其逆否式；尚未证明全部合法输入都违反整除。

纸面来源：外部报告 §5.0 / 附录 F、ZIP `bridge-lean/README.md`。外部审计独立新写的 [DivisorTransfer.lean](lean/DivisorTransfer.lean) 按原字节保留；原题 gcd 接口见 [Consumer.lean](lean/Consumer.lean)。标准恒等式和互素消去不主张首次发现，也不声称恢复了 Price 原稿或代码。

依赖顺序：`Nat.choose_mul` 的实际恒等式 → 互素除数转移 → 实际素数幂乘积整除与互素 → 从原题范围推出 `i≤j≤n` → 原题 gcd 反例假设导出转移及逆否结论。`choose(n,i)>0` 从范围得到，没有零值退化。EEES、十二例外、平方必要不等式 N 和 Vandermonde 区域均不在这条 Lean 依赖链中。

## 验证与接受状态

从仓库根目录运行：

```sh
python3 research/external-results/20260908-erdos-686-677-699-b3c1b7/verify.py
```

固定 Lean `v4.33.1`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；全部 9 个依赖 pins 的提交、origin、干净状态均匹配。每题使用新输出根，只复用固定包缓存；所有项目依赖均从当前源码重新编译。源码 policy 与实际消费者的传递公理守卫通过，允许集合恰为 `propext, Classical.choice, Quot.sound`。没有新增未证明公理、占位证明、额外采样/解析估计前提或有限范围替代。

原 ZIP 的脚本、旧对象、二进制没有执行或参与新项目编译。公共库整体未修改，本次验收覆盖受影响项目依赖闭包；未重跑无关历史有限证书或 API 文档构建。审查是 AI 静态检查，编译是 Lean 内核检查，均不构成人工同行评审或新颖性认证。

本题实际重新编译 2 个项目模块（外部归约、新消费者），6 项公理守卫通过。最终成功证据：[20260908T145158Z/evidence.json](verification/20260908T145158Z/evidence.json)。每个命令、退出码、源码前后哈希、输出哈希和日志位置均在其中。

## 失败与修正

首次 `20260908T144227Z`：外部归约编译通过，两个新长名称的公理输出换行与 guard 注释不匹配。第二轮 `20260908T144352Z` 被磁盘耗尽中断，`evidence.json` 留有空文件，不能作为可用验收；相关日志原样保留。格式选项尝试的源码另存 [notes/guard-format](notes/guard-format)，该选项已由同轮 B677 日志证实无效。最终去掉选项并修正注释换行，定理和证明保持不变。

## 结论与后续

本次闭合了从原题反例假设到实际素数幂整除的完整链，以及实际非整除时的原题公共素数消费者。未宣称扩大数学排除区域或证明 B699。EEES 的精确条件及十二例外、随后不等式和 Vandermonde 链仍仅保留外部纸面验证；后续形式化需分别补齐，不能作为已证明公理接入。
