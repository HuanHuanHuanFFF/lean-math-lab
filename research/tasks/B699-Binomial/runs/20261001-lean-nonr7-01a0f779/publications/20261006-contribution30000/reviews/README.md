# 全范围新源码独立验收

核验者 `/root/b699_contribution_scope`，Sol/xhigh；本目录由该核验任务独占。当前 **SmallIndices 新源码独立接受，范围仅 `{1,2}`；其余六叶与完整S仍pending**。接受依据为CI6的固定源、独立literal、两次正常内核重放与Std3审计，见 [SMALL12-INDEPENDENT-ACCEPTED.json](SMALL12-INDEPENDENT-ACCEPTED.json)。旧数学签件不能自动接受其余压缩改写。

当前实际七镜像已采用 [FINAL-SEVEN-CANDIDATE-INPUTS.json](FINAL-SEVEN-CANDIDATE-INPUTS.json)：Small保持原已接受字节，其余为A151 structural33d845、Above moment全局916461、Below runtimeff460、Middle两factorial86bde/b1cba和High删除非消费者匿名example992c。七源总3,081,419字节，最大832,915字节，完整S29970不变。逐原数据/完整源码/字面接口绑定见 [FINAL-SEVEN-ADOPTION-BINDING.json](FINAL-SEVEN-ADOPTION-BINDING.json)，新 [AUDIT-CONTRACT.json](AUDIT-CONTRACT.json) SHA `d1d48fbdca6aff5d4ec96c8802e96717003ec5cc9d78f70a3d5aa77b2d924b37`。八个内部审计模块均已生成，但全七新源实际Lean、normalkernel、literal、拒绝式Std3及whole组合尚未完成。Small历史接受合同/原字节另存；后续源静态修复不能自动接受。



正式复验固定tuple见 [R8-FINAL-TUPLE-READY.json](R8-FINAL-TUPLE-READY.json)。proof job更早截止UTC23:30:25，round硬截止UTC23:40:25不延，预留600秒独立证据/交接。Host watchdog、每个cache/raw/literal/checker guest均取request实际更早epoch，不以roundMax延长执行。此签仅说明固定源和协议准备完成，不是actual proof验收。

CI7 run `37488807936` / source `ef2a9a163cb461a6502b798326458ea54dc17d82` 已实际收集全七叶。Small五项检查0，重复接受范围仍仅`{1,2}`，见 [SMALL12-CI7-REPLAY-ACCEPTED.json](SMALL12-CI7-REPLAY-ACCEPTED.json)。其余六叶raw均失败，没有对象和后续literal/kernel/owner Std3；FullCoverage跳过，见 [CI7-SIX-LEAVES-NOT-ACCEPTED.json](CI7-SIX-LEAVES-NOT-ACCEPTED.json)。原字节保留 [ci7/README.md](ci7/README.md)；全部实际适配脚本和10个自有容器清理状态均已独立绑定。完整S仍未接受。

当前继续入口为 [CURRENT-CHECKPOINT.json](CURRENT-CHECKPOINT.json)。实际诊断与原字节分别见 [numeric5](PROFILE-4-NUMERIC-INDEPENDENT-DIAGNOSIS.json) / [profile-4-numeric](profile-4-numeric/README.md)、[codec4](PROFILE-5-CODEC-INDEPENDENT-DIAGNOSIS.json) / [profile-5-codec](profile-5-codec/README.md)：numeric5全部源编译通过；codec4 Bool桥/Char1通过，primitive List.rec代码生成失败，Above1M前缀180秒超时，均无物理OOM，仍没有任何完整S新接受。下一批 [PROFILE6-COMBINED-SOURCE-READY.json](PROFILE6-COMBINED-SOURCE-READY.json) 固定four changed workloads：原basisproduct、原15edge plainBool、4472!+fuel carrier、支持codegen的structuralPacked354。它们仍仅诊断。

完整A151 structural候选与Below runtime候选的静态绑定分别在 [A151](repairs/20261007-a151-structural/BINDING-DRAFT.json)、[Below](repairs/20261007-below-runtime/BINDING-DRAFT.json)。A151全部151原Row数据height、37313goods和3919layers逐字段独立比对通过；Below完整源码在明确名称/hoist/四处proof前端变换后逐字节等于b67。两者都需要新的实际全源编译、literal/kernel/Std3，旧Math签件不代替该验收。

用户硬截止为UTC2026-10-06T23:40:25Z（上海07:40:25），不延长。新诊断入口的Host成对UTC/monotonic watchdog、guest实际启动再按绝对UTC夹限、缓存和数学容器受验证的自有CID清理已独立源审读，并重跑三套纯fixture，见 [PROFILING-HARD-DEADLINE-RUNNER-READY.json](PROFILING-HARD-DEADLINE-RUNNER-READY.json)。原签绑定旧profiling头；新增 [FORMAL-HARD-DEADLINE-RUNNER-READY.json](FORMAL-HARD-DEADLINE-RUNNER-READY.json) 已独立复核normal SIGTERM、3秒Docker RPC和trusted CID fallback，完整执行tuple仍须再绑定。实际最后一分钟截止/资源不能仅由源审推定。诊断可明确按source/manifest转发400k或1M heartbeat，最终10M/900s合同不变。

CI7的Below源还发现证明块内结构声明的位置缺陷，见 [I11BELOW-CI7-STATIC-PRECHECK.json](I11BELOW-CI7-STATIC-PRECHECK.json)。实现任务已另交 `implementation/repairs/20261007-i11-below-kind` 的分离修复：源SHA `29156e9c165f4970d62136d8a68083c2ad9c830d10bda27254ac757e6ee5ae7a`、root `Contribution.B699I11BelowFinalCandidate.Math.B699.N8.d15`。独立静态绑定和未来literal草稿保存在 [repairs/20261007-i11-below-kind/BINDING-DRAFT.json](repairs/20261007-i11-below-kind/BINDING-DRAFT.json)；结构已在顶层，31份数据列表初始化共445,412字节与旧源相同。该草稿未编译、未采用到当前合同，也未修改CI7输入；仍需未来固定来源复验。

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
