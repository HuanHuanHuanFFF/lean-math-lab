# Windows resource 诊断

原始文件：code/check_content_bounds.py。

完整使用点（原始字节）：
- 第 10 行：import math,json,time,sys,hashlib,resource。
- 第 99 行：peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss。
- 其余素数、有限块、尾界和有理数计算不读取 resource。

采用改动：
- check_content_bounds.py 改为导入 resource_compat.peak_rss_kib，并把原元数据表达式替换为函数调用。
- resource_compat.py 在 POSIX 保持 getrusage 语义；Windows 通过 PSAPI 获取 PeakWorkingSetSize，除以 1024 转成 KiB；API 不可用时返回 None。
- 该 shim 的返回值只写入 content_independent_check.json 的 peak_rss_kib 字段，未进入任何数学分支、比较、精度常数或接受条件。

检查：
- resource_compat.log：PASS_RESOURCE_METADATA_SHIM，Windows 返回整数 13576。
- tail_windows.log：content_bounds.py tail 退出码 0，解决第二审报告中的 ModuleNotFoundError: No module named resource。
- patched_verify_tail.log：三行 279 项尾界检查 PASS。

注意：完整 main 仍会运行 75,000,000 素数筛和有限证书检查。本采用任务没有调用该入口；这里只验证 tail 入口和资源统计兼容性。
