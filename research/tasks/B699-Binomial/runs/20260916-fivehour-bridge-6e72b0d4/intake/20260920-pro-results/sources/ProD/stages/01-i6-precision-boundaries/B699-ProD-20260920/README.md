# B699 Pro D · i6精度与方法边界证据包

**frontier reduction = 0**。本包没有声称解决新的真实NC6无界区域。

## 阅读入口

先读 `REPORT.md`；完整量词、证明、零分支和弱模型见 `PROOFS.md`；失败推论的准确范围见 `FAILURES.md`。`SOURCE_ADOPTION.md`记录唯一Overview来源与冻结原稿读取缺口，`HANDOFF.md`给出当前状态和一项具体未完成义务。

本轮不做Lean，不修改或发布仓库。纸面推导与同会话精确程序复算分开标记；未获外部独立审读。

## 一键重放

需要Python 3.10或更新版本，只用标准库，无需联网或数学软件。不要使用Python的`-O`优化选项；程序会拒绝跳过assert检查的运行。

在解压后的本目录执行：

```sh
python3 code/replay.py --output outputs/replay.json
sha256sum -c SHA256SUMS
```

POSIX系统也可执行：

```sh
sh REPLAY.sh
```

Windows可用：

```powershell
python code/replay.py --output outputs/replay.json
python code/verify_hashes.py
```

`outputs/replay.json`为确定性JSON，无本地时间或随机数。本包实际保存的是本会话已执行的PASS结果。哈希表不包含自身；外层ZIP的哈希另行提供。

## 程序分别证明或检查什么

- `code/replay.py`：精确多项式展开、336个有理估值诊断、从逐级平方根恢复具体125位弱模型、对无界族的t=1,2做全层精确估值复算。
- `code/probe_square_alpha.py`：早期a≤14路线否证探针，输出保留，不据其无命中推断无界结论。
- `code/probe_hensel_recovery.py`：发现具体弱模型的a≤500、z≤60探针；这些上限不是原题有限化。
- `code/verify_hashes.py`：验证包内文件字节，不审查数学。

无界族的全t证明在 `PROOFS.md` P8；两个样本不替代其证明。任何PASS都不是Lean、外部独立审读或原题完备有限末端。

可选重现发现探针：

```sh
python3 code/probe_square_alpha.py > /tmp/square_alpha_probe.json
python3 code/probe_hensel_recovery.py > /tmp/hensel_recovery.json
```

它们不需要用于默认重放；不得把增加其扫描范围当作后续主要研究进展。

## 字节来源

`sources/OVERVIEW_EXCERPT.normalized.md`是已读Overview的规范化选段，**不是原附件原始字节副本**。其包内SHA256仅标识此摘录。原始字节物化失败以及冻结原稿404已明确记录。

`outputs/replay.json`内命名为`*_integer_sha256`的值使用非负整数的最短大端字节表示，不是十进制文本的哈希；文件哈希只认`SHA256SUMS`。
