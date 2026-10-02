# 连续真Gap有限前缀与完整指标连接

Owner `/root/gap_supply_astra`，Research/Astra max。原UTC18:40:45–19:20:45；原19:15:45收尾。Root于19:09:30在原截止前依据具体Composite突破登记EXTENSION.md并告知用户，一次用完¼原时长的10分钟扩展：最终hard19:30:45、cleanup19:25:45，仅用于下述已冻结Composite闭环及验证，不追加方向或大表。Baseline ac6acda07；只写本supply，C唯一重CI，S独立接受，Root Git。R7/低23不做；无本机Lean、大筛或新安装。

## 优先目标与准确范围

首步是旧Pilot64 d8df…的66根真实成本，原合法y范围 `[10000000,10146761)`。新路线按块当前下界L取 `g=floor(L/4095)`，实际PrimeChain从seed到H给 `[L,H−g)` 的真素数Gap：对 `n=y+g` 使用near_top，推出 `y<p≤y+g`，再用 `4095*g≤L≤y`。下一块下界是前块上界，gap非降，因此旧末prime H满足下一块seed≤L'+g'。各块独立编译，最后用准确上下界case split接连续前缀，没有逐y扫描。

Root已将本轮第一目标收窄为 `U=20004075`：这是真Gap前缀可开始服务完整指标i=4885的精确门槛。最初完整finite-y目标仍为strict upper122568684，但不在首闭环成本前生成全表或承诺本窗接受。

## 生成器入口（尚未执行）

[generate_segments.py](generate_segments.py) 已准备。默认每块128条新边，支持64；每块自含seed与新prime的NormNum.Prime证明、实际chain、实际y消费者，不串import先前所有素性块。最终PrefixNNN另import旧Pilot及已生成块并接准确连续y域。全部输出初始标记candidate，Python不决定Lean接受。

旧228个Block literal源先逐文件核size/SHA，池只到20000093，范围内二分抽取既有literal；超池后仅从a+g向下找新prime，约1.1万个小整数的除数基用于精确试除。没有遍历目标中每个y。每个选中数最后必须由Lean NormNum.Prime实际证明。

运行必须给C真实Pilot成本receipt，字段为actualCompilerExit=0、actualCheckerExit=0、actualAxiomAuditAccepted=true、actualCostSeconds>0、fixedSourceSha256=d8df…。需另给本轮source deadline，过期则拒绝新块。示例参数：`--blocks 1 --edges-per-block 128 --target 20004075 --accepted-cost-receipt <C真实JSON> --source-deadline 2026-10-02T19:15:45Z`。仅C在远端执行；没有伪造receipt在本机绕过门禁。

块源码不会覆盖已存在的不同字节；生成器可确定性复现已存在相同字节。generation-current.json只是候选生成账本，真实compiler/AX/checker/接受另由C/S保存。

## 原题消费者预期

独立与S反追actual callsite得到：`y=n−i`，小比例支路 `n<4096*i` 给strict `y<4095*i`；n>20M及合法i<j≤n/2给y≥10M。因此连续真Gap `[10M,U)` 可支持原题完整 `4883≤i` 且 `4095*i≤U`，另由已验finite choose和大比例域处理另外两支。不是把4096*i当y上界。

首新增4885需U=20004075；full U122568684可达到i≤29931。上述仍待actual localized消费者准确源、ABI、内核与S接受，不据算术计完整指标。原题供应对象的物理恢复由C执行，恢复本身增0。

## 19:05新短消费与改派

检查实际原题消费时发现更短的代数路线。对相邻两个非prime指标i、i+1，旧同prime p≥i因i非prime排除p=i，故p≥i+1；若p整除i+1，则正性和p≥i+1给p=i+1，违i+1非prime。由实际恒等式 `Nat.choose_succ_right_eq`：`C(n,i+1)*(i+1)=C(n,i)*(n-i)`，可从p整除旧choose消去新分母i+1，得到p整除新choose；同一p整除C(n,j)不变。

原合法 `i+1<j≤n/2` 包含旧i的合法范围。这里两个非prime条件必需，不能从本论证跨过下一个prime指标。S已独立挑战方向、端点、量词和除性，未见数学反例；尚不构成kernel接受。

[CompositeTransferLegacy.lean](CompositeTransferLegacy.lean) 于19:05:37冻结，SHA256 `31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747`，legacy唯一import旧 `20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean`。6根：generic `common_succ_of_nonprime`，四个实际 `complete_4885/4886/4887/4888`，以及 `complete_4885_through_4888`。四个具体根直接从已接受完整4884出发，两个nonprime条件各自以decide证明，没有Gap、uniform估计、新有限prime表等数学输入；所有n/j和同p的完整两choose均保留。

Root将本轮首优先切到此短闭环，暂停prefix-first大执行包。若实际被C/S接受，将新增四个完整指标、累计连续段延到4888；目前仅源候选，新增0。必要的旧33+94/129物理supplier恢复由C完成，旧数学接受不重记为新进度。源31ca保持冻结；仅根据C真实API/compiler诊断另存必要修订。

## 当前状态

首Pilot已由S于18:56:36正式独立接受，fixed e0eadc/run37049873609，实际3source、70个完整Std3根、2normalchecker0及89成员绑定；准确所有Nat y在[10M,10146761)，无数学输入。它消除了一个真实有限prime-gap前缀；原题完整指标仍新增0。

生成器e933d862…与LocalizedConsumerLegacy04b889…已写、经S源审；binder接口已显式lambda和U，尚未大生成或新内核运行，作为后继候选保留。新Composite是当前唯一后续运行目标。不能把旧0.662584秒试除当新Lean成本。uniform θ/ψ无限输入仍未供，所有candidate或finite前缀均不等于原无限Gap完成。
