# 最后一次完整Middle323同源资源诊断

固定run `37544809565` / source `ba2b7f018e1aaf86b6d8357c4af9979062040ea7`。保留源/环境/命令/日志/停止容器状态/自有CID清理的普通原字节，逐文件大小与SHA见 [RETAINED-BYTES.json](RETAINED-BYTES.json)。没有复制ZIP或编译二进制。独立结论见 [PROFILE-11-LAST-RESOURCE-INDEPENDENT-DIAGNOSIS.json](../PROFILE-11-LAST-RESOURCE-INDEPENDENT-DIAGNOSIS.json)。

当前完整Middle323源a484、188400字节与生产者/实际Git完全相同，没有插入profiler或#check。source+CLI唯一1M heartbeat、180秒、j1，实际guard与Docker Memory/MemorySwap均14,227,079,168字节（13.25GiB）。70.6569秒退出137，真实停止State.OOMKilled=true，supervisorKilled=false，末次观察peak14,171,955,200字节不是最终峰值。采样oom/oom_kill均0，仅表明采样未覆盖最后OOM；停止State是本次实际OOM的决定性证据。

该次无对象/完整error，真实自有64hex CID清理已确认，23:10:43UTC结束早于23:30绝对期限。没有独立literal、normal kernel replay、Std3或原题接受。这个新run复现了同源在本次实际硬限下的物理OOM；旧R10三137仍缺停止State，不能统一追认为OOM，也不能推定最高16GiB平台一定失败。
