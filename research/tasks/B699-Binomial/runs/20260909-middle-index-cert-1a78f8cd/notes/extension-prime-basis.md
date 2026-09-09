# 20m扩展：完整小素数基底的有界成本检查

负责人：middle_prime_chain（Astra/Max）。独占本批lean/extension/PrimeBasis*.lean、lean/extension/basis/、experiments/extension-prime-basis/和本文件。首批677所有Lean源冻结，不改旧Core、SmallPrimeCount或任何已验源，不commit/push、派生或联系独立会话。

开始：2026-09-09 13:53:17 UTC；首次30分钟接口/成本检查点：14:23:17 UTC。无新总时长，不继承旧截止。主线程此刻处理677独立验收/发布和扩展高度，只允许本子任务先读源、写候选和轻量生成；未获计算槽前不开Lean或大实验。最新指派测试上限-M1280（单线程），不自动提内存。

目标是经济核验用户固定N=20,000,000原包链。原输入116667节点2→20000093，SHA a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414；采用主线程已按原字节提取的inputs/original20m/outputs/prime_chain_20m.txt，不重做整条外部素性检查。

## 精确接口与预期作用

BasisComplete B ps要求每个Prime q<B都在ps中；不要求ps所有成员Prime。basisPrimeCheck在p<B时使用旧trialPrimeCheck，在p≥B时检查2≤p、p<B*B，以及ps中每个q均不能整除p。

声音性：若合数有d≥2、d≤sqrt p、d∣p，从d取Prime q∣d，得到q≤d<B；完整基底包含q，与ps.all的余数非零冲突。取B=4473，B²=20007729超过末端20000093。每个大p最多607次mod；这是待内核核验的计算实现改进，不增加解析定理或原题数学扫描。

具体完整性计划：BasisCompleteOn ps lo hi覆盖半开候选整数区间，basisRangeCheck通过List.range'逐整数检查 !trialPrimeCheck q || ps.contains q。声音性直接导入本批已验B699Middle.trialPrimeCheck_complete（SmallPrimeCount.lean）。每64整数一份Bool真值证书，区间trans平衡拼接到0..4473，最后to_complete。参数在具体证明调用处显式给出，避免对闭Prime实例作无意归约。

当前PrimeBasis、PrimeBasisCoverage、PrimeBasisChain均为未编译候选。预期实质变化是让20m链的实际末端16/32边及完整607基底形成可测Kernel入口；只有这一步实际通过，才评估116667节点整链。首批677接受状态不受扩展失败影响。

## 14:04:12 UTC：候选数据与完整输入边界

已轻量生成候选basis4473，共607项、最后4463。只在0..4472使用小筛生成候选；数学完整性仍由Lean逐整数证书承担，不把Python筛当成已验BasisComplete。70份≤64整数证书，按每7份一文件生成10个Coverage模块，平衡拼接到0..4473。所有数据文件显式Elab.async=false、decide +kernel；大数检查不调用默认Prime实例。

真实原包末端16节点为19997609→20000093（15边）；32节点为19994899→20000093（31边），分两份15/16边证书，共享19997441。32节点版本会实际检查33次节点素性（共享端点重复一次），Basis和旧TrialReference使用完全相同分段，便于公平成本对照。只解析固定SHA输入获得末端，未重新试除116667个链节点。

候选源和SHA清单：`experiments/extension-prime-basis/basis-generation.json`；18份生成源加3份通用源。完整基底根PrimeBasis4473.lean；末端原题根basis/End16BasisConsumer.lean与End32BasisConsumer.lean；比较根End16TrialReference与End32TrialReference仅准备，不主动与首个测试并发。

新增verify-basis.py只重定向冻结strict extend/verify/monitor的输出到本子任务experiments与D盘ignored `.tools/mid/extension-prime-basis/`，不改变源码政策、复用条件或公理检查。须等主线程授予唯一计算槽后才运行，届时-M1280，不自动增限；可复用首批677成功记录132846Z中的源/object/log及其实际项目闭包，旧acceptance文档较早段落可能滞后，以真实evidence为准。

## 30分钟检查点完成：14:08:05–14:12:16 UTC实际成功

严格验收根：[verification/20260909T140805Z/evidence.json](../experiments/extension-prime-basis/verification/20260909T140805Z/evidence.json)。28项目源闭包全部验证，19新编、9源码/对象/依赖/log一致复用；Lean4.33.1、固定manifest pins、-j1/-M1280、每模块180秒。未提高内存，没有超时或编译失败。输出在本子任务新目录；首批129份冻结Lean源SHA又全部核对不变。

已接受的新通用定理：basisPrimeCheck_sound、basisRangeCheck_sound、BasisCompleteOn.trans/to_complete、basisChainCheck_sound。具体basis4473_complete也通过：607项literal的长度已检查，70份≤64整数证书完整覆盖0..4472，证明每个Prime q<4473都属于列表。该证明不要求列表项本身皆Prime，extra entry不会破坏声音性；不依赖未经验证的候选筛结果。

同原20m输入末端的End16Basis、End32Basis与各自原题消费者全过。最新原题有限带为全部自然数n,i,j，185≤i、i<j、j≤n/2、19994899≤n≤20000000，存在Prime p≥i整除真实gcd(C(n,i),C(n,j))。仍不是116667节点整链、185..322全n结论或815项完成。首批677接受状态独立保持。

精确源码/object/log SHA、源码快照、actual axioms、对象族字节与进程采样见 `experiments/extension-prime-basis/checkpoint-result.json`。所有新声明的实际公理均在propext、Classical.choice、Quot.sound范围内，data长度检查可能为零公理。

| 根 | 秒 | 峰值工作集字节 | peak pagefile字节 | 本模块对象字节 |
|---|---:|---:|---:|---:|
| PrimeBasis（checker声音性） | 8.228 | 859815936 | 1972539392 | 90624 |
| PrimeBasis4473（完整基底汇总） | 14.087 | 1068834816 | 2374979584 | 16632 |
| End16Basis（16节点/15边） | 12.873 | 1219624960 | 2552856576 | 39464 |
| End32Basis（32节点/31边） | 16.062 | 1228484608 | 2575310848 | 66040 |
| End32BasisConsumer | 13.256 | 1072029696 | 2374627328 | 44248 |

19个新模块最大工作集1228484608字节；对象族合计1814128字节。PrimeBasis4473的16632字节只是汇总对象，不能冒充完整基底依赖总大小。Windows working set、sampled private和peak pagefile分别保留，不混写为物理内存。

比较用End16/32TrialReference仅准备，未运行。因此没有同20m节点的实测加速倍率；每个大p最多607次mod是检查器算法结构的界，不是内核实际执行次数的追踪结果。也没有基于两个末端样本直接估计整链能在给定时限内完成。

唯一计算槽已归还主线程。下一可测步骤由主线程决定：保持16边真值子证书和全局Elab.async=false，测试更大文件以评估进程启动成本与-M1280峰值，然后才决定完整20m链工作；不加sorted-prefix、Lucas或新素数基底路线，不自动运行116667整链。

## 14:19:39 UTC：末端512边候选准备，未编译

按主线程指派只生成End512Basis与End512BasisConsumer，继续复用已验basis4473_complete，不增加checker或算法。实际原输入末端513节点/512边为19912523→20000093，对应原序列下标116154..116666。32份各16边kernel真值，平衡trans，共544次含共享端点的节点检查，全局Elab.async=false。

源与原数据SHA清单 `experiments/extension-prime-basis/end512-generation.json`；独立从源码重建全部513节点与原输入逐项一致、共享端点验证、旧677和已验basis源SHA复查见 `end512-static-audit.json`。输入仍原SHA a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414，没有外部素性重验。

候选原题消费者为B699MiddleExtension.common_of_last512_basis_edges，适用19912523≤n≤20000000、i≥185、全部合法j。尚未Lean通过，不能把此候选范围写成新增接受带。计算槽当前由主线程高度块流水线使用；后续收到槽后-M1280、每模块300秒测量，不执行--all或116667整链。

## 14:23:38 UTC实际512边检查成功

严格证据为 `experiments/extension-prime-basis/verification/20260909T142338Z/evidence.json`：26项目源闭包，24源/object/依赖/log一致复用、2新编，-j1/-M1280、每新模块300秒。End512Basis及其原题消费者均exit0；真实axioms只含propext、Classical.choice、Quot.sound。完整对象族、内存采样、命令、源snapshot、source/object/log SHA复查见 `end512-result.json`。

- End512Basis：66.398秒，峰值工作集1244012544字节、peak pagefile2575695872字节；对象719736字节。
- End512BasisConsumer：12.434秒，工作集1072152576字节、peak pagefile2376310784字节；对象44248字节。

新接受有限带为19912523≤n≤20000000、i≥185、全部合法j的实际原题结论，仍不是完整20m链或新增185..322全n定理。只测这份原链真实末端样本，不运行--all、不改变N、不修改旧677或已验basis源。唯一计算槽已归还主线程。

原输入116666条边若按512边/叶则需228叶。按每叶均等于本次末端66.398秒的简单排期，叶编译合计15138.744秒（约4.21小时），另加分层汇总和最终消费者；这不是上界保证，也未把32节点的导入开销线性外推。每叶对象若按末端719736字节粗估，总约164MB，只是序列化估计，最终全部导入/公理遍历的-M1280峰值仍须实测。是否成本可接受及是否生成完整链由主线程决定。

静态审计计数元数据曾因PowerShell自动变量Matches覆盖而显示1；实际重建循环此前已经遍历32段、513节点。错误摘要按原字节保存在end512-static-audit-first.json，独立重新计数修正后的end512-static-audit.json记录32并附原因；这一修正从未改变Lean源、原数据或任何编译证据。
