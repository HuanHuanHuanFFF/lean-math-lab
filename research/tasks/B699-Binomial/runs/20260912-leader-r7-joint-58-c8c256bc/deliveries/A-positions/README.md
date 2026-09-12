# B699 Pro A — 58族 / 二次多项式四位置排除

先读REPORT.md，再读HANDOFF.md、SESSION_STATE.json、notes/PROOFS.md。

## 新接收

在解压目录执行：

```sh
python verify.py --out verification-runs/check
```

Python3.11+；发布实测Python3.13.5。入口仅标准库与原ZIP内冻结精确接收模块，不使用优化器、不联网。先核对SOURCE_INPUT.json中的原始ZIP哈希。输出中的`PASS_NEW_QUADRATIC_POSITION_CONSUMERS`只表示明确的新义务通过，不表示Lean或旧全链重放。

发现脚本probe_*.py、extract_duals.py、build_relaxation_witnesses.py另需NumPy/SciPy/SymPy，它们可以重建发现，不是阅读或接收结果的前提。重跑发现会写evidence，请在副本进行；应优先直接接收冻结证书。

## 目录

REPORT.md：简明结果与边界。
notes/PROOFS.md：完整新推导、明确冻结接口、全部多项式与有理对偶权。
notes/FAILURE_BOUNDARIES.md：仍无界量词、失败模型、模过滤修复及证据等级。
evidence/：新精确证书和有限发现记录；大输出存文件。
code/：发现源码、冻结恢复器、精确新接收器。
logs/release-acceptance/：本次实际接收；logs/discovery/：发现记录。
adopted/BASELINE_58_FAMILIES.zip：原字节输入，完整58族旧原件及嵌套证据不变。
SOURCE_INPUT.json、SHA256SUMS：输入身份与交付成员校验。

运行时会生成baseline/_cache；这只是选择性恢复旧文件，不会自动重算旧证书。发布ZIP不含该重复缓存。新证据不会写回原ZIP。外置发布收据给出归档SHA256、完整性、干净解压重放。

本包没有GitHub推送或Lean编译记录，不应据此认为远端仓库已自动接入。R7与58族数量不变。
