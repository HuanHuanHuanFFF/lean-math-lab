# B686 round9 uniform 独立验收

验收时间：2026-09-08 06:04（Asia/Shanghai）。验收范围只读覆盖 `uniform/freeze.json`、`uniform/verification.json`、冻结源闭包、旧只读源、记录日志与既有构建输出；新输出只写本目录。

结果：冻结证据一致，独立 Consumer 编译通过，范围结论为“通过但保留报告边界”。

- freeze 中 14 个当前/旧源文件：14/14 SHA 匹配，缺失 0，错配 0。
- `verification.source_closure` 的 11 个条目：11/11 SHA 匹配，缺失 0，错配 0；其中包含上述当前源和旧只读源的复用项。
- `freeze.verification_report_sha256`：与当前 `verification.json` 匹配。
- verification 中 13 条记录日志：13/13 日志 SHA 匹配；13 条 exit code 均为 0；所有记录输出 `.olean` 均存在且 SHA 匹配。
- 可复用脚本见 [audit_hashes.ps1](audit_hashes.ps1)：默认只审计冻结源、只读旧源、verification source closure 和报告 SHA，适合新机器；加 `-IncludeBuildOutputs` 才会审计本机冻结记录中的日志/`.olean`。二进制输出 SHA 属于本机重编译产物，跨机器不应默认要求相同。
- 已用当前冻结本机证据运行 `pwsh -NoProfile -File .../audit_hashes.ps1 -IncludeBuildOutputs`，exit 0；未重跑 Lean。
- 固定版本：Lean `v4.33.1`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；独立版本命令见 [lean-version.log](lean-version.log)。
- 独立编译：命令见 [Consumer.command.txt](Consumer.command.txt)，`LEAN_PATH` 首项为既有 `uniform/verification/build` 镜像；`Consumer.lean` exit 0，完整 stdout/stderr 见 [Consumer.log](Consumer.log)（本次为空）。`Consumer.olean` 仅为本机生成且被 Git 忽略，不作为远端文件链接。
- Consumer 的三个 `#guard_msgs (whitespace := lax) in #print axioms` 均在独立编译中通过，覆盖 `original_statement_sixty_four`、`original_statement`、`rational_ratio_statement`，允许传递公理精确为 `propext`、`Classical.choice`、`Quot.sound`。
- 原题对应关系已核对：三个 Consumer 定理均量化 `∀ k n m : ℕ`；前两个输入假设为 `2 ≤ k`、`n+k ≤ m` 和 Icc 乘积等式倍率 4，结论分别为 `k² < 64*(m−n)` 与 `k² < 250000*(m−n)`。第三个仍要求 `2 ≤ k`、`n+k ≤ m`，但输入是有理比率假设 `4 = B686Target.product k m / B686Target.product k n`，结论是有理数形式的 `k² < 250000*(m−n)`，通过 `B686Target.ratio_iff` 回到自然数桥。

保留缺口：`verify.py` 将 `accepted_roots` 写入报告字段，并不自行解析 axiom 输出；实际 guards 由闭包源文件中的 `#guard_msgs` 在 Lean 编译时执行。本次独立验收只重新编译 Consumer，因此不宣称重新编译全闭包。报告仍明确 `external_constant_18_locally_verified=false`、`original_B686_nonexistence_proved=false`，且未使用独立外部 kernel checker。
