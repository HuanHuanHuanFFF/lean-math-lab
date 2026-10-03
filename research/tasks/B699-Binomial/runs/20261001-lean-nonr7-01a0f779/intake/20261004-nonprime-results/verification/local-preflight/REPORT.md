# Nonprime 4884–4888 固定源小叶子核验

状态：**BLOCKED / 未运行 Lean 诊断**。这是环境缺口，不是数学反例、源证明失败或方案失败。没有证据说明昨天卡住的 Lean 编译现在已改善或退化。

## 固定目标与输入

仅检查五个叶子声明 `not_prime_4884` 至 `not_prime_4888`，其目标分别是 `¬ Nat.Prime 4884` 至 `¬ Nat.Prime 4888`。源码使用 `Mathlib.Data.Nat.Prime.Basic` 及 `Nat.not_prime_mul`；目标确实是 mathlib 的 `Nat.Prime`。不覆盖 4885–4888 的完整 case，也不代表更大的 B699 目标。

来源为已提取包清单 `C:\Users\幻\.codex\worktrees\b699-intake-1003\Math\research\tasks\B699-Binomial\runs\20261001-lean-nonr7-01a0f779\intake\20261004-nonprime-results\MEMBERS.json`。A 包 `B699-nonprime-FINAL-20261004/01-main/NonprimeCertificates.lean` 与 B 包 `B699-Nonprime-4884-4888-MASTER-20261004/05-final-recommended/NonprimeCertificates.lean` 都映射到同一对象：835 字节，SHA-256 `47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91`。因此只需核验一个固定源；源文件未修改。

## 阻塞依据

仓库固定 Lean 为 `leanprover/lean4:v4.33.1`，mathlib manifest 固定到 `0df444a360eaa60ab8c11dca51a86af692955474`。本工作区 mathlib 源 checkout 的 HEAD 与该 SHA 相同，但当前找不到已安装的 4.33.1 toolchain：`.tools/elan/toolchains` 没有该版本的工具链文件，用户级 `.elan` 也没有 toolchains，PATH 中没有可直接调用的 `lean`、`lake` 或 `elan`。

编译此源所需的导入对象 `Mathlib/Data/Nat/Prime/Basic.olean` 在本工作区预期的两个 mathlib build 位置和给定 intake worktree 的对应位置都不存在；当前进程也没有 `LEAN_PATH` 等 Lean/Lake/Elan 搜索路径变量。`.tools/cache/mathlib` 中只见 `curl.cfg`。现有 mathlib 源码若要生成这些对象将启动构建，超出本任务允许范围；没有安装、下载、恢复依赖或开始构建。

本任务要求的每项诊断预算为最多 60 秒、最多 1 GiB；由于固定环境不满足运行前提，本次没有启动诊断，因此这两个限制没有实际施加，也没有子进程峰值可报。`scripts/lake.ps1` 会在其他 `.tools` 子目录创建运行目录，因此未执行。`n`n检查过的历史编译 receipt 仅作为路径/运行器线索，没有用于接受结论。B 包 stage1 receipt 记录的源码 SHA 是 `4e4f649567aa6e82ce3153058a4c6fb4d2172440aaaa443239205c00cac588ea`，与本次固定源不同。当前 `scripts/lake.ps1` 会在其他 `.tools` 子目录创建运行目录，因此未执行。

## 资源与仓库状态

2026-10-03 17:06:33Z（上海时间 2026-10-04 01:06:33）通过 `GlobalMemoryStatusEx` 读取到物理内存空闲 2.238 GiB / 总量 15.694 GiB，内存使用率 85%；D 盘空闲 26.36 GiB。进程数 16；当前 Windows Job 未报告 CPU 速率限制或 Job 内存上限。较早的进程快照未发现 Lean/Lake/Elan 进程。WMI 资源查询曾返回“拒绝访问”，所以使用 Windows 内存 API 重取空闲内存。

工作区分支为 `huan/b699-lean-next-20261002-01a0f779`，HEAD `0315fa513e889c528ec756b490d9e632190a4b56`。探测前工作区干净。本任务只在 `.tools/nonprime1004-probe/` 写入记录；未改动任何主源码、模块、依赖、CI 或原包文件。

## 验收结果与缺口

没有启动编译子进程，所以五个声明均未在本次核验中编译；没有新 `.olean`、实际传递公理列表或可靠峰值内存数据。源码文本中未见 `sorry`、`admit` 或显式 `axiom`，但这不替代内核编译、传递公理审计或 independent normalchecker。旧 `decide` 版本未复现。所有这些项目状态均为未运行/未验收。

要解除阻塞，需要在授权范围内提供或启用已经存在的 Lean 4.33.1 运行时，以及匹配该 mathlib SHA 的可用 `Prime.Basic` 编译对象和搜索路径；本次没有为其触发下载或构建。

