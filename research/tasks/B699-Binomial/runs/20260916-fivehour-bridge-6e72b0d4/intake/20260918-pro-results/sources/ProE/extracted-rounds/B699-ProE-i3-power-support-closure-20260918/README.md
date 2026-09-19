# B699 Pro E · Power support evidence

本包主结果：`NC3 & g=2 & u=1 & n=2^(M e+1) & M∈{4,6,10,14,22} & e≥1` 蕴含 `omega(t3)≥3`。不表示完整i3闭合。

阅读顺序：`OVERVIEW.md` → `REPORT.md` → `PROOFS.md`；反例/方法边界见 `FAILURES.md`。证据状态与固定输入见 `SOURCE_ADOPTION.md`。

## 验证（无第三方库）

使用Python 3.10或更高版本，在包根目录运行，输出到新路径，不覆盖冻结输出：

```sh
python3 -S -B scripts/verify_certificate.py --certificate outputs/CERTIFICATE.json --output /tmp/b699-power/acceptance.json --negative-tests
python3 -S -B scripts/check_algebra.py --output /tmp/b699-power/algebra.json
python3 -S -B scripts/replay.py --output-dir /tmp/b699-power/replay
```

验收重建全部原端点域、完整源素数幂及全部至多两底C选择。整数素性使用递归满阶证书，不依赖概率判断。生成证书所用SymPy不是接受者依赖。

## 重建证书并逐字节比较

安装了SymPy的Python环境中运行：

```sh
python3 -B scripts/replay.py --output-dir /tmp/b699-power/full-replay --rebuild
```

此命令重新生成证书，再以另一个纯标准库算法接受，并重新生成代数输出；三个冻结JSON全部比较原字节。脚本拒绝使用包根或其现有证据目录作为输出路径，避免覆盖原件。检测到任何未闭合平方候选或证书损坏时退出非零。

## 文件与审计边界

- `sources/` 是三个采用入口/证明的精确副本；不复制全部旧ZIP。
- `outputs/CERTIFICATE.json`、`ACCEPTANCE.json`、`ALGEBRA.json` 是本轮数学/算术输出。
- `outputs/Q11_FACTOR_EXPLORATION.json` 是探索记录，不是素性接受证书。
- `notes/PROVED_CORE.md` 保留中途“尚未完成”的历史状态；后续完成见 `notes/FINAL_CHECKPOINT.md`，不将旧状态误读为当前缺口。
- `verification/REPLAY.json` 记录本次实际重放；`MANIFEST.json` 逐文件记录大小和SHA256。

任务标签采用会话日期2026-09-18。容器记录使用UTC，显示2026-09-17；对应东八区已是2026-09-18。不用日期标签估算工作时长。无Git发布、Lean编译、外部独立研究者审稿或新出版定理采用。
