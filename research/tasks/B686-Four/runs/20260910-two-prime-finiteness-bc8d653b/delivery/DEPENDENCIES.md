# 依赖、精确实例化与来源状态

## 固定输入

上传包：`B686-finiteness-context-20260909(1).zip`。
固定 main：`c8aaff5f11986ebeeee17804dad4785bc3bdaea8`。
本轮以该包的 CURRENT_STATE.md 为接受状态，不把历史纸面稿的旧形式化标记当成最新状态。
未拉取、修改或推送仓库。本包不假设可访问其他会话工作区。

`sources/provenance.json` 记录本轮实际复制的基线文件原相对路径、字节数、SHA-256，以及上传压缩包的哈希。
这些副本只用于追溯，不是完整 Lean 工程；其中原有相对链接可能指向未收录文件。

## B1. 原题反射几何与完整高接触（已有）

固定原路径：
`research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/main/sum-structure-theorems.md`，§2。

使用：S/5<z_i<S/2、S>k²+1，以及对任意素数 ℓ，r=v_ℓ(S)>L+v_ℓ(4−(-1)^k) 时存在高位置，满足

v_ℓ(T_i) ≥ 2r−v_ℓ(4−(-1)^k)−L+v_ℓ(4)。

这是源包已经给出的全小素数、完整幂接口。新证明在 PROOF §1 写出复核，后续才是新两素数组装。
源包 CURRENT_STATE 表示相关实际消费者已接通；本轮没有重新运行其 Lean 验收。

## B2. 原题采样高度应用（已有纸面层）

固定原路径：
`research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/main/prime-synchronization-theorem.md`，§§1–5。

使用的准确结论：每个固定 0<δ<1/2 存在与原解无关的 K_δ，使 k≥K_δ 的原解满足

log m > (log(2k))^(3/2−δ)。

应用链：固定光滑双周期函数 W；在素数区间 [2k,4k] 上原题强迫采样和为零；几何给加权积分至少 k/(160 log(4k))；与来源 A 的 P/log²P 误差相冲突。
这里 P=2k、N=n、M=m、j=1、误差幂 A_source=2。函数 W 及其 C³ 范数不依赖原解。

已接受部分与未形式化部分分开：原题算术和积分几何消费者有既有 Lean 验收；外部采样定理及完整渐近高度结论仍是纸面依赖。
本轮调用的是已接受纸面结论，不把它改写成已 Lean 完成。

## M. Matveev：本轮新增外部依赖

实际逐式核对的载体：
Yann Bugeaud, Maurice Mignotte, Samir Siksek,
*Classical and modular approaches to exponential Diophantine equations I. Fibonacci and Lucas perfect powers*,
Annals of Mathematics 163 (2006), 969–1018；作者版 **Theorem 9.4**，PDF第16页，下一页有与 Matveev 的归约说明。

实际读取的作者 PDF：
`https://samirsiksek.github.io/siksek.github.io/papers/fibannalsfinal.pdf`

准确实例：实数域 Q，D=1；α=(p,q,u/v)，b=(β,−γ,1)；高度参数 (log p,log q,log(250k²B²))。
原题已证明 Λ≠0；无需假设这些对数线性无关。u=v 时删去第三项改用两对数版本。
所有条件与常数逐项写在 PROOF §5。

该作者版引用的原始结果：E. M. Matveev,
*An explicit lower bound for a homogeneous rational linear form in logarithms of algebraic numbers. II*,
Izvestiya: Mathematics 64 (2000), 1217–1269，Corollary 2.3。
本轮没有逐页审读 Matveev 原论文；实际依据是上述已完整核对陈述的 BMS Theorem 9.4，而非声称直接验证原论文全证明。

## A. MRSTT：已有依赖的原文核对

Kaisa Matomäki, Maksym Radziwiłł, Xuancheng Shao, Terence Tao, Joni Teräväinen,
*Singmaster’s conjecture in the interior of Pascal’s triangle*,
Quarterly Journal of Mathematics 73(3) (2022), 1137–1177，DOI 10.1093/qmath/haac006。

实际核对出版版 **Proposition 1.13(ii)**；预印本编号是 **Proposition 1.12(ii)**。

出版页面：
`https://academic.oup.com/qjmath/article/73/3/1137/6563541`

预印本：
`https://arxiv.org/pdf/2106.03335`

陈述的核心范围：固定 ε>0，N,M 的绝对值不超过 exp((log P)^(3/2−ε)) 的固定倍数；I⊂[P,2P]；光滑 Z² 周期函数 W。
素数采样和与 dt/log t 积分之差为 O_{ε,A_source}(||W||_{C³} P/(log P)^A_source)。
本轮不扩大此高度范围，不把两相位说成独立随机均匀，也没有引用黎曼猜想。

**有效性辨别**：Remark 1.7 明确说明论文主要定量阈值有效，但这不是 B686 应用所需的一个现成数值 K_δ。
第4节采样证明使用有效的指数和估计、Vaughan 分解和通常的素数定理误差。
本轮没有重新抽取全部隐含常数及固定 W 的范数数值。因此交付标签是“纸面有限性成立、采样阈值未展开”，不是“本轮已经给出可运行全族搜索终点”。
若将来要把一般参数界作为算法运行，还需参数 A,η 可计算，并完成此常数抽取。

## S. 固定长度经典有限性：仅作逻辑桥

P. Erdős, E. G. Straus,
*On Products of Consecutive Integers* (1977)，第63页、引言。

原文：
`https://users.renyi.hu/~p_erdos/1977-18.pdf`

实际核对内容：给定 k≥3 和固定 t>1，方程 tA(n,k)=A(m,k) 的整数解有限，归因于 Thue–Siegel。
本题 A(n,k)=P_k(n)、t=4；n=0 的边界由严格单调性另外覆盖；k=2 在 PROOF §11 直接排除。

这说明统一 k 上界足以推出 E 有限；没有提供该统一上界，也不提供奇数固定长度的数值高度。
该经典事实不承担定理2的证明步骤，不作为本轮新颖性成果。

## 依赖有向图

B1 + M → 本轮定理1（具体有效高度界）

本轮定理1 + B2（B2 使用 A）→ 本轮定理2（明确子族总体有限）

S + k=2直接排除 + 尚未证明的统一k上界 → 整个E有限（条件出口，不是本轮已成结论）

不存在以计算样本代替 B1、M、A 的箭头；不存在“PASS日志 → 新数学全称定理”的箭头。
