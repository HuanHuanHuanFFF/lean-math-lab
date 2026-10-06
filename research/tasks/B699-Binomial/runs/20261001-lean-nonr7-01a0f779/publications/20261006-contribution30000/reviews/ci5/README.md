# CI5首次数学源码编译与checker路径故障

实际run [37479887681](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/runs/37479887681)，源提交 `e905cedd00e9ffdfb86846dc4aa74bcf9900d6e9`。13个选择的普通文件按原字节保存；大小/SHA及原接收路径见 `RETAINED-EVIDENCE.json`。原件没有重排或修改，未复制整个CI、ZIP或二进制运行时。

全部可信缓存、fixed workspace及官方CLI加载阶段通过。`raw-SmallIndices.log` 表明source451fea…实际exit0；对象绑定记录f87b7d7…与commit/module/source，`kernelReplayPending=true`。source自印的两次AX仅为producer输出，不作为独立AX验收。原binary对象留仓库外的接收目录，用哈希定位。

244B的 `kernel-raw-SmallIndices.log` 明确是无法执行外部 `lean` 子进程，exit255。最终checker脚本中有absolute leanchecker、LEAN_PATH/HOME/NO_COLOR，缺工具链bin的PATH。因此需要为适配器增加固定toolchain/bin以及容器系统目录PATH，保原readonly/netnone/cgroup guard与对象绑定；不能从该错误得出数学或AX失败。

**原源码编译1份，独立接受0份。** 独立literal、拒绝式Std3和正常标准kernel重放仍未完成，其他六源也尚未编译。CLI加载成功和源规则0硬错误/6人工提示不是完整贡献签名、奖励或受理检查；完整S目标保持。
