# Codec 原生探针资源失败与修正

执行者 `/root/b699_contribution_range_tail`。原始源为 `codec-init-01-source.lean`（保留原字节），运行收据 `codec-init-01.json`，完整日志 `.tools/b699-contribution-range-tail-20261006/logs/codec-init-01.log` 为0字节。此次没有产生可接受对象、编译完成消息或公理审计。

完整收据 argv 实际含 `--memory=256`、`--threads=1`、`--timeout=400000`；不含短形式 `-M` 不能证明缺失了长参数。执行者最初把无输出和不符合预期的 RSS 当作可能其他会话的作业，随后通过 Windows process snapshot 确认完整父链 `pwsh37424 → pwsh29956 → python24060 → lean31176`，即本次 owned CodecProbe。Leader 的独立只读 CIM 也确认同一源码/PID。

确认归属后，执行者终止自身 PID31176，未终止任何其他会话或用户应用。收据保留实际 exit4294967295、elapsed196.79958270000134秒、采样进程树峰值6362652672字节、最低物理余量6172672字节、sourceUnchanged=true。源没有输出，因此**失败所处的 elaboration/termination/kernel reduction 层仍未确定**，不能把它说成原数学命题失败或已确认的 Lean 内核 bug。

监测工具 `environment/run-observed.py` 明确是采样记录器，没有RSS硬杀逻辑；本 wrapper 只传 Lean 内部参数，没有安装OS Job Object/cgroup内存限制。本次实际 RSS 证明不能把该命令参数当作系统硬内存保护。后续必须用实际系统限制或已验证的 owned-process guard；此执行者按 Leader 指示不再在本机启动 Lean 证明探针。

Leader要求优先降低 decoder 自动 termination/elaboration 风险。修正将原 `gaps(wide)(p)` 合并递归拆为 `gapsOne : Nat → List Char → List Nat` 与 `gapsWide : Nat → List Char → List Nat`，各自显式 `termination_by structural p cs => cs`；Bool mode只在非递归 D 包装层选择。其数据算法和第一次2到奇素数的差值保持。静态回读依旧精确重建原116667与10992节点，**新定义还没有 Lean 接受**。

新的独立 `CodecStructuralProbe.lean` 仅测试同一16-edge解码，不改变原失败源；供 Linux硬限下先检查声明/证明的位置与资源，再检查完整中段候选。Root允许这次针对真实探针反馈修改冻结叶；`FROZEN-DELIVERY-STRUCTURAL.json` 与 `SOURCE-POLICY-STRUCTURAL.json` 取代初版当前状态，初版Frozen/source-only报告保留历史含义。两个Middle叶变化；High叶SHA保持不变。所有修改都仍是候选。
