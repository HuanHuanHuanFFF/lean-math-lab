# B699 Pro D — center-residual-cubic, 2026-09-16

先读 REPORT.md、PROOFS.md、SOURCE_ADOPTION.md、notes/FAILURES.md，再按 HANDOFF.md 接续。

## 新链重放

```sh
python3 code/replay.py
```

仅Python标准库。重新生成新有限证书、第二接受、回归与损坏测试；不运行未修改历史全链，不访问网络，不写任何用户仓库。

```sh
python3 code/consumer.py 200 6 7
```

只提供作者纸面定理的条件判据。`not_covered`不是反例，`proved_common`不是Lean证书。

一般版定义 H_i 为归一化分子W的完整p<i部分，不包含自动保留的端点i。所有目标使用自己的s_i与q_r。生成器与接受器来自同一作者，不等于外部审稿。

sources/保存实际已读冻结原字节；SOURCE_MAP.json列出原ZIP、成员、大小与SHA256。MANIFEST.json用于本包完整性核对。
