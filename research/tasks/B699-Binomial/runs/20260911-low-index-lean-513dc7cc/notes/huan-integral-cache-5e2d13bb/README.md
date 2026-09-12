# IntervalIntegral cache 窄恢复调查

日期：2026-09-11（Asia/Shanghai）。本调查只读检查了当前 D 盘 mathlib package、D 盘工具链、目标源码 import 闭包和官方 cache 实现；没有运行 Lean、没有安装或下载、没有修改 .lake/packages、没有写 Git/CI。

## 固定基线

实际工作树为 D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb；原包根为
D:/CodingProject/Math/.lake/packages/mathlib，本调查没有对其写入。

- 当前项目和 mathlib 包的 toolchain 都是 leanprover/lean4:v4.33.1。
- 当前项目 manifest 的 mathlib rev 是 0df444a360eaa60ab8c11dca51a86af692955474。
- 目标源码是 Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean，73,148 bytes。
- 目标直接 imports（去除注释和文档代码块后）为：
  Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap、
  Mathlib.MeasureTheory.Measure.Lebesgue.Basic、
  Mathlib.MeasureTheory.Topology、
  Mathlib.Algebra.Order.Interval.Set.Group。
- 递归闭包计算只解析 import/public import，并从源码中去掉 Lean 块注释和 -- 行注释，避免把文档示例误计入。

当前两个只读 build 根是：

- D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/lib/lean
- D:/CodingProject/Math/.lake/build/lib/lean

## 当前缺口和成本

早期去注释正则扫描得到的 Basic 下界为 2,459 个模块；它不是固定官方 parser 的最终闭包：

| 范围 | 模块数 | 已有 olean | 缺少 olean | 缺失源码体量 | 已有展开 artifact |
|---|---:|---:|---:|---:|---:|
| IntervalIntegral.Basic | 2,459 | 2,095 | 364 | 5,198,868 bytes | 591,422,744 bytes |
| 加 IntervalIntegral.FundThmCalculus | 2,488 | 2,116 | 372 | 5,412,724 bytes | 597,578,107 bytes |
| 再加 Analysis.Calculus.Deriv.Pow | 2,524 | 2,152 | 372 | 5,412,724 bytes | 617,220,785 bytes |

FundThmCalculus 相对 Basic 新增 29 个模块，其中 8 个实际缺失：

- Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
- Mathlib.Analysis.Calculus.FDeriv.Measurable
- Mathlib.MeasureTheory.Integral.Bochner.FundThmCalculus
- Mathlib.MeasureTheory.Integral.Bochner.VitaliCaratheodory
- Mathlib.MeasureTheory.Integral.DominatedConvergence
- Mathlib.Analysis.Calculus.TangentCone.Prod
- Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap
- Mathlib.Topology.Algebra.IsUniformGroup.Order

这些新增缺失源码合计 213,856 bytes。官方模块名对应的 Deriv.Pow 是
Mathlib.Analysis.Calculus.Deriv.Pow；它相对 Basic+FundThmCalculus 新增 36 个模块，全部已有，实际缺失数不增加。它是可选增量，不需要恢复 Gamma/Beta 或完整 Mathlib.Tactic。

当前本地 cache 目录 D:/CodingProject/Math/.tools/cache/mathlib 只有 curl.cfg
（457,914 bytes），没有任何 .ltar。因此已有 2,095 个 olean 是 build 目录中的展开对象，不等于 official cache 已有 2,095 个可复用 .ltar。官方 filterExists 按 MATHLIB_CACHE_DIR/<hash>.ltar 判断本地 cache 成员。

D 盘当前可用空间为 2,461,011,968 bytes。若硬性保留 1 GiB（1,073,741,824 bytes），本次恢复最多可新增约 1,387,270,144 bytes。已有官方 cache executable：

- D:/CodingProject/Math/.lake/packages/mathlib/.lake/build/bin/cache.exe
- size：109,969,408 bytes
- SHA-256：aad11f30a7b4f70cd692b2a1efd3db6b8c443c2ab4b50afb8e4f4922f2c27571

按当前已有模块的展开 artifact/source 比例，缺失闭包的展开对象粗略落在约 80–130 MiB；这是估计值，不是下载证据。实际 official .ltar 下载大小当前未知，必须在恢复阶段分阶段测量，不能把这个估计当作已恢复结果。

## 官方接口结论

官方接口源码和 README 已在当前 pinned package 中检查：

- Cache/README.md 的 quick start 明确支持 lake exe cache get Mathlib/Algebra/Group/Basic.lean 或模块名，并说明带参数时只下载目标文件及其传递 imports。
- get- 下载 linked .ltar 但不解压；get 下载并解压；unpack 解压本地已下载 linked 文件。
- MATHLIB_CACHE_DIR 控制 .ltar 目录；展开对象固定落入 package 的 .lake/build/lib/lean 和 .lake/build/ir。
- Cache/IO.lean 的 filterExists 检查的是本地 .ltar，不是已有 .olean；mkBuildPaths 还要求 trace、olean/hash、ilean/hash 及生成 C/hash 等 build artifact。
- cache context 通过 LEAN_SRC_PATH 找到 Mathlib.lean 和各依赖 source root，并按 source root 推导 package-local .lake build 路径。
- mathlib 官方 GitHub action 在远端 fetch 前会清理 .lake/build/lib/lean/Mathlib。该 action 不能指向当前原包根；本地窄恢复只能在独立 overlay 中使用 direct cache.exe/get-，不执行原包 action。

官方缓存服务器和容器接口源码显示 canonical repo 默认读 master, legacy 容器；本调查没有发出网络请求，因此没有确认远端当前 blob 是否保留，也没有测量 .ltar 真实大小。

## 建议的最小恢复方案（待主线程授权执行）

建立独立 D 盘 overlay，例如：

D:/CodingProject/Math/.tools/cache-recovery/mathlib-basic-0df444a3/

只复制 pinned mathlib 的源码和 package metadata，排除 .git、原 .lake 和全部历史 build；当前源码副本约 104 MiB。overlay 自己建立：

- .lake/packages 下指向现有依赖 source 的只读 junction 或明确 source search path；
- 独立 .lake/build/lib/lean、.lake/build/ir；
- 独立 MATHLIB_CACHE_DIR；
- 只读复制的 cache.exe，或使用现有 executable，但 cwd/search path 必须明确指向 overlay。

实际恢复分两阶段：

1. 在 overlay 中执行官方窄参数 cache.exe get-，参数只包含：
   Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic；
   需要 beta 积分路线时再把 Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
   和 Mathlib.Analysis.Calculus.Deriv.Pow 一起加入。get- 阶段不解压 build。
2. 立即统计 overlay .ltar 总字节、.part 临时字节、overlay source/build/cache 总量和 D 盘剩余空间。只有满足
   D_free - overlay_current - projected_unpack >= 1 GiB
   才执行官方 unpack；否则停止在可恢复的 .ltar 阶段，不触碰原包根。

由于当前独立 cache 目录没有 .ltar，官方工具可能为目标 2,459/2,488/2,524 模块下载 linked hashes；这仍是窄闭包，远小于整套 Mathlib（尤其不包含完整 Tactic/Gamma）。现有 build 中已存在的 2,095/2,116/2,152 个展开对象可作为后续独立 overlay 的对照或只读硬链接候选，但不能改变 official .ltar 的 filterExists 语义，也不能因此减少远端下载量的已证计数。

建议的硬门：

- 目标为 Basic：总新增空间预算先按 1.20 GiB 上限；
- Basic + FundThmCalculus + Deriv.Pow：先按 1.25 GiB 上限；
- 任一阶段使 D 盘剩余低于 1 GiB，立即停止并保留 overlay 目录与成本状态；
- 完成后逐模块记录 source SHA、.ltar SHA、展开 .olean/.ilean/.trace/.hash SHA，另核对 pinned manifest/toolchain；这仍只是缓存恢复证据，之后的 Lean import/数学验收另行进行。

本调查没有执行上述恢复、没有下载、没有运行 Lean，也没有修改原包或其他缓存。
## 源码补编准备和 2618/2524 差异

本轮官方 cache 失败记录为：

- command 使用 pinned cache.exe get-，roots 为 Basic、IntervalIntegral.FundThmCalculus、Analysis.Calculus.Deriv.Pow；
- official cache 输出 Attempting to download 2618 file(s)；
- 主线程在反复连接失败后主动终止 cache 进程；记录中的 downloaded_ltar_count=0、downloaded_ltar_bytes=0、exit_code=1 不能解读为自然退出或完整失败收尾；
- 日志明确出现 schannel: failed to receive handshake, SSL/TLS connection failed；说明只采用这段原始日志文字，不扩展为未记录的 TLS timeout 结论；
- 原 package root 没有写入，九个独立源码 checkout 均 clean，均没有 build directory；
- overlay 记录的 D 盘剩余为 2,257,637,376 bytes。保留 1 GiB 后，后续新增写入预算约 1.18 GiB。A 阶段本机编译完成前不启动源码补编。

静态源码扫描在去除注释和文档示例后得到 2,524 个可解析 source modules；它是下界，不是官方 cache 的完整闭包。官方 cache 使用 pinned Lean parser 的 Lean.parseImports'，通过 Cache.Hashing.getFileImports 处理实际 import syntax，包含 public/meta/prelude 修饰、跨行 import 和 parser 解析到的依赖根；同时 Cache context 通过 LEAN_SRC_PATH 解析 Mathlib.lean 与九个 package source root。静态逐行正则没有覆盖这些语法和 package search-path 边界，因此不能把 2524 或 372 缺失直接当成最终补编清单。2618 是官方 parser/cache 入口在当前固定三根上的实际尝试数，后续以同一 parser 输出的 DAG 为准。

## 后续源码补编 package root

所有后续写入必须落在新的 packageRoot，例如：

D:/CodingProject/Math/.tools/pi5e2d/build-root/

九个 source checkout 保持只读：

D:/CodingProject/Math/.tools/pi5e2d/mathlib
D:/CodingProject/Math/.tools/pi5e2d/batteries
D:/CodingProject/Math/.tools/pi5e2d/aesop
D:/CodingProject/Math/.tools/pi5e2d/Cli
D:/CodingProject/Math/.tools/pi5e2d/importGraph
D:/CodingProject/Math/.tools/pi5e2d/LeanSearchClient
D:/CodingProject/Math/.tools/pi5e2d/plausible
D:/CodingProject/Math/.tools/pi5e2d/proofwidgets
D:/CodingProject/Math/.tools/pi5e2d/Qq

root toolchain 固定为 leanprover/lean4:v4.33.1，依赖 source checkout 的 package-local lean-toolchain 文本为 v4.33.0 时，不把它们当作根 toolchain；所有编译命令必须从 build-root 继承 root v4.33.1，并记录实际 Lean --version。build-root 的 lake-manifest、toolchain、九个 source SHA 和 package revision 必须在开工前保存，编译后复核未改变。

build-root 需要独立的 .lake/packages search path，使用只读 source junction 或明确 LEAN_SRC_PATH 指向上述 checkout；不把原 D:/CodingProject/Math/.lake/packages 或并发 verifier 的 build 目录作为写入目标。已有原包对象只能通过显式只读 LEAN_PATH 读取，或在 build-root 内建立有 SHA 记录的普通复制；本方案不使用 hardlink。任何新 .olean、日志、诊断和临时文件都必须位于 build-root 或该 run 的专属新输出目录。

## DAG 和缺失模块顺序

实际执行时先用 pinned 官方 Cache import parser 生成 machine-readable DAG：

1. 对 Basic、IntervalIntegral.FundThmCalculus、Analysis.Calculus.Deriv.Pow 三个根调用 Cache.Hashing.getFileImports 等价入口；保留每条 source path、module name、public/meta/prelude 语义和原始 import 顺序。
2. 通过九个独立 source root 解析每个 module，建立 module -> direct imports 边；未解析边单独记为 package/toolchain dependency，不静默丢弃。
3. 用 build-root 的只读对象索引和原包 SHA 清单分类 present/missing；官方 parser 的 2618 节点数和每个节点的实际 source/output 状态写入 DAG manifest。
4. 对 missing nodes 做依赖优先的拓扑顺序：叶子与 package-independent 前置先行，随后按反向拓扑接回 Bochner/MeasureTheory 前置，再接 IntervalIntegral.Basic，最后才尝试 FundThmCalculus 和 Deriv.Pow。
5. 每个节点编译后立即记录 source SHA、import list、output SHA、实际命令、elapsed、峰值进程树 RSS、D 盘剩余；遇到 source/hash/toolchain/import mismatch 停止，不跨越缺失依赖。
6. Basic 根成功后单独检查 FundThmCalculus；Deriv.Pow 作为独立可选根。不要用 Gamma/Beta 或 Mathlib.Tactic 全集填补缺失闭包。

源码静态结果仅供预算参考：

- Basic：2,459 modules，2,095 existing，364 static missing；
- Basic + FundThmCalculus：2,488 modules，2,116 existing，372 static missing；
- 再加 Deriv.Pow：2,524 modules，2,152 existing，372 static missing。

这些数字不能替代后续官方 parser 的 2,618-node DAG。

## .olean 核验边界和 artifact 要求

.olean 是下游 import 核验的候选最小对象及其传递依赖，但不能预先断言它单独足够。实际最小集合必须在固定 Lean 4.33.1 下，以目标 import 和公理审计做一次新核验；不默认生成 C，不运行全量 lake build，不为 Gamma/Beta 或 Mathlib.Tactic 构建无关模块。

pinned official Cache 的 Cache.IO.mkBuildPaths 将 trace、olean、olean.hash、ilean、ilean.hash、生成 C 和 C.hash 列为 cache-required。olean.server、olean.private、相应 hash、IR 和 extra 是该接口的 optional 标记，含义是某些模块可以没有这些文件；这不允许把已经存在的 private/server/IR 无条件丢弃。若要声称 official cache artifact 完整，必须逐模块报告 required artifact 缺失并保留实际存在的 optional 文件；若只声称下游 Lean import 通过，也要明确这不等于完整 cache pack。

每个源码补编节点的输出清单必须包括：

- source path、source SHA-256、module name、imports；
- .olean path、size、SHA-256；
- 若存在则记录 .ilean、.trace、.olean.hash、.ilean.hash、.private、.server、C/C.hash/IR；
- compile exit、elapsed、实际 Lean version、memory limit、进程树峰值和 D 盘 free bytes；
- package root、manifest SHA、toolchain SHA 和 DAG manifest SHA。

资源硬门：

- D 盘任何时点至少保留 1 GiB；
- 新 packageRoot、对象、日志、临时文件和复制的只读对象合计达到 1.1 GiB 时停止后续节点；
- 单个失败不把缺失节点标为完成；
- 耗时未知，按实际节点、Lean 内存峰值和可用磁盘逐节点更新，不预估为已完成；
- 仅在 A 阶段结束并由主线程明确决定后才执行补编。

本节是后续可执行方案，不代表源码补编、Lean import 或数学验收已经发生。

## 独立 package-root overlay 核验候选

候选稿位于 notes/huan-integral-cache-5e2d13bb/overlay/verify_huan_overlay.py，没有修改正在使用的 verification/runner/verify_huan.py、固定 verify.py、verify_repo_relative.py、manifest 或源码记录。它默认只打印 plan；只有显式传入 --execute 才会进入未来的 Lean 路径。本轮没有执行该参数。

候选稿针对当前 API 的限制做了窄适配：

1. --package-root 是新的独立 package root，--fallback-package-root 是只读原 package root。两根必须存在、不同且不互相嵌套；候选稿不向任一 package root 写入、不调用 Lake/cache 下载，也不建立 hardlink。
2. 两根分别复用固定 check_packages，再对 manifest 的全部 9 个 package 计算 Git tracked source tree SHA-256，要求 package name、manifest rev、观察到的 HEAD、clean 状态、tracked file 数/字节数和 source tree SHA 一致。固定 verifier 本身只做 HEAD/clean，所以 source SHA 是候选稿新增的显式门禁。
3. 对每个项目 package import，仍调用固定 package_cache_records：在新根检查其中已有的对象，在 fallback 根检查其中已有的对象；随后用 union gate 要求至少一根有 .olean。选择顺序严格是新根优先、fallback 次之。证据记录所选 .olean 的相对路径、SHA、对应 pinned source module SHA、source tree SHA，以及存在的 required/optional companion artifact；新旧同一对象若共享 inode 则直接失败。
4. LEAN_PATH 顺序为新 run 对象目录、所有新根 package cache、所有 fallback package cache。复用旧 run evidence 时只从本 run 内读取并逐项核对 source/import/log/object SHA，然后以普通字节复制落入新对象目录；没有 os.link 或其他 hardlink 路径。
5. 项目闭包仍经过固定 source policy、固定 build_closure、固定串行 compile_source、公理审计和源码前后 SHA 检查。公共日志和 evidence 把两根路径分别标为 NEW_PACKAGE_ROOT/FALLBACK_PACKAGE_ROOT，原始诊断仍只在本 run 的 raw 目录。固定 Windows helper 可用时，候选稿按其实际 API 挂接进程树采样；不可用时只记录 sampler 不可用，不改变数学门禁。
6. 每个新编译节点先做磁盘快照，D 盘低于 1 GiB 立即失败；Lean 的 -M 仍是固定资源边界。.olean 是否足够、private/server/IR 是否需要，留给未来固定 Lean 4.33.1 的实际 import/公理审计，候选稿没有把计划写成验收结果。

执行前必须再次保存两根 9-pin/source SHA、manifest/toolchain、实际选中的 object/log SHA 和剩余空间；执行后必须逐模块核对 source/object/artifact 清单。当前状态仍是缓存下载被主动终止、源码补编未启动、Lean import 和数学验收均待主线程另行决定。

## v2 固定 parser DAG 和真实 build plan

主线程使用固定 Lean.Elab.ParseImportsFast 生成了依赖在前的 2,618-node DAG：

- DAG：D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/integral-import-dag.jsonl；
- build plan：D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/integral-build-plan.json；
- 9 个 package root 合计 primary .olean 可用 2,428 个，缺失 190 个；
- 缺失源字节 4,224,008；已有 primary 578,631,032 bytes；
- 已有 private/server/IR 等 companion 为 1,200,809,904 bytes。

此前 2,459/2,488/2,524 与 364/372 是未完整按 9 个 root 定位的静态下界，现由上述固定 DAG/plan 取代。2,618 个源的 raw SHA 全部不同，但 plan 已逐项记录 bytes.replace(CRLF, LF) 后相等；新 clone 的 LF 与原包的 CRLF 不能直接以 raw SHA 相等替代 source gate。

v2 独立候选位于 notes/huan-integral-cache-5e2d13bb/overlay-v2/verify_huan_overlay.py，v1 候选保持不变。v2 以 Cache.Hashing.hashFileContents 的 crlfToLf 规则同时保留两侧 raw SHA 和 normalized SHA；完整 tracked tree 只允许确切 CRLF/LF 差异，文档和 binary 的其他差异进入 raw audit 并使 gate 失败。每个实际选择的 object 都记录 NEW_PACKAGE_ROOT/FALLBACK_PACKAGE_ROOT source side、source raw/normalized SHA 和 object SHA。当前仍未执行补编或 Lean 验收。
