# 原字节与格式检查

本轮接受源、失败源码snapshot、实际stdout/stderr/receipt均按原字节保存。默认git diff --check会把Windows CRLF判作行末空白；启用进程局部cr-at-eol后，剩余差异是已验数学源末尾空行和原失败诊断里的缩进空白。它们是明确保留的证据/源字节，不为通过样式检查改动已绑定hash或覆盖失败日志。

Leader自己的可编辑README、frontier、REPORT、派发与导航文档单独做格式检查；原字节例外不构成数学接受升级或源码重新验证。完整检查输出在ignored `.tools/b699-lean-20261001-01a0f779/staged-diff-check.log`，没有把巨量原日志反复输出到对话。
