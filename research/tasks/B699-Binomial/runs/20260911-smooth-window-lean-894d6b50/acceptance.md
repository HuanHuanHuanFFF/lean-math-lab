# 接受记录

## 已验前置

固定源码提交4e48728c643cb70affc1bec99771c91e862b1f06的 lean/Transfer.lean，SHA256 3027dcd685fe1f4ecbe8e986d57f5590d12deb07edac847d86d7aea55863d185，CI run 34571883258 / job 103175567553，编译退出0、传递公理审计退出0。四个声明均只依赖propext、Classical.choice、Quot.sound。原始命令及日志见verification/stage2。

声明：choose_mul_choose、prime_dvd_choose_transfer、same_prime_transfer、strict_transfer_counterexample。后两者保持同一个素数，以及p=i时转移失败的精确反例。

同一CI的Congruence文件失败，尚未整文件接受；不能将工作流step的continue-on-error状态作为接受。初次失败原日志见verification/bootstrap。

固定源码e6b711cfdec63af272c57bff732bd6e7cfd2bc72的QuarticAlgebra.lean，SHA256 da831d921a4fe06615c6a24bd865f43a5919ec5ed340f8e48fb8bbc411ebac15，CI run 34572889986 / job 103178684259，编译退出0，约4.86秒，9条声明传递公理审计退出0且仅std3。见verification/stage3。该模块已证齐次整除性、三条缩放恒等式、Q正性、I正性与W负性；实际二项式系数桥仍待接。

同余模块9条已完成本机编译与传递审计，sha256 4698e5a0a06a3d4c89f323097edd01a91e0d6f322348af59a97df485c6bce550，证据research/tasks/B699-Binomial/runs/20260911-smooth-window-lean-894d6b50/verification/20260911T072158057766Z。包含P_m排除小素数、同一个p的统一转移、60周期和m!周期。窗口存在性仍需单独证明。

## 已验完整子族

ExplicitFamilies.lean已完整验收，SHA256 19b103001a365c106cf8b91a86a45fecd225ee6828b3b79597faa6839fba8914。见verification/latest-ExplicitFamilies.json及其原始commands、编译、公理和声明日志。

1. 任意a≥2且2^a≡4 mod9，全部5≤j≤2^a/2存在p≥5同时整除C(2^a,4)、C(2^a,j)。
2. n=2^(60k+2)、k≥1，全部合法j存在同一素数p≥17，整除C(n,j)及所有合法4≤i≤14、i<j的C(n,i)。
3. n=2^(m!k+2)、m≥5、k≥1，全部合法j存在同一素数p>m，整除C(n,j)及所有合法4≤i≤m、i<j的C(n,i)。

六条公开声明均仅std3，无未证窗口或估值假设。采用更轻的初等模9 + I路线，不依赖无限尾部或467行证书。全域R9仍不变。

## 未完成义务

同余文件修正与验收；实际二项式系数与I/J/W及必要界；完整2/3部分和轴估值；无限尾部；467行完备性与58行CRT；最终窗口和两条显式行族统一消费者。

原ZIP匹配，verify_manifest和reproduce真实退出0，仅计纸面+精确计算。

实际系数ActualCoefficients共11条、QuarticScaling共3条已本机编译退出0并完成std3传递审计，详见verification/latest-*.json。窗口必要界仍在继续。

TailArithmetic 3条、SmallPart 9条、NecessaryBounds 4条均实际编译和std3通过。完整U=2^v2 3^v3已定义，并证明noCommon下U>n/4。通用W必要界、一般轴估值和有限证书仍在推进。

NecessaryW.lean的4条声明已真实编译并完成std3审计，源SHA256 07284aacbd0f30730660b647b5b059c16bd6fc65ac335fc55c20581e530a1034，见verification/latest-NecessaryW.json。I/J/W的实际系数、非退化性和I/W必要界现已全部接通。上文早期未完成列表由各后续接受条目覆盖。

FiniteChecker已通过Lean编译与std3审计：大小证书声音性、任意无2/3因子的互素桥、Kummer单carry与完整p^e模约束。467行具体证书尚在接入，不因检查器已验而宣称有限覆盖已验。

WindowPrimary的6条声明已通过真实Lean编译和std3审计：24倍二项式的自然数乘积、素因子指数和、最高2幂的精确位置、3幂上界及4U≤AB。证明仅分n mod4、n mod9，不遗漏四偏移或双3倍数。轴估值和阈值仍未完成。

FiniteCRT全部58条完整行定理已验（源SHA256 d85a362d9183e9767e4785ac547b38b30d1f1657ef2ad71a88b2974a8e5dd4df），每行所有合法j，传递公理仅std3。86个原始p^e约束，n=27采用5²。余数分类至多4项/步，不枚举j。409条I/W行与生成完备性尚待验收，不能声称467整体已完成。

B699: accept finite bound block 00, 48 complete rows, std3 audited

B699: prove uniform full-prime-power bounds on both axis neighbours via LTE

B699: accept full two-axis collision subfamily; noCommon forces min(a,b) at most one

B699: accept finite bound block 01, 48 further complete rows, std3 audited

B699: accept all seven neighbour cases and scaling bridges, std3 audited

B699: accept all four unbounded axis branches and all four window offsets

B699: kernel-prove monotone exponential thresholds a<40 and b<24 from W

B699: accept complete unbounded reduction to a<40, b<24, min(a,b)<=1

B699: accept finite bound block 02, all row consumers std3 audited

B699: accept finite bound block 03, all row consumers std3 audited

B699: accept finite bound block 04, all row consumers std3 audited
