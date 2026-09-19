# B699 · Pro D · 中心—缺端点分支的绝对高度

日期：2026-09-17。负责人：当前 Pro D 作者会话。仅本地数学研究交付；不修改仓库。

**主结果：** NC5、n mod72∈{18,56}、q2全居中、q4至少缺一个端点，推出 `ln n<2^512`。采用冻结端点分配后，全部恰三合格底数 t 因而获得同一个绝对上界。巨大有限底部尚未排除；R7不变。

## 阅读入口

- `REPORT.md`：增量、准确范围、剩余底部。
- `PROOFS.md`：完整几何、任意阶截面、整数高度与原题回传。
- `SOURCE_ADOPTION.md`：旧合同、新出版输入及未重验边界。
- `FAILURES.md`、`HANDOFF.md`：失败诊断和下一判别点。
- `notes/AUDIT.md`：同作者定向自审记录，不是独立审读。

`OVERVIEW-2026-9-17.md` 仍是全局唯一接续入口；本包只保留它的冻结输入副本与本轮增量。

## 重放有限义务

需要 Python 3.10 或更高版本，接受器只用标准库：

```sh
bash REPLAY.sh
# 或
python3 code/verify.py --output replay/local/verification.json
```

参考输出为 `evidence/verification.json`、`evidence/replay.log`；重放写到 replay 下，不覆盖冻结输入或原参考日志。接受状态 `PASS_FINITE_INGREDIENTS` 的含义是16个有界曲线类、六个因子、合法非零、交数和常数证书通过，**不是巨大原题底部通过**。

发现程序 `zero_intersection_probe.py`、`root_curves.py`、`probe_center.py` 使用 SymPy，只供复现发现；接受无需运行它们。`evidence/probe_*.json` 是早期小核探针，不是主定理证书。正式固定输入为 `evidence/geometry.json`。

## 有效性与证据等级

任意 h 的辅助截面由 Reider 保证，再通过明确 Taylor 矩阵和 Cramer 法给有限构造及系数界。本轮没有展开天文规模的辅助多项式，也不需要这么做才能得到一致高度。

作者纸面证明＋同作者标准库精确有限证书，采用已核对版本的 Reider 与 Matveev。没有 Lean、外部独立数学审读、全项目历史覆盖并集差集审计或完整指标闭合。发布权限未扩大；没有提交、推送或发布。

`MANIFEST.sha256` 覆盖本包普通文件（清单自身除外）；输入来源哈希另见 `sources/PROVENANCE.json`。原始版权论文不随包重分发，来源定位与采用说明随包保存。
