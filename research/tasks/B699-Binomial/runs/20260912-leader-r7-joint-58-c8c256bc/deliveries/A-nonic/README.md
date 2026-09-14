# B699 Pro A · Nonic bands · 2026-09-14

先读 REPORT.md 的新增范围和未解量词，再读 notes/PROOFS.md。HANDOFF.md、SESSION_STATE.json是新接续点；不是旧84/60族断点。证据等级与冻结依赖见 SOURCE_ADOPTION.md。

## 重放新接收

需要Python 3.10或更新；正向接收只用标准库。

```sh
python3 code/verify.py --out /tmp/b699-a-nonic-new-check
```

默认运行全部新代数/整数义务、21项损坏证书测试、完整高素数幂及有限n诊断、真实大整数示例、原字节哈希检查。`--no-diagnostics`会明确跳过有限n/高幂数值诊断，结果会标记，不能称作全量新接收。

这个入口不重搜Padé、content或CRT，不运行任何旧证书，不调用Lean或Git。PASS只表示这里列明的新接收通过，不是整个B699或i9已被形式化。

## 原件恢复（通常不需要重跑）

```sh
python3 code/prepare_sources.py
```

它从随包inputs/A-window-carry-original.zip按sources/MAP.json列明的嵌套链恢复原文。旧有限证书、C++代码及历史日志也仍在其嵌套原ZIP中。只有恢复字节，没有隐含重新验证数学。

## 发现代码与接收代码

`code/generate_certificate.py`通过递推生成H0..H9数据；接收器使用另一套falling-product公式直接展开，不采用生成器的输出作为公理。报告区分了精确代数数据与纸面无限证明。

D平移模型探针可以用 `python3 code/replay_boundary_probe.py` 重现。两个可选不变量发现脚本需要SymPy 1.14.0：`code/probe_quadratic_covariant.py`、`code/probe_nonic_invariants.py`；它们不属于正向证明，不自动被接收入口执行。

## 完整性

MANIFEST.json列出归档内其他全部数据成员的SHA256，不自包含。归档外发布收据给出最终ZIP哈希与干净解压目录重放结果，避免自引用。input原ZIP只保存一份，用户原附件没有修改。
