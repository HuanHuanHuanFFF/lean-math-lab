# C：固定三阶段执行计划

负责人 `/root/tail2h_runtime`，复杂既定执行工作，`gpt-6.1-sol/xhigh`。拥有本轮 runtime、lean 和受控 workflow；不 commit/push，不在本机启动 Lean。A 数学源和 S 独立接受分别由其具名任务负责。

原预算 UTC13:16:38 至15:16:38。proofStop14:46、lastJobStart13:55，不延长。本机 D 可用23542136832B，Lean/lake进程0；CIM拒绝，内存未知。实际 CI 在运行前记录 cgroup、CPU quota、可用内存和磁盘，串行 nice19、两个CPU、j1、asyncfalse。固定最大 child allowance 加15秒不足时不启动，不再次给正常checker仅0.868秒。阶段完整预测分别120/720/480秒并加60秒保存余量，依据上一轮64-prime compile/checker实测11.563/8.887秒；setup/cache/四origin恢复另占时间。

冻结源提交 `3a8b9ff6c5cb8db16112235ca6a0969e36affcbe`，CI37205771908，created13:29:01。固定spec SHA `aa520b7c7104f58f15d1ffeef58525eb112bba90f5eb40d15fa994eb56e5868c`。READY.json记录107 task源、9 runtime源实际presence/size/hash和driverAST。

先精确恢复四origin195已接受源对象、版本和全部成员，不重编旧链。10001重编旧producer仅2.541秒wrapper并补正常checker和准确原题literal；不增加第五origin的配置成本，此例外不冒充producer复用。13000编17新prime块及consumer/literal；15000再编后9块，前17块实际对象复用。每段独立package/upload，即使后段失败也保留前段完整证据。

原包和二进制留 D:/ResearchArtifacts/b699-tail-twohour-finish，普通成员与完整映射留本轮runtime/ci。预估新增ZIP0.35GiB、唯一binary0.7GiB，不删除旧原件。后段重复对象按 ZIP流式SHA + 已存对象实际SHA/size映射，保全部native成员。实际member manifest与实际D余量覆盖估值。

技术接受待S：固定原source、实际compile、传递AX严格白名单、同p原题literal、正常pinned leanchecker及完整旧闭包。正常checker仍是同Lean内核；不叫第二套内核。当前正式全集仍 `{1,2,11,29}∪[35,10000]`；直到每段具名签件落盘才能增加端点。无界Gap/更大i、低23、R7与全题不因CI/source-ready改变。

可选Gap前置另freeze和CI，不能在此固定spec追加。旧独立Gap相关wrapper不在四origin195闭包，若采用须实际编译/AX/checker或补准确对象origin。
