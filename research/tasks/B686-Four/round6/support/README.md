# Round 6 Lean 支持与验收交接

- 责任：固定 Windows Lean 4.33.1 环境、旧研究依赖预构建、A 的有限段代编译，以及本轮 accepted 根的递归验收；没有修改旧研究源码、共享入口、依赖或 CI，也没有提交、推送或安装。
- 固定命令入口：`C:/Python314/python.exe research/tasks/B686-Four/round6/support/verify_round6.py <entries...>`。Windows 子进程使用 `pwsh -NoProfile -Command` 调用 `scripts/lake.ps1`，并把仓库根加入 `LEAN_PATH`。
- 预构建：A/B 指定的 25 个旧研究模块按导入拓扑重建并联合导入，Lean 4.33.1，全部退出 0，耗时 553.45 秒。报告为 `prebuild-lean-verification.json`，日志在 `prebuild-verification/`。
- 本地 mathlib 对象：缺失模块仅从仓库锁定的本地源/cache执行 `lake build`，没有下载、更新或安装。日志为 `external-dependencies.log` 与 `external-factorization-defs.log`。
- A 有限段：`Finite0` 至 `Finite7` 及 `Finite` 九模块均由本支持线程编译退出 0；源码、olean、命令和日志哈希见 `a-finite-prebuild-manifest.json`。
- 最终 accepted 根：`round6/main/AllFiveSupport.lean` 与 `round6/b/AxiomAudit.lean`。`verify_round6.py --jobs 4 --per-file-seconds 900` 递归重建 49 个研究模块，并执行版本检查与双根联合导入，共 51 个步骤全部退出 0；8 个依赖层，247 条 guarded declaration，源码审计问题 0、禁用项 0，耗时 785.15 秒，于 2026-09-07T15:39:35.628138Z 完成。最终报告为 `final-lean-verification.json`，51 份日志在 `final-verification/`。生成的 `JointImport.lean` 明确标记为非 accepted。
- 验证器策略：所有递归源都拒绝 `sorry`、`admit`、`native_decide`、`sorryAx` 与项目 `axiom`/`constant`；两个 accepted 根必须含 `#guard_msgs in #print axioms`，依赖文件可以由集中 `AxiomAudit` 覆盖。预期公理只允许 `propext`、`Classical.choice`、`Quot.sound`。每个源在编译前后校验 SHA-256，每个成功对象和日志也记录 SHA-256。
- 已解决的环境失败：普通进程创建报 `helper_unknown_error`，按任务约束改用宿主升级执行；`pwsh -File` 把 Lean `-o` 误解析为公共参数，验证器改用逐参数单引号的 `pwsh -Command`；首次旧依赖缺本地 mathlib olean，随后只构建观察到的固定本地模块。
- 边界：这些结果强化 k=5 的必要条件与支持类排除，但 `full_bounty_proved` 仍为 `false`；原 B686 题没有在本轮解决。若 accepted 根或任何递归源变化，应重新运行最终命令，不能沿用本报告哈希。
