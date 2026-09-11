# B699 光滑窗口与多指标转移：完整 Lean 交付

四个指定最终声明已在真实 Lean v4.33.1 编译并完成传递公理审计，仅std3。全新CI（run 34580160487）已成功复核全部30模块，所有编译与独立导入审计退出0。

- 分支：`GPT-work/b699-smooth-window-lean-20260911-894d6b50`；独立VPS Work执行，无子agent。
- 固定main：`eaa8d5760117b0b1133424548a162d28e23cc361`。使用GitHub API冻结源码；本机git fetch缺认证，未冒称完整clone。
- mathlib：`0df444a360eaa60ab8c11dca51a86af692955474`。toolchain、manifest、lakefile的Git blob与固定main完全一致。
- 原ZIP SHA256：`ddd1d3bf303e4c5088c45e9f319d5cd82ac1c73abd07964a7df76605b024474e`。
- 原题全域R9={3,4,5,6,7,8,9,10,14}不减少。

## 复用

最小统一入口：[lean/Main.lean](lean/Main.lean)。

```lean
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.Main
```

公开声明均在`B699.SmoothWindow`：`smooth_window_i4`、`smooth_window_simultaneous`、`smooth_window_sixty`、`smooth_window_factorial`。
单独复用两条显式行族只需[ExplicitFamilies](lean/ExplicitFamilies.lean)，其证明不依赖有限证书。

## 重现

在仓库根目录、固定toolchain及匹配mathlib缓存下执行：

```bash
python3 research/tasks/B699-Binomial/runs/20260911-smooth-window-lean-894d6b50/verification/runner/compile_all.py
```

该入口按导入依赖串行编译30个模块，再分别导入检查所有公开定理的传递公理，写入新的时间戳目录。底层真实命令为`bash scripts/lean-work.sh lake env lean -M 3072 -o … …`，并使用独立Audit.lean。
专用CI使用仓库固定main同款固定SHA的Lean action，按已提交pins获取匹配缓存，不依赖早期环境artifact的保留期，不自行提交。

证据入口：[acceptance](acceptance.md)、[frontier](frontier.md)、[handoff](handoff.md)、[数学审读](notes/mathematical-review.md)、[当前环境](verification/environment-current.json)。
