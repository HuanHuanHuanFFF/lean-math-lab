# Unified A independent resume review

只读审查当前 generate_huan_all_a.py 和 input-manifest.json；没有修改入口、manifest、源、证据、runner，也没有运行 Lean/Git。

结论：151 个入口索引集合准确为 29 与 35..184；139 个 canonical row046..184 使用各自顶层 evidence；35/36/37 使用 canonical historical receipt 且 receipt_verified；38..45 使用 HuanRecoveredOriginals 成功 consumer evidence；29 明确 fallback_present_receipt_pending，不能因 fallback 通过。

复用参数为 143 个唯一顶层 evidence：139 个新行根、3 个历史根、1 个 HuanRecoveredOriginals 根，实际支持 150 个当前根收据原题；all_users_count=151 多出的 1 个只是 HuanRecoveredOriginals provenance 标签。命令行字符数 17,874，低于 Windows 32,767 限制。nested upstream reuse 仅保留 provenance，没有替代顶层 consumer evidence。wrapper 原题类型出现 151 次，wrapper 名称在 HuanAllA namespace 内唯一，未发现静态声明冲突；实际全局导入冲突仍需 Lean 编译检查。

当前隔离 worktree 中 HuanAllA.lean 可见，已独立核对其 SHA、151 个 wrapper、151 个显式原题类型、唯一 imports 和禁用词为空。详细字段、哈希和检查结果见 review.json/static-checks.json。


## Row029J2 / Row029S 窄支持

已有 memory-profile 记录了 Row029J2/Block008 在 M2560 下的整棵 Windows 进程树峰值：2396581888 bytes（2285.559 MiB），编译退出码 0、耗时 29.003 秒；整体尝试在 Block014 前因资源 gate 停止。没有同源 Block008 的 M2048 成功证据，因此不建议降低 memory-profile 中该模块的 2560 MiB override。

Row029S 的 Original.lean 当前存在，SHA256 772b1e944e17c6bb3de478280ddf3c79f61483564a0bf3aaf0e6fc599fe87e79；目录有 371 个 Lean 文件，静态递归导入闭包 395 个文件，无缺失本地 import，且没有发现 set_option 出现在其 import 之前。Original 含 common_i029，Checked.lean 和 LayersChecked.lean 存在。这些是源闭包事实，仍不等同于 Lean receipt。
