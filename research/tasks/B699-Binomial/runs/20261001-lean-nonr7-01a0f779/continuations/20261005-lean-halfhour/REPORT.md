# Oct5：30分钟 Lean 验证报告

用户授权30分钟；开始UTC2026-10-04 18:31:34（上海02:31:34），原截止19:01:34（上海03:01:34），不延期。原分支huan/b699-lean-next-20261002-01a0f779，固定起点70c05086ff70ed4ad2ab47745f76e8636b67618c。云端下一纸面轮据用户报告进行，本地不重复该研究。A/C/S为6.1-sol/xhigh具名任务，Root只协调与行政发布，不运行技术证明检查。

## 正式新结果

S于UTC18:43:56.044658独立签署 [有限高度原题区域](reviews/FINITE-HEIGHT-INDEPENDENT-ACCEPTED.json)，SHA0e5a421c663ce2f7771ea6ded5ec4653e018843215c381d34f425957fdf775f1：

- 全Nat n/i/j，4883≤i、i<j≤n/2、n−i<122568684时，存在同一实际Prime p≥i，整除n.choose i和n.choose j。
- 推论：相同合法域且n≤122568684成立。
- 完整额外数学输入=[]，保留p=i与完整双choose。固定源7f57671f5a42e7b6f5a143769231e7817c5491b3／CI37225133204／artifact11312185911。
- 345复用源对象+2fresh=347，4拒绝式Std3 AX、2正常kernel重放、两独立完整literal及109native（107ordinary+2binary）全部对应绑定。[完整绑定](reviews/FINITE-HEIGHT-INDEPENDENT-BINDING.json) SHA772c30d3e4a4e26bb383b8ec926df6420a78a1e69f0c5074ff53922c430b90de。

实际原题区域从旧i≥4883,n≤20M扩到n≤122568684，另覆盖n−i<T的对角区域。**完整指标上限增量0，仍{1,2,11,29}∪[35,30000]**；不能把有限高度扩展当作所有i的新全n证明。

## 实际成本与资源

首CI于18:41:05 completed success，setup/恢复18:38:04→18:40:39约155s。fresh编译累计4.966s、正常checker10.304s，实际proof18:40:39–56；合计约15.27s的编译/checker不等于整个CI耗时。已采用全345对象未重编，旧90prime块不重跑。实际峰约4.210GB。

重Lean只在GitHub CI，串行两CPU/nice19/-j1/asyncfalse，actual-M6144/startup6144MiB/tree5120MiB。Lean4.33.1与Mathlib0df444固定，原toolchain/pins不变。本机Lean0，C现场可用物理内存约1.24GiB，故只小缓冲I/O；D约14.58GiB高于10GiB保留线。最后资源/owned任务状态以C FINAL回执为准，不猜不可读quota或宣称全系统进程0。

## 第二单元：流程失败，没有数学执行

第二固定源40982733d42e16784acb8a2884b67701da26cb0e／CI37225855901。原v1已冻结8source、14生产根+14独立literal，实际新Lean执行0；LEAN action、cache/恢复和所有proof均skipped，不能接受这些候选。

原日志D:/ResearchArtifacts/b699-lean-halfhour/37225855901-job111505234001-original.log，22495B，SHAd878404d29cbc1748011265e5c86a911271e2b224053381338a939b06ae6ce03。C确认RuntimeError: Expired job-start gate，具体为：
1. job18:48:39开始、首启动检查18:48:41通过；
2. checkout27s，到18:49:08；
3. 预检再次使用同一18:49截止点，18:49:08.161857拒绝，尚未启动Lean。

第一版READY18:44:51，Root为了可选LP3合包等待，最终采取原v1但到18:48:34才发布，余量不足。执行排查又耗时过长；18:54:22才完成具体诊断，冷恢复实测约200s超过到proofStop18:57剩约158s，工程retry未能及时冻结/发布。**这是本轮流程与调度失误，不能归为数学错误、递归/OOM或纸面复杂度问题。** Root负责整体安排，不要求用户因这次红CI重写论文。

409/v1/source/READY及失败证据保留。工程修正版只做新候选/静态检查，未重新启动CI；不暗改原hard，不通过移动旧guard冒充原窗口成功。下轮应一次记录实际job admission、checkout后预检检查剩余预算，避免重复使用job-start时间门，并按实际代表成本选择阶段预测和保留child硬限。

## 新数学源码与实际接受分开

候选都在本轮supply，精确source-ready及S独立literal可追溯：
- LocalPowerCore：原paper局部条件消费者，LP/P显式输入。
- LocalPowerOriginalLegacy：复用实际已接受有限初段接原题，仍保LP/P。
- WeakUpperLegacy：1/12000上误差松弛实例，L仍未供应；使用既有log18，不重复证明标量。
- LocalPowerDecomposition：真实EΔ有限指数和/截断与整数区间计数四个前置，源码没有LP/P供应假设，但尚未实际编译。
- LocalPowerRootWidth：Bernoulli、ratio实k根及局部实根宽度三前置，source/literal ready18:47:16，未纳第二v1。
- LocalPowerThetaInterval：真实θ区间log权和、Prime集合到floor-Ioc、(b−a+1)logb界三候选，source-ready18:49:41，未运行。

本轮第二单元及这些新增LP前置**无kernel验收**。真正LP总界E(rx)−E(x)≤x/300000、真正无界P、有限ψ认证、显式公式/有限零点前缀/小倒数和仍需实际形式化/认证。纸面下一轮由外部继续，收到后需先核对应，不把候选/source-ready升级为真实供应。

## 下一最小检查与停止

先修复一次job admission与preflight的工程合同，在新授权窗口恢复同345对象，仅运行LocalPowerDecomposition+独立literal（2fresh/8AX），再接条件Core/原题/Uweak；已有成功finite-height两source与347绑定不重跑。LP3/θ权和逐个取得真实compiler/AX/normalchecker后，再连Master LP，缺数学/API须按实际错误分层。

本轮原截止19:01:34不延，最后阶段只封存与push，C关闭push触发、保过期手动守卫，原件/partial/cache不删除。ZIP和binary在D仓库外，普通成员与完整映射入Git。最终Source/Scope/HANDOFF见各具名目录与当前 [README](README.md)。

预期第一有限区域扩展已实现；预期第二LP验证未实现。当前已接受有限Gap[10M,122568684)、完整指标集保持；剩未覆盖低比例域含无界i/n/j、无界θ/G供应，R7/低23未动，原题未闭合，没有新颖性验收声明。
