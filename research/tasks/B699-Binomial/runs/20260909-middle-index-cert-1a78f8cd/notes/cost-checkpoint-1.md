# 首次实际高度内核检查

UTC11:40:42.781211开始，11:42:43.707584结束。[固定源码闭包与逐命令记录](../verification/20260909T114042Z/evidence.json)。

前10个实际依赖模块从源在新目录编译通过；第11个Height323在15.847秒后失败，Lean明确给出elaborator能reduce、kernel excessive memory。-j1/-M1536，Windows peak WorkingSet=1,623,961,600字节，sampled private peak=2,939,912,192字节，80次采样。约1.51GiB工作集；Lean-M不是整个Windows进程private memory上限。

错误恢复产生的sorryAx被实际公理审计拒绝；源码没有新增公理或占位，不纳入任何接受结果。Height999尚未运行。失败源原字节保存在[快照](../experiments/kernel-cost/direct-first/manifest.json)。

改变条件的下一步：分离完整smallPrimeCount计算与阶乘/大幂不等式，避免单体归约；并行准备纯整数二进制区间运算，所有向外取整必须证明声音性，最终仍进入同一原始高度比较。此前默认整表失败不重新尝试。

首个失败不是数学不等式不成立的证据，也未证明所有整数证书方法不可行。共享正素数链的末端具体块可独立先测；计算槽已交给该子任务，主线程暂不启动计算。
