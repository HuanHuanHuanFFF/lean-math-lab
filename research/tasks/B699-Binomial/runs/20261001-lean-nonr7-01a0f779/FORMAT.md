# 原字节与格式检查

本轮接受源、失败源码snapshot、实际stdout/stderr/receipt均按原字节保存。默认git diff --check会把Windows CRLF判作行末空白；启用进程局部cr-at-eol后，剩余差异是已验数学源末尾空行和原失败诊断里的缩进空白。它们是明确保留的证据/源字节，不为通过样式检查改动已绑定hash或覆盖失败日志。

Leader自己的可编辑README、frontier、REPORT、派发与导航文档单独做格式检查；原字节例外不构成数学接受升级或源码重新验证。完整检查输出在ignored `.tools/b699-lean-20261001-01a0f779/staged-diff-check.log`，没有把巨量原日志反复输出到对话。
# 2026-10-02 一小时接续的字节保留

已接受新Consumers源及其raw快照有两处相同的EOF空行；阶段diff检查明确列出，未为消除排版提示修改已绑定的数学源。控制器快照与源码副本按原字节保存，精确映射在本轮 `tail/verification/20261001T161710323Z/exact-byte-retention.json`。CRLF以process-local `cr-at-eol` 识别，不更改全局Git设置。此排版例外不替代具名执行/独立技术验收；后续源变更仍需新验。
