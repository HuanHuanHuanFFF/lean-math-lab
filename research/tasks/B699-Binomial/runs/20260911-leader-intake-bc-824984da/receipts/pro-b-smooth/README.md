# B699 R9 · Pro B 新交付

入口：[REPORT.md](REPORT.md)、[完整证明](notes/PROOFS.md)、[HANDOFF.md](HANDOFF.md)。

本次新结果是整个i4的3-光滑窗口子族，以及同一素数的多指标行族；**没有新整指标闭合，R9不变**。新证明只用初等算术和四次系数身份，不需要BFT或非有效有限性。

## 标准库复现

Python 3.10+，不可使用`-O`或`-OO`：

```bash
python3 verify_manifest.py
python3 code/reproduce.py --record replay/local
```

指定record目录须不存在或为空。脚本从空生成目录运行七条真实命令，保存stdout/stderr、退出码、耗时、输入前后哈希和与冻结数学数据的逐字节比较；失败时立即返回非零。不会重跑旧历史实验。

- `outputs/certificate.json`：全部467行及58行完整CRT见证。
- `code/check_certificate.py`：独立算法检查器。
- `code/check_algebra.py`、`check_grid_and_valuations.py`：两种整式核验与有限边界诊断。
- `code/check_transfer.py`：同一素数转移的固定常数与真实p=i反向例。
- `code/check_bad_certificates.py`：实际破坏测试。
- `replay/frozen-acceptance/`：本轮执行日志，不把代码存在当执行完成。
- `exploration/`：未用于定理接受的探针和失败记录，部分需SymPy/C++。

## 原件恢复

本包包含全部采用的数学文本。外层R9历史ZIP未重复复制，原上传文件保持原字节。需要核对或重新恢复所用源文本时：

```bash
python3 recover_sources.py /path/to/B699-R9-ABC-context.zip --dest /new/empty/directory
```

先校验原ZIP SHA256，再按input/SOURCE_MAP.json给出的原始成员名和成员哈希恢复。不修改原件。本包未执行Lean或人类审稿，也未访问实时仓库。
