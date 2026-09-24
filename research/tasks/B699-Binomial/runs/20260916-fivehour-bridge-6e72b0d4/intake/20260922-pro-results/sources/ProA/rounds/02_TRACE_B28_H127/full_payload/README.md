# B699 Pro A · GAMMA5 / TAIL567 / 同一 G 的 H127

日期：2026-09-21。角色：A / i9。研究完成，无仍在运行的数学任务；无 Lean、无仓库写入或推送。

**新终点：固定覆盖仍至多 10；达到 10 必须 h=deg_X G≥127，必要竖直状态从上一轮54个降为37个。**
在 h=127 时只余 v=(12,10,9,8,6,6)。这不是实际曲线、有限原题候选或 B699 反例。

入口：`REPORT.md` → `PROOFS.md` → `FAILURE_BOUNDARIES.md` → `HANDOFF.md`。
冻结依赖与原字节／语义摘录的区别见 `SOURCE_ADOPTION.md`、`SOURCE_MANIFEST.json`。

本轮新几何：五次双缺重的 GAMMA5 费用，以及五至七次双缺重的 TAIL567 费用。
恢复旧 TRACE 并保留 B22 的真实缺重位置／额外根，而不是把费用代理当实际源签名。
三份真正 S5 加七份 C 的精确放松仍容许十分量；甚至能通过前两个系数的根矩约束。

## 新空目录重放

```sh
python3 -B code/reproduce.py --out /absolute/nonexistent-directory --cross
```

依赖：Python 3.10+ 标准库；g++（C++17）；Boost.Multiprecision 头文件。
不依赖网络、旧仓库、SymPy、NumPy、Lean。输出目录已存在时直接拒绝，避免覆盖历史证据。

成功状态：`PASS_NEW_GAMMA5_TAIL567_TRACE_H127`。
`verification/author/receipt.json` 是实际作者运行收据；发布包外的 `*.CLEAN_REPLAY_RECEIPT.json`
记录最终 ZIP 在新空目录中的解压、成员 SHA256、执行退出码及确定性数学输出比较。
作者收据中的绝对命令路径属于作者运行，不是接收器对旧路径的依赖。

`MANIFEST.sha256` 覆盖包内全部其他普通文件。不保存可重建的编译二进制。
发现器与失败试验在 `discovery/`；最终接收不导入发现器。
