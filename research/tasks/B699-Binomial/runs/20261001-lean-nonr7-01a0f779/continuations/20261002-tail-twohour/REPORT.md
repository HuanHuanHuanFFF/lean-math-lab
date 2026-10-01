# 尾部优先两小时：交接报告

本轮上海2026-10-02 01:18:06–03:18:06，无延期，沿用分支 huan/b699-lean-20261001-01a0f779。源输入8685508c；阶段1f4a9594a已经普通push，最终发布另记。执行者tail_verify/critical_verify，独立技术核验runtime_review，均6.1 Sol/xhigh。R7不在本轮范围。Leader只登记固定交付、来源和发布，不运行数学proof checks。

## 主要结果

**115条真实素数计数上界已独立接受。** 原115有序(b,T)与旧JSON逐项0差异。全域递归正确性证明把剪枝算法连接完整powerset有符号floor和，再以固定16素数筛、card16/max53和实际幸存者卡数界推出所有bt∈原115pairs的Nat.primeCounting(b)≤T，无外置计值/π/筛假设。ActualPiLegacy实际23.475秒/WS1090.17MiB，标准三公理；官方leanchecker实际正常重放28.312秒/867.60MiB、exit0。源616da4ed574f00c9d36a152e28fceefd7ab57012f2316a071d848023c465f2f6与对象bbeaf784ee55d40d6d3f68d5eb7e1da51089690cf91900a249fd77393ff5f4b6固定。包见tail/verification/20261001T1910-actual115-prime-counts；旧finiteSieveCertificates命题常量不因数学义务已解决而自动登记为单独编译。

**统一原题消费者已独立接受。** 全自然数n/i/j，1000≤i、i<j、j≤n/2、4096*i≤n，推出存在同一个实际Nat.Prime p≥i同除两choose，无A/EC/Gap/π/数值等额外数学假设，保留p=i及完整素数幂。191344240Z实际exit0/21.585秒/WS1698.02MiB；同根还给实际合法反例的严格高度n<4096*i（i≥1000及i≥4883）。runtime_review于19:17:22记录fresh固定原源、canonical完整类型、拒绝式公理审计及正常leanchecker全部实际接受；固定source SHA782bd7e38ed6dbe8607bb75191ab5e051cb3259e483bfbb12f3f886aa98fad3a。见runtime/final-RatioOriginal1000-validation.json和最终审读；这是原题区域接受，非完整指标接受。

## 数值方法与验证边界

最大原row为(130363,131071,17,17889)。整体归约触发512MiB守卫后，改为149节点/43叶DAG，kernel逐节点证明17874=17889−15，5.388秒/318.42MiB。全部115计值由54个实际数字根组成，末7改单row低载荷；生成器字面值只有经kernel证明后才采用。统一数值聚合及任意Nodup Nat列表、任意b的完整floor身份已独立接受，包括空list、b=0、p=0和除法/product边界。Core/首版/modern算法对应是结构归纳证明，不靠源码相似。

实际用官方Lean4.33.1 leanchecker正常模块重放新根，并核对准确类型、原题边界和传递公理。它使用同Lean kernel，正常重放信任导入环境，不是第二独立内核；fresh全Init图曾因资源守卫停止，未报通过。拒绝式公理审计允许propext、Classical.choice、Quot.sound，额外unexpectedFixtureInput负例正确被拒绝。已接受源、对象、argv、退出码与原始日志逐字节绑定；失败/API错误/资源未启动或截停另存，不冒充数学反例或接受。

## 剩余缺口与实际收益

完整指标新增0，累计仍{1,2,11,29}∪[35,4882]。统一比例终端已最终接受，大比例区域从此前i≥131072推广至i≥1000；覆盖全部合法j，反例压至n<4096*i。它仍不足以证明所有i≥4883、所有合法n；未知低比例域2≤n/i<4096保留，i、n、j绝对值仍可无界。

小比例路线缺真正无限Gap：对每个自然y≥10^7，存在素数p>y且4095*(p−y)≤y。实际原题条件拼接已独立接受；任意D/Y的Nat/Real Gap等价、给定DusartStrictInput后的适配已由执行者编译及公理审计通过，若无截止前独立回执则保留独立pending。这些供应条件都未消除。出版Dusart2010 Prop6.8需要有效theta/Schoenfeld前置，所查固定Mathlib/PNT+没有对应无sorry闭合供应，未采用外来不完整证明。

旧finite n≤20M、i≥185入口的固定源和历史接受已定位，270源对象当前未全恢复，不称本轮重验。只用旧链末两素数19999909/20000093做成本试验，实际证明19999909≤n≤20M、i≥4883的Common；与旧已验域重叠。NormNum.Prime单缺叶隔离源构建恢复，未下载整库。完整稀疏有限链未生成；3个未编gap候选保留明确状态。gap已19:09:24冻结停止，原始248成员哈希复核一致。

本轮是既有纸面推演的形式化与连接，不主张原创数学或人审。下一可执行任务先恢复/缩减真实有限prime链并核验消费链，随后正式供应全y的Gap；临界非R7低指标23项及R7仍与本轮比例成果分开记录。

## 资源、停机与发布

重检查串行共享锁、Idle低优先级、≤2逻辑CPU；保D≥20GiB、运行物理余量900MiB。内存紧张时减载/等窗口，不关闭其他程序或越过余量。RAM预检拒绝时child未启动；资源截停不算数学失败。所有新source/objects/receipts独占，旧frozen源和日志原字节保留，依赖pins未变。硬截止19:18:06 UTC；截止后仅行政记录、字节保存及普通push，最终资源/自有进程状态以runtime停止回执为准。


停止回执已确认：19:18:43 UTC，127个本轮登记进程全部不在运行，未需终止、无PID复用，全局锁释放；D盘35.975GiB、物理可用3.378GiB。查看runtime/stop-receipt.json。

最终独立验收详见[审读](reviews/final-original-ratio.md)和runtime/final-manifest.json（48成员）。fresh原源21.727秒/1645.14MiB、独立canonical类型/公理22.069秒/1625.96MiB、正常checker35.655秒/1308.27MiB，均exit0并在19:17:22前完成。Gap Real/DS/sparse缺截止前独立审读，执行者kernel通过状态保留，不升级为独立接受。
