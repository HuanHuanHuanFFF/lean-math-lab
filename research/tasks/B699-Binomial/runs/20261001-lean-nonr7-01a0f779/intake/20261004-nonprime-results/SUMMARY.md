# 2026-10-04：4884–4888 非素性证书接收与效率问题

用户本次要求检查昨天 Lean 卡住是否改善，并提取整理两个新包。本次是材料接收及限定诊断，不恢复大尾/R7数学研究，不把附件内任务要求当作用户指令。原包继续留在仓库外下载目录。

## 已确认的改动与未确认的改善

昨日已供失败记录将瓶颈定位到四个完整消费者中八处 `by decide` 非素性实参，五个目标是 `¬Nat.Prime 4884` 至 `¬Nat.Prime 4888`；实际是 maximum recursion depth，不能称内存耗尽或数学反例。两包最终统一为 `Nat.not_prime_mul` + 显式 `Nat.succ_succ_ne_one`，使用 2×2442、5×977、2×2443、3×1629、2×2444；本登记引用作者候选，不自行验数学。

两包最终推荐证书原字节完全相同：835 bytes，SHA-256 `47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91`。A保留Defs-only备选，未证明其导入更快；A最终命名空间已经正确，B淘汰自身历史声明空间并统一为真实命名空间 `B699CompositeTransfer20261003`，新增完整模块import及八个绝对全限定实参，补丁针对原消费者SHA `31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747`，不能盲套任意当前分支。

**附件交付本身没有真实 Lean 编译、公理输出、正常 checker、成功耗时或峰值数据。** 证据等级是作者固定源码静态审读/集成草案；“移除可疑决策递归”不等于“已实测解决卡住”。本次另行具名小诊断见 [核验状态](VERIFICATION_STATUS.md)，与附件证据分开。

## 全题边界与下一项检查

五个非素性叶子不是四个完整B699消费者。沿用已发布并行验收快照：完整集 `{1,2,11,29}∪[35,4884]`；4885–4888尚未独立接受，R7={3,…,9}与真无限Gap供应缺口不动。源级统一补丁没有减少任一未知原题区域。通用合数转移已供执行成功报告，但独立绑定在旧轮截止后未接受，仍须分开处理。

先仅核验五条叶子源的固定工具链、准确类型、传递公理及normalchecker，记录时间/内存；再绑定已有generic证据，最后由拥有原Lean分支的执行者接回四个全n/j消费者并独立验收。不先冷恢复129个大依赖或重跑整条CI。剩余大指标低比例的i/n/j、uniform Gap的y仍无界；新证书不提供短区间素数或统一高度界。

## 目录与来源

本材料归属于已有Lean run `20261001-lean-nonr7-01a0f779`，不改原run身份或其他agent文件。本接收者/root只拥有本intake、入口导航及overview接收说明；证明/验收由具名任务交付。当前整理基线main `606f81e666dec18154ac433863f8a79a33372443`，分支 `huan/b699-intake-20261004-01a0e34b`。

- A最终总结：[00-summary/README.md](objects/e5/e5c6dcced3e1decd67fe6259aacf105ea824f4feb6b5db0d0b85dc3c2f2111f7.md)；[00-summary/STATUS-MATRIX.md](objects/5a/5a5cba7b671b3c977466f46793206ee8ef6ff2a08ea5b824446e5e1be22ad1f7.md)。
- 主证书：[05-final-recommended/NonprimeCertificates.lean](objects/47/47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91.lean)；[05-final-recommended/INTEGRATION.md](objects/00/006fab074554bb25c9ca11bb5bbc1e8b1d44775784d57fbadabde8e366d80191.md)；[05-final-recommended/UNIQUE-INTEGRATION.patch](objects/df/df53ec47cda9478b1ef16f01d9e75f04829c01b6179d3854300c6c81b867def8.patch)。
- B最终状态：[FINAL-STATE.md](objects/1f/1f6dab10b5a624b42b1188dce5ca2f71cba726d7caa571749205fd5cf13edc13.md)。

固定并行状态来源：[0315fa51 的下一轮优化记录](https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/0315fa513e889c528ec756b490d9e632190a4b56/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261003-gap-finite-fortymin/CI-OPTIMIZATION-NEXT.md)及[观察元数据](OBSERVED_PARALLEL_WORK.json)。这是固定版本的记录，不假定工作分支以后不变。

本次[具名材料审读](REVIEW.md)确认当前31ca消费者与原始补丁基线一致，在内存重建出的3932字节候选与B源SHA7295efa1一致；没有向现行Lean模块应用补丁。限定预检因为缺现成本地固定运行时和Prime.Basic.olean而BLOCKED，未启动Lean；两个原包和本次都没有新性能成功数据。即使五个小叶子后来通过，大消费者加载、依赖对象供给和独立绑定成本仍须分别测量，不能由短证书推断整条CI变快。
