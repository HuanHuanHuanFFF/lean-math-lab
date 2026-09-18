# B699 Pro A · GENUS / TANGENCY / COVER13

本轮结果：同一个K152固定G的覆盖16→13；新SAT84/SAT90，NF35/41/47全类载点排除，NF53压成一参数族并取得统一切向签名，2035状态完整预算。R7、57模板、152每行目标及一般无界参数未改变。

从 `REPORT.md` → `PROOFS.md` → `HANDOFF.md` 进入；`SOURCE_ADOPTION.md` 和 `evidence/source_manifest.json` 给冻结输入及出版来源；`FAILURE_BOUNDARIES.md` 给精确不可约例外、未闭族与下一步障碍。

## 新义务的完整重放

    python3 -B code/reproduce.py --out /absolute/path/to/nonexistent-directory

Python标准库，无网络、CAS、旧证据目录或Lean依赖。输出目录必须尚不存在，不覆盖旧记录。参考运行约两分钟，以实际日志为准。

最终状态：`PASS_NEW_GENUS_TANGENCY_COVER13`。原接受输出在 `verification/final/`；`run_stats.json` 的耗时/机器/命令字段非确定性，其余数学输出可逐字节比较。包外发布回执记录实际ZIP哈希、干净解压重放退出码与比较结果。

## 内容职责

- `code/discover_*.py`、`probe_*.py`及 `notes/tmp_*.py`：真实发现/路线诊断记录，部分需要SymPy/NumPy或明确的旧源路径；非最终重放入口。
- `code/verify_geometry.py`：q6..9新近饱和完整根门、子式、全部有理仿射解、全源普通阶、固定例外的全区间Bernstein证明。
- `code/verify_saturation_genus.py`：q14/15完整根门、亏格必要筛、694个精确增广子式。
- `code/verify_support.py`：全参数对角切向签名、E7/E8不可约性和NF53几何非反例。
- `code/verify_ledger.py`：从原始源指数重建全部2035状态，完整COVER13/EDGE13账本。
- `code/verify_next_budget.py`：尚未证明几何前提下的下一步预算诊断，不增加本轮覆盖。
- `evidence/`：本轮新增发现证书、精确多项式信息、来源哈希，不包含旧大ZIP。
- `verification/final/`：唯一最终新数学接收输出。前期同轮重复输出不重复打包，其原路径/哈希见 `verification/checkpoints-manifest.json`，实际日志保留。

作者纸面证明＋确定性精确证书，不是Lean、外部独立数学审稿或整个B699证明。13不代表13个原题候选。没有仓库写入/推送。
