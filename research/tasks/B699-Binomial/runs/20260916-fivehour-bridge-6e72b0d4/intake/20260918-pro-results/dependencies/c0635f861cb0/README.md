# B699 Pro D · H025 完整5幂层与联合缺槽闭合

2026-09-17。独立研究交付；未修改、提交、推送或发布仓库。

**入口：** [REPORT.md](REPORT.md) → [PROOFS.md](PROOFS.md)。采用边界见
[SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)，接续见 [HANDOFF.md](HANDOFF.md)，
失败与方法边界见 [FAILURES.md](FAILURES.md)。附带的旧总览只是冻结输入副本，
不取代用户指定的唯一全局接续入口。

本轮有两个条件闭合消费者，以及一个对全部次数、全部行权成立的多项式方法障碍。
没有闭合整个1280/1530尾部，没有给一般E、q5、t绝对上界；R7不变。

## 复核

在本目录执行：

```sh
python3 code/select_i5_kernels.py
python3 code/verify.py
```

以上只需Python标准库。第一步从已保存的精确基组合重建两份i5多项式；
第二步不导入发现代码，重新计算全部Taylor条件、合法域正性、完整有限恢复、
末端候选、递归素性证书及共同素数赋值。它是同一作者的另一实现，不是外部独立审读。

`REPLAY.sh` 等价于上述两条命令。`evidence/verification.json` 是实际复核输出。
复核脚本会更新该输出中的运行时长；如需核对封包字节哈希，请在重放前执行
`sha256sum -c MANIFEST.sha256`。
纸面无限论证不由一条PASS替代：必须结合PROOFS中的源幂、绝对高度、CRT完备性和
方法障碍证明阅读。

## 生成与发现记录

- `code/reconstruct_kernel.py`：用SymPy重新构造所需16次核；它不是本轮的新核发现声明。
- `code/three_slot_discovery.py 124` / `234`：精确线性核发现，依赖SymPy。
- `code/three_slot_expand.py 124` / `234`：展开保存的精确种子。
- `code/three_slot_positive.py`：历史发现用的浮点LP及随后精确有理化；依赖NumPy/SciPy。
  **接受过程不运行、不信任这个优化器。** 固定整数线性组合由select脚本重建。
- `code/generate.py`、`code/generate_i5_finite.py`：仅在纸面绝对高度证明后使用的全指数CRT生成器。
- `code/i5_terminals.py`：末端分解与证书发现，SymPy仅负责寻找分解；素性最终由标准库Lucas证书接受。

检查已有证书无需重跑发现或素因数分解。生成脚本会覆盖同名生成输出；保存原件后再作发现复现。
未修改的历史研究链没有重跑。包内不包含旧仓库原件的伪造字节副本。

## 证据等级

作者纸面证明＋本轮确定性精确证书；冻结同指标QIG按作者合同采用。
没有Lean、外部独立数学审读或全历史消费者并集差集审计。
`MANIFEST.sha256` 记录本次包中普通成员的字节身份；不是旧仓库来源文件的哈希替代品。
