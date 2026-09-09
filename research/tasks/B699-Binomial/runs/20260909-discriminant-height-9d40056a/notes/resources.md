# 资源与时间

实测时间 2026-09-09T05:59:14Z。可见 9 个逻辑 CPU，宿主标识 AMD EPYC 9V74；cgroup cpu.max=800000/100000，实际 CPU 配额 8 核。memory.max=21474836480，20 GiB；当时 memory.current=2808094720。free 显示约 20 GiB available；无实际 swap，虽 cgroup swap.max 为 max。磁盘 overlay 32G，已用约1.5G，剩29G。负载0.05/0.04/0.00。

ps 因本环境 procfs 自定位异常失败；读取 /proc 命令行的补充检查未见其他 Lean/Lake 计算，仅本轮 git clone 和查询。宿主标识不当作额外可用配额。模型额度未知。旧工具链和缓存尚待实际定位，不能沿用历史可用性结论。

本轮唯一重计算流水线，Lean --threads=1。模型并发独立管理。仅清理属于本轮、已停止且可重建的缓存。
