# i11 实际有界余因子桥

Owner `/root/i18_downstream_review`。开始 2026-09-11 16:28:22 UTC；20 分钟检查点 16:48:22 UTC。唯一写入本 run 的 `experiments/huan-i11-bounded-cofactors-5e2d13bb/`。四个源均为**未编译候选**；未运行 Lean、Git 或全 CRT，也未改已验或冻结源。

预期作用：为将来的 `n<2^109` 之后逐步 CRT 下降，提供可重复使用的实际有界余因子输入。当前仅准备这个一般桥；没有证明任何具体 H/M 常数证书、CRT 排除、2^109 初始界或 B699 原题新增结果。B 原题仍 0/19。

## 精确声明

对所有 n,j,H,M:Nat，假设

- 1<=M，110<=n，M<n，n<H；
- 11<j，j<=n/2，且实际 `not Common n 11 j`；
- `(2*11!)^11*H^7 <= i11K*M^33`，其中 i11K 是已验源中的实际整数常数。

`ActualBridge.actual_i11_bounded_cofactor_bridge` 输出两个不同素数 p,q 属于 {2,3,5,7}，其指数分别**等于实际** `(n.choose 11).factorization p/q`，两个指数均正；存在 a,b<11、1<=A<=M、1<=C<=M，使

`n-a=p^h*A`, `n-b=q^k*C`, `Nat.dist (n-a) (n-b)<=10`。

a、b 可以相同；没有假设余因子与对应素数互素。输出来自实际 `primeComponent` 和 `PrimeWindow`，不把 U 分解、素数大小或小余因子当输入。

## 证明连接与严格端点

设 U=`smallPrimePart n 11`，K=`i11K`，T=(2*11!)^11。首先调用已验 `i11_noCommon_small_part_lower_of_upper_certificate` 得 `n^4<=M^3*U`，从 n>0 得 U>0。

n<H 给 `T*n^7<T*H^7<=K*M^33`。原完整 hno 调用已验 `noCommon_bernoulli_size`，取得 `K*n^121<=T*U^11*n^84`。两端乘 n^7，再代入严格常数界，得到

`(K*n^84)*(n^4)^11 < (K*n^84)*(M^3*U)^11`。

自然数严格乘法取消和正 11 次幂反推给 **`n^4<M^3*U`**。这里没有把旧的非严格结论直接当严格结论；严格性来自 n<H。`StrictSmallPart.lean` 保留原完整 hno 及 n,j 量词。

在实际素数集合 S=(range 11).filter Prime 上取 `f(p)=M*primeComponent n p`，cap=M*n，threshold=n。已验集合大小为 4、实际乘积为 U，每个实际分量<=n，所以 `S.prod f=M^4*U`，并且

`cap*threshold^(card S-1)=M*n^4 < M^4*U=S.prod f`。

直接复用已验 `exists_two_gt_of_prod_gt` 得两个不同 p,q，使 n<M*Xp、n<M*Xq。该步只在乘严格不等式时用 M>=1。

实际窗口给 `A*Xp=n-a<=n<M*Xp`，因此**内部实际证明更强的 A<M**，C 同理；末端按请求输出 <=M。由 M<n，若实际指数为 0 就会有 Xp=1，进而 n<M，与 M<n 矛盾，故指数为正。窗口距离直接复用已验 `window_distance_le_ten`。

## 模块和接受来源

1. `StrictSmallPart.lean`：严格上界版实际 U 结论。
2. `Components.lean`：把已验通用乘积选择器应用到实际四个分量。
3. `WindowBounds.lean`：短 Nat 余因子与指数引理，再应用到实际 PrimeWindow。
4. `ActualBridge.lean`：完整 n,j,H,M 声明及具体素数、指数、窗口输出。

共有 6 个公开 #print 审计入口，预期只允许 std3；当前没有新的 Lean 输出。

本机 accepted 依据是 `verification/20260911T150344000788Z/evidence.json` 的完整 cubic 闭包，成功 exit 0，含已验 UpperHeight、Components/Window 和通用乘积/距离引理。本次只读重哈希该闭包所有 21 个 source records，当前字节全部匹配；没有因为文件标题仍写 UNCOMPILED 就误判实际收据状态。`source-ledger.json` 保存实际证据 SHA、逐源哈希、根审计及所用声明的行号/签名。定位 Window 使用父任务修正 record 布局后已经接受的当前字节。

原 `Common` 来自 `20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean:9-10`，定义明确为存在 prime p 且 i<=p 整除两个 choose 数的 gcd。因此 hno 保留**p>=11（含 p=11）**的完整原题量词。U 的素数集合严格 p<11，恰好 {2,3,5,7}。

## 有界检查

`bounded_check.py` 使用常量内存的有限枚举：

- 29,071 个四分量实例，8,072 个满足严格乘积条件，均选出至少两个大分量；
- 46,137 个短余因子实例，5,682 个满足前提，均有 A<M；
- 11,560 个指数实例，2,650 个满足前提，均为正指数；
- 实际 n=110..180、M=1..n-1 共 10,224 对中，3,765 对满足实际 `n^4<M^3*U`，均得到所需实际正指数、余因子和距离；其中 821 对允许选到相同位置。

耗时约 0.02385 秒。实际检查没有枚举原 noCommon，也没有把条件 U 检查当 hno→U 的证明。完整原题假设的使用保留在 Lean 候选中。抽象 n=H=M=U=K=T=1 说明仅非严格输入不足以直接推出严格乘积；这只是严格性步骤的边界例子，不是 B699 反例。

## 下降总消费者仍需处理

- 每一轮提供实际 H/M 整数证书；本模块不会假定具体数值通过。
- 小于 max(110,M+1) 的 n 不满足本桥域，应由下降总消费者保留并处理。
- n=H 不能直接代入本次严格桥；上层界必须确实是 n<H。
- 四个模块仍须主任务串行编译并执行公理审计；通过后也只是 CRT 输入桥，不是 CRT 计算或全量排除结果。
