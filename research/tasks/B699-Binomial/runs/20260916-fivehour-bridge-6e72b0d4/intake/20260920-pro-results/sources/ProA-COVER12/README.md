# B699 Pro A · COVER12 evidence · 2026-09-20

本包交付同一个固定G的可载点不可约分量上界 **13→12**：NF59全参数分类与收费 + SAT96/102全系数分类 + 完整同一G竖直联合账本。

推荐入口：[REPORT.md](REPORT.md) → [PROOFS.md](PROOFS.md) → [FAILURE_BOUNDARIES.md](FAILURE_BOUNDARIES.md) → [HANDOFF.md](HANDOFF.md)。

## 完整接收

```bash
python3 -B src/reproduce.py --out /absolute/path/not-yet-existing
```

依赖：Python≥3.10标准库、支持C++17的编译器（默认g++，可用环境变量CXX指定）。不使用网络、不读取仓库、不需旧证据、不需SymPy。拒绝已存在输出目录；不要使用Python -O。本轮实际环境为Python3.13.5、g++14.2.0。

接收将独立生成完整候选、重建普通jet右端和每个证书子式、核对三个完整有理仿射空间、全参数普通/切向签名、两个固定式非取零、三个不可约例子、原题非反例、2035竖直状态与双向枚举账本，并运行损坏输入拒绝测试。状态应为：

```
PASS_NEW_NF59_SAT102_SAME_G_COVER12
```

`MANIFEST.json`核对包内文件字节。最终发布ZIP的SHA256与新空目录干净解压重放记录在随包交付的`.clean-replay.json`，不把压缩包自身哈希嵌进压缩包造成自引用。包内`verification/accepted/`是实际发布前接收记录；外置回执是最终压缩包重放记录。

## 文件结构

- `certificates/`：完整CSV门、明确子式索引、稀疏有理系数、全部取消层、非取零、边界例子、完整最大账本。
- `src/accept_*.py/.cpp`与`src/reproduce.py`：最终接收，不导入发现程序。
- `src/discover.cpp`、`jets.cpp`、`recover_nf59.py`、`signatures.py`、`discover_boundaries.py`、`discover_nonvanishing.py`、`ledger.py`、`discover_next_budget.py`：本轮发现程序。Python发现步骤使用SymPy；不是最终接收依赖。
- `logs/`：本轮实际发现/恢复/初期验证日志。标有v1的记录只属于当时版本，最终以accepted与clean-replay为准。
- `outputs/`：便于查看的多项式展开文本；数学规范定义是证书JSON。
- `SOURCE_ADOPTION.md`、`dependencies/source_manifest.json`：冻结路径、Git blob哈希、采用接口和未重放边界，无旧大包。

## 重新发现（在副本中，避免覆盖本包原证据）

先复制本包到一个独立工作目录。编译`src/discover.cpp`与`src/jets.cpp`，用下列参数分别生成六个NF59门和两个SAT门：

```bash
# 第一个参数q，第二个缺重行索引0..5对应r3..8；SAT使用-1。
./discover 10 0 certificates/nf59_d0.csv 14
./jets 10 certificates/nf59_d0.csv certificates/nf59_d0_jets.jsonl
# 对缺重索引1..5重复；SAT为q16、17，min_z=0。
./discover 16 -1 certificates/sat96.csv 0
./jets 16 certificates/sat96.csv certificates/sat96_jets.jsonl
./discover 17 -1 certificates/sat102.csv 0
./jets 17 certificates/sat102.csv certificates/sat102_jets.jsonl
python3 src/recover_nf59.py
python3 src/signatures.py
python3 src/discover_nonvanishing.py
python3 src/discover_boundaries.py
python3 src/ledger.py
python3 src/discover_next_budget.py
```

有限域子式只证明必要线性义务。出版亏格、冻结K152与NC9消费者是单列数学前置，不会因为重放成功就变成Lean或外部独立审稿。本包不含整个B699闭合或原题反例。
