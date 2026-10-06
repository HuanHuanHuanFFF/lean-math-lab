# 全范围新源码独立验收

核验者 `/root/b699_contribution_scope`，Sol/xhigh；本目录由该核验任务独占。当前为 **独立源预检通过、实际Lean验收pending**，不能采用旧数学签件接受七个压缩改写。

采用 `implementation/v2/FIRST-COMPILE-SNAPSHOT.json` 的四叶及 `implementation/range-tail/FROZEN-DELIVERY-STRUCTURAL.json` 的三叶，并与 `BUNDLE-SNAPSHOT.json` 的最终小写 `artifacts/*.lean` 逐字节比对。实际编译应采用这些最终文件的物理module名；七源当前SHA和尺寸全部匹配producer。唯一A151布尔spec修复已重绑定，见 `A151-REPAIR-BINDING.json`：其他六源、全部八audit源、literal型/根及A151显式151指标列表不变；仍未编译。合计2,781,370字节，单文件均小于1MiB。`AUDIT-CONTRACT.json` 绑定三个manifest、七源、八个审计模块的哈希和所需AX声明；旧producer名预检及A151修复前合同另保历史，尚无旧名或旧A151的已编对象。

`PREFLIGHT-RESULT.json` 记录原题字段和集合检查：小指标1/2，A151={29}∪[35,184]，i11在n<2^15360和2^15360≤n两边精确互补，另[185,322]、[323,999]、[1000,30000]，并集恰为{1,2,11,29}∪[35,30000]（29970）。所有n/j合法域保留；实际_root_.Nat.Prime、p≥i、完整_root_.Nat.choose双整除通过独立literal锁定。该句描述待编译的检查目标，不是已经通过Lean。

已直接读取固定平台 `FormalConjectures/ErdosProblems/699.lean`：`Erdos699.erdos_699` 右侧是Nat n/i/j、1≤i、i<j≤n/2及实际素数≥i整除两完整choose的gcd。本贡献对应该右侧在S的限制域，formalized mode；没有证明整个带answer的目标。source_type_hash `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217` 来自固定manifest，本轮没有重算该类型哈希。

`INDEPENDENT-SOURCE-POLICY.json` 使用实际固定be220ff、clean的官方C019/C020/C021重新检查全部七叶及容量、UTF8/LF/BOM；0硬错误、6人工审读提示。另静态扫描没有控制或双向字符。提示均为v2三大叶的Lean.Elab.Tactic.Omega导入和10,000,000 heartbeats。没有运行完整contrib check；元数据、签名、奖励、谱系和受理状态未接受。

## Linux执行接口

1. 对七源再次验SHA，将最终artifact原字节复制为独立 `Frozen/<lowercase-stem>.lean`，各自用固定官方环境编译到 `objects/Frozen/<lowercase-stem>.olean`；不能给原源添加兄弟导入或用旧项目对象填空。真实对应为small12、a151、i11_above、i11_below、middle185_322、middle323_999、high1000_30000，精确映射以当前contract为准。
2. 将 `literals/<stem>.lean` 复制为审计树 `Audit/<stem>.lean`，依次编成 `objects/Audit/<stem>.olean`。literal中所有Nat/Prime/choose明确指向_root_，Middle两叶先核gcd型再给双整除适配。仅审计目录可以导入固定Frozen对象。
3. `FullCoverageExact.lean` 映射 `Audit.FullCoverageExact`，在独立对象上验证i11_all和全S的all_S。它导入七个Audit模块，**只供内部验收，不能作为平台artifact上传**。
4. 每份独立审计日志使用 `audit-axioms.py --contract AUDIT-CONTRACT.json --group <id> --log <actual-audit.log> --output <result.json>`。每个指定声明必须恰好实际打印一次；未打印、重复、额外声明、sorryAx、Lean.ofReduceBool或其他非Std3公理，以及Lean错误标记均拒绝。raw候选自印AX没有作为该脚本输入。
5. 审计日志通过仅表示日志检查通过；还须审真实exit码、官方源码/包pins、Lean二进制、固定源/对象哈希、正常标准内核重放与OS真实硬资源限制。所有检查完成前 `proofAccepted=false`。

`prepare-independent-audits.py --repo <repo>` 只检查冻结源并生成literal和contract，不调用Lean。`audit-axioms.py` 的10个正/负fixture已按预期通过，含官方--json转义多行列表和JSON error severity；记录在仓库外的ignored `.tools/b699-contribution-review-20261006/axiom-fixture-tests.json`；fixture不是Lean结果。

本机可用物理内存不足1GiB，已知旧CodecProbe约6.36GB峰值且仅观察没有OS硬cap。这里没有运行native Lean、安装运行时、杀其他进程、触发CI或修改冻结候选。Linux runner须分别记录实际cgroup memory.max/memory.current和CPU配额；每文件timeout≤900秒、硬内存上限≤16GiB且Lean -M与实际cap一致，host较小则明确较小cap。资源或工具失败须保留准确分类，不提升为数学失败或验收成功。
