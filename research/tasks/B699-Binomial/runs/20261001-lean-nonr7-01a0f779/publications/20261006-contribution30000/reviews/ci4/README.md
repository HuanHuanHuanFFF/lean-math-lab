# CI4决定性原字节证据

实际run [37477294773](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/37477294773)，源提交 `526a06cbcc03b2578d61681ab449148502ffd6c4`。核验者 `/root/b699_contribution_scope` 选择并逐字节复制；大小、SHA和原接收路径见 `RETAINED-EVIDENCE.json`。原JSON和日志没有重排、换行或改写。仅选择12份约119KB的决定性普通文件，没有复制整个CI快照、压缩包或运行时二进制。

`CACHE-TOOL.json` 和 `cache-tool-serial.log` 证明固定11个缓存工具模块在真实2GiB容器、cpu1/pids256、managed1536/j1/asyncfalse下编译成功，并记录各源和对象SHA。`STAGES.json` 与196B的 `focused-cache-download.log` 锁定接下来的可信下载脚本仍以managed768运行，触发interpreter memory_exception并exit134。两个resource记录保存当时任务/祖先层观察；null表示没有值，不能当0。

BINARIES、PACKAGES、FIXED-SOURCE和INPUT-BINDING锁定实际Linux工具链/标准kernel程序、生产source/pins和七文件输入；SOURCE-POLICY是源规则0硬错误/6人工审读提示，不能替代完整平台受理。FAILURE保存终止点。

**数学接受增量0。** 七个候选尚未编译，未做独立literal/Std3/标准kernel接受。该失败属于可信缓存下载工具的管理内存阈值，记录没有证明物理OOM。下一窗口采用已审的仅download/plan管理阈值1536修正，保原69focused输入及全部原题范围。
