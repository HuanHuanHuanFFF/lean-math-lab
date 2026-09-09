# 既有独立重放记录

这里保存本会话接收原包时已经实际执行的隔离重放，时间和执行范围以 [reproduction.json](replay/reproduction.json) 为准。此次入库只核对字节，不再次运行数学检查或 Lean。

原 ZIP 内的 `delivery/replay/` 和 `delivery/outputs/` 按原字节保留，可能包含更早或可选探索的输出。这里仅保存实际重放记录及其使用的日志；不得把原包中的全部输出都视为本会话已重放。路径中的工作区名称是历史执行位置。低指标重放记录的 `replay/` 日志相对此目录；其代码与固定证书仍在本批 `delivery/` 中。
