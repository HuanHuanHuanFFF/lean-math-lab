# B699 Pro A · NF59 + SAT102 + COVER12

开始阅读 `REPORT.md`；严谨证明见 `PROOFS.md`；交接和失败边界分别在 `HANDOFF.md`、`FAILURE_BOUNDARIES.md`。

本包只包含2026-09-20新增证据。固定G的可载点不可约分量数上界13→12，未完成整个i9。无Lean，无仓库写入。

## 直接重放

需要Python3.10+及NumPy。在包根执行：

```sh
python3 -B code/reproduce.py --out /absolute/path/to/a/nonexistent/output-directory
```

必须是新输出目录，程序拒绝覆盖旧验收。成功末行应为：

```text
PASS_NEW_NF59_SAT102_COVER12
```

若存在SHA256SUMS，接收首先核对全部清单字节。验收只读取新证书及当前源码，不需联网、旧包、仓库、G系数、SymPy、CAS或Lean。NumPy只做有界int64模整数消元，无浮点。

`verification/final/` 保存封装前完整成功的确定性输出。最终ZIP本身的空目录解压和再次重放以包外release receipt为准；这避免把ZIP自己的哈希循环嵌入自身。执行时间、进程退出码及工具中断属于 `logs/`，不混入应逐字节一致的数学输出。

## 文件职责

- `code/gates.py / jets.py / recover.py / signatures.py / special_probe.py / ledger.py`：发现程序；其中有理恢复与符号诊断使用SymPy。它们可以从同一数学模型重新发现新证书，但最终验收不导入它们。
- `code/accept_core.py / accept_ledger.py / reproduce.py`：另一个实现的接收器，重生成完整有限门、验证全部非零子式和完整有理解空间、所有参数层、非取零证书及同一G联合账本。
- `evidence/`：本轮根门、完整行索引证书、三组全部有理系数、参数层及诊断；`nf59_special_probe.json` 的CAS因式分解字符串不承担任何已接收结论。
- `verification/final/`：最终完整接收；其中 `old_conditional_goal_ledger.json` 的名字沿用发现阶段历史键，但相应几何条件已在本轮证明，因此其现在是正式middle11/free18的COVER12账本。
- `SOURCE_ADOPTION.md` 与 `evidence/source_manifest.json`：原件固定提交、真实路径及Git blob；旧大包不重复收入。

## 复现发现步骤的例子

```sh
python3 -B code/gates.py nf 10 --h 3 --out /tmp/new-nf10-h3-gates.json
python3 -B code/jets.py /tmp/new-nf10-h3-gates.json /tmp/new-nf10-h3-minors.json
python3 -B code/recover.py /tmp/new-nf10-h3-minors.json /tmp/new-nf10-h3-solutions.json
python3 -B code/signatures.py /tmp/new-nf10-h3-solutions.json /tmp/new-nf59-signatures.json
python3 -B code/ledger.py /tmp/new-ledger.json
```

详细CLI以源码的argparse/主函数为准；正式验收只需最上面的单条命令。不要覆盖随包证据来伪造重放；所有新发现输出应写新路径。

## 核心边界

12不是有限原题候选数。R7、57模板、152行上界、一般D7/e3/z14不变。没有EDGE12；NF59仍余二参数和一参数潜在载点族；原G系数／因子未恢复。具体数学量词与未关闭范围以REPORT、PROOFS为准。
