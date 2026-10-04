# 复现命令

工作目录：$env:USERPROFILE\.codex\worktrees\b699-intake-1003\Math

编译固定接收器（GCC 13.1.0）：

    g++ -O2 -std=c++17 research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/48/487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196.cpp -o D:/Temp/b699-r7-146a9702/review-a-x-degree/check_trace.exe

接收本轮完整输入和轨迹：

    D:/Temp/b699-r7-146a9702/review-a-x-degree/check_trace.exe research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/experiments/a/source-x-degree/full-source-e106-d305.input.txt research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/experiments/a/source-x-degree/full-source-e106-d305.trace.tsv

编译退出码 0；接收退出码 0。标准输出保存在 receiver-result.json，编译日志 compiler.log 与接收器标准错误 receiver-run.log 均为 0 bytes。接收器二进制和原始回执留在 D:/Temp/b699-r7-146a9702/review-a-x-degree/。

历史来源状态：接收器 C++ 文件已在当前 worktree 中存在、受 Git 跟踪且 SHA256 与固定值一致；无缺失对象，未恢复文件。
