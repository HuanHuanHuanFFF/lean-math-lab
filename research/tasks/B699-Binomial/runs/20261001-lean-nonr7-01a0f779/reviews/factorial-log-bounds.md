# FactorialLogBounds 独立技术复核

核验者：`runtime_review`，2026-10-01 14:29 UTC。AI技术审查，不是第二内核或人工同行复审。

接受固定 `tail/FactorialLogBounds.lean` 的两个公开根，源SHA256 `2487c0ea6a60558ec6bda42b3139131fd376c81a7b890b70ce4148d55c03523f`：

1. 对每个自然数 `n≥1`，`n log n-n+1 ≤ log(n!) ≤ n log n-n+1+log n`，声明没有有限上限。
2. 对每个自然数 `q≥1`，`(q²/2)log q-3q²/4+q/2+1/4 ≤ log(Nat.superFactorial q)`，声明没有有限上限。

固定mathlib pin `0df444a360eaa60ab8c11dca51a86af692955474` 的 `Mathlib/Data/Nat/Factorial/SuperFactorial.lean`（源SHA256 `ca9884c79a0a3f431805592f8e7956dd2647c0ecdfe09b665d98c2cc147ed0a4`）定义 `sf(0)=1,sf(q+1)=(q+1)! sf(q)`，并证明 `sf(q)=∏_{x∈Icc 1 q}x!`。因此本声明真正控制 `1!2!…q!`，不是 `∏x^x`。源码一条注释称hyperfactorial有术语误标，接受按实际superfactorial声明解释，不改已冻结成功字节。

两根都通过Nat归纳证明：从已存在的正实数log基本不等式先证明两条相邻log差上下界，再接factorial递推；第二根使用已经证明的factorial下界和superfactorial正性/递推。没有引用Stirling估计作为假设或黑箱。n=1与q=1分别为等号边界；0被准确排除，不能删去此假设（相应下界在0处不会成立）。自然数/实数cast、正性和log乘法非零条件在实际证明体中逐项处理。

独立核对当前源、原字节snapshot、对象、receipt和stdout五hash全与 `tail/verification/20261001T142622263Z/evidence.json` 一致。object SHA256 `59f0e6de5d99d52de8dd4102135abd4aa3f0a5778b1dfb1130312e8f2f01ade9`。真实Lean4.33.1 `-j1 -M3132 -DElab.async=false`，exit0、17.858秒、树WS1378.07MiB，Native0x2030、Job/Process commit0，源前后不变，stderr空。stdout完整两个公开声明和公理输出仅 `propext,Classical.choice,Quot.sound`；四条unused simp warning是冗余rewrite参数提示，不是未完成证明。

接受范围是无界factorial/superfactorial前置，原题完整指标新增 **0**。仍需把实际primePart/三个窗口乘积关系接到这些界及参数接口，证明N常数归一化，再与EC/IC、Gap供应和原题共同素数消费者连接。本文件没有证明这些剩余输入，也没有减少R7。结果是已有初等估计的形式化，不主张原创或完整B699解决。
