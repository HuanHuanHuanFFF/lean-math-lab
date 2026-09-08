# Lake 环境 wrapper 修复审查

审查对象是当前 `scripts/lake.ps1` 的 staged/working-tree 修复、`scripts/test-lake-environment.ps1`，以及 `research/environment-regression-{red,green}.json` 和获准的 caller 探针 `research/environment-caller-check.json`。审查只读检查 wrapper 行为并做一次小型真实 example 探针，没有终止或重跑 primary 的全库验证。

## 结论

当前修复没有发现阻断缺陷。它保留 caller 提供的 `GIT_CONFIG_*` 条目，只追加缺失的 `safe.directory`；去重使用 `OrdinalIgnoreCase`，并以 `[char]92` 到 `[char]47` 处理 Windows 反斜线，能够识别大小写或 slash 形式不同但语义相同的路径。新增 trust 值仍限制在当前 worktree root 和 `.lake/packages` 的直接子目录。

## 证据

- 旧版 red 证据：连续 10 次真实 wrapper 调用使 `GIT_CONFIG_COUNT` 从 16 增至 160，随后 `Examples/CofactorCriterion.lean` exit 1。
- 修复版 green 证据：连续 10 次调用的 `GIT_CONFIG_COUNT` 恒为 16，真实 example exit 0。
- 独立 caller 探针先设置 `core.quotePath=true`、大写正斜线形式的当前 root、外部 caller safe path 和大写正斜线形式的 mathlib path，再执行 3 次 `scripts/lake.ps1 --version`，最后编译 `Examples/CofactorCriterion.lean` 到 `.lake/CofactorCriterion.olean`。三次 count 均为 18，所有 version 调用和 example 均 exit 0；caller 条目原值保留，新增条目全部是目标 root/直接 packages，新增值无重复。完整结果见 `research/environment-caller-check.json`。

代码行 41--48 只读取现有 process-level caller entries；非 `safe.directory` 项不改写，已有 safe 值也不删除。行 50--57 对新树 root 与直接 package 目录做大小写不敏感去重后追加，探针未观察到 trust 越界。

## 非阻断问题

1. wrapper 每次仍把新树的 `.tools/elan/bin` 前置到 `PATH`，没有做 PATH segment 去重。green 记录的长度从 2889 增至 3375；caller 探针三次从 2889 增至 2997。它不改变 Git trust，也不影响本次真实编译，但长时间在同一 PowerShell 进程中重复调用会累积环境项，后续可单独修复。
2. `test-lake-environment.ps1` 只断言 version 调用成功、记录中的 count 稳定和 example exit 0；它没有主动设置 caller 条目，也没有断言 caller 值保留、大小写/slash 去重或新增 trust 集合。独立 caller 探针已覆盖这些缺口，因此当前修复有实证，但回归脚本自身的断言范围应在未来扩展。

## 可复现命令与边界

```powershell
pwsh -File scripts/test-lake-environment.ps1 -OutputPath research/environment-regression-green.json
pwsh -File scripts/lake.ps1 --version
pwsh -File scripts/lake.ps1 env lean -o .lake/CofactorCriterion.olean Examples/CofactorCriterion.lean
```

本审查没有改原工作区、没有 staging/commit/push，也没有修改 wrapper、回归脚本或共享入口。结论仅覆盖 process-level Git config 去重和真实 example 编译；不把 PATH 增长当作本轮阻断，也不宣称全库验证结果。
