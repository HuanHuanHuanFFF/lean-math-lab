# Linux执行入口独立技术审读：修正待回验

核验者 `/root/b699_contribution_scope`，Sol/xhigh。完整阅读初版 `environment/linux-platform-replay.py`（初读观察19122B）、workflow及固定官方 `scripts/lean_sandbox.sh`；实际编译/容器执行尚未发生。本审读不接受新证明，也不触发CI。初读后环境任务继续修订，初版SHA没有在改写前单独固定；随后保存的 `.tools/b699-contribution-review-20261006/linux-platform-replay-reviewed-v1.py` 实为19917B过渡修订，SHA12ef62cfe4e761d2054cf012f4bccebc86d8716df546316274b7bd9c6c87a4cd，不作为本初版的原字节证据或最终runner-ready签件。最终签件须等环境任务交明确冻结SHA后再回验。

采用固定官方policy be220ff、tasks2a58149、production6a786、base7d1a和patch82b0。上游脚本的固定SHA为7709d1dc692a59b11da707187e1dae256862d1c10a2b9157dec36a724c9c1d34。方案会验证源树、包rev、toolchain官方release字节digest，并只恢复七叶focused Mathlib导入，不做全FormalConjectures构建。七raw候选分别编为Frozen小写物理module名，review独立literal和完整S合并消费者分别编为Audit；原源码不会由CI-only假设替代。

基本保护保持：官方Docker的no-network、read-only root、cap-drop ALL、no-new-privileges、pids-limit、memory/memory-swap相等、core0、非root用户、固定workspace/toolchain/source readonly挂载，timeout900秒及同memory_mb Lean内存参数。对象导出新增仅任务专有输出挂载，review imports只读；实际接受使用独立literal日志及拒绝式Std3、toolchain genuine leanchecker，同一标准Lean内核，不能说成第二独立内核。

以下三项是本初版发布前需修的执行/证据问题，已具名交环境任务；没有数学错误结论：

1. `resources:67-84` 只读 `/sys/fs/cgroup` 根层。应解析 `/proc/self/cgroup` 与mount信息，并读取本进程层及所有祖先的memory/CPU限制，结合各层usage计算实际可用预算；根层max不代表job没有较小限制。`:262-264` 的另一个Docker probe只cat，未拒绝非有限/不符请求的memory.max。实际proof及checker容器应由可信wrapper先观察并验证硬cap，然后exec标准二进制；不要用仅另一个probe的cat日志替代实际证明容器的硬限制事实。
2. `:272/:285` 成功对象只进入WORK；全部成功后才在末尾复制到EVIDENCE。若后叶失败，之前昂贵raw/audit对象会丢失。每个成功阶段立即保存对象、哈希、源/命令/日志绑定；失败时也应可下载已完成部分，不能只留hash而没有对象。
3. `:278-281` 在sandbox_adapter保存diff以后又修改checker的LEAN_PATH。应保存最终实际执行脚本、SHA与最终diff，绑定固定官方sandbox，而不是旧diff；STAGES也应记录实际adapter SHA。

AX审计脚本已经按官方--json日志修正：先解码MessageData的data/text/message字符串再读AX列表，拒绝JSON error severity；否则长列表的escaped newline可能误当公理名。10个正/负fixture按预期通过，包括JSON多行列表、缺失、重复、额外根、sorryAx/ofReduceBool及编译错误；fixture不算Lean结果。

状态：`runner-ready` 待上述修正和独立回验；七新源、八个独立审计模块与标准kernel重放全部pending。6项C019/C020提示须准确标人工审读，完整contrib CLI签名/奖励/谱系仍未check。没有修改环境任务runner或冻结候选。
