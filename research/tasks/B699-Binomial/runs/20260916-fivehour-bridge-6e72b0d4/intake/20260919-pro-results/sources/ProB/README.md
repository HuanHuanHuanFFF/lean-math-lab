# B699 Pro B i=3 · 本会话推理与证据总包

生成时间：2026-09-19。

本包整理了本会话中已经交付的两轮 Pro B / i=3 研究成果、证明、失败边界、代码、输出证书与重放入口。

> 说明：本包收录的是本会话已经交付给用户的可复用数学材料与证据文件；不包含模型私有隐藏推理链。数学结论以各轮 `REPORT.md`、`proofs/PROOFS.md`、`FAILURES.md` 和可重放代码为准。

## 包结构

```text
original_zips/
  B699-ProB-i3-joint-elimination-20260918.zip
  B699-ProB-i3-joint-elimination-20260918.zip.sha256
  B699-ProB-i3-global-recovery-20260918.zip
  B699-ProB-i3-global-recovery-20260918.zip.sha256
rounds/
  B699-ProB-i3-joint-elimination-20260918/
  B699-ProB-i3-global-recovery-20260918/
SESSION_SUMMARY.md
SESSION_HANDOFF.md
MANIFEST.sha256
```

## 两轮内容

1. `joint-elimination`：完成范数与原始 `j` 判别式的同输入联立；把实际内容三次 `Psi` 的活动赋值接到真实 `u`；证明局部 2/3/17 条件存在无界相容族，因此该局部路线不能删除可认证 NC3 无界域。

2. `global-recovery`：首攻全局正整数恢复与完整酉因子分拆；得到两个新的平方型排除：负根族中 `vQ0` 不能为平方，一般 NC3 中 `u z T_rho` 不能为平方。仍未闭合一般 i=3，也未给出一般有效有限化。

## 重放

进入任一轮目录后运行：

```bash
python -m pip install -r requirements.txt
python replay.py
```

每轮均包含 `SHA256SUMS`、`verification/` 和输出 JSON。总包根目录的 `MANIFEST.sha256` 是本次重新打包后的全包文件哈希清单。
