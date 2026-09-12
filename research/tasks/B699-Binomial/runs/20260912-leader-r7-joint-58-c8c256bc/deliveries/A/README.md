# B699 Pro A v2 · 58个i9剩余参数族

读 `REPORT.md` 得结论；读 `notes/PROOFS.md` 得全部新推导及冻结接口；继续任务读 `HANDOFF.md`、`SESSION_STATE.json`。原始v2任务包保存在 `adopted/INPUT_TASK_PACKET.zip`，未改原件。

## 接收新有限义务

在本目录运行（只需Python标准库）：

```bash
python verify.py
```

新日志写入 `replay/`，不会覆盖原日志。也可指定输出目录：

```bash
python verify.py --out replay-check
```

首次运行会验证原输入SHA256并安全、选择性展开到 `_cache/`。不展开228万个content块；只恢复数值接收代码、冻结接受元数据和少量局部证书。切勿使用Python `-O`，冻结接收器有断言。

入口验证九条cuts的两种精确算术路径、90个严格边界、四组析取覆盖、58族完整清单、504个位置、45格权重、精确松弛／对偶证书和13种损坏拒绝。它**不**重验所有历史数学、不进行Lean、不给原题全域通过标签。

## 文件导航

- `evidence/selected_cuts.json`：本轮九条精确cut输入。
- `evidence/normal_forms_58.json`：最终58族＋移除26族清单。
- `evidence/normal_forms_60.json`：历史中间阶段；**不是当前前沿**。
- `evidence/product_certificates.json`：四种互补乘积下界的完整分支。
- `evidence/residual_positions.json`：加权位置域与双高幂八种位置。
- `evidence/residual_relaxation_witness.json`：精确线性松弛可行点，不是反例。
- `evidence/scalar_lp_optimality.json`：特定单标量模型的精确原始／对偶证书。
- `logs/release-acceptance/`：交付前实际新接收；`new_cuts_receiving.json`是先前八条cut的第一阶段日志，最终以九条接收为准。
- `notes/PRIMARY_SOURCES.md`：公开文献复核范围；`notes/FAILURE_BOUNDARIES.md`：严格未解边界。

`code/probe_*.py` 是可选发现脚本。含LP的发现脚本需NumPy/SciPy；它们不是接收必需项。`build_small_certificates.py`从精确域构建小清单，并做两次已指定目标的可行性求解来输出有理证书；接受不依赖优化器。正常接续不应默认重跑这些已完成探针。

## 归档与校验

`SHA256SUMS`覆盖交付文件但不包含自身。归档不包含 `_cache/`、临时重放目录或Python缓存。顶层输入SHA256在 `SOURCE_INPUT.json`。文件传输完整性、普通程序接收、纸面证明、外部审读、Lean和赏金接受分别登记，不互相替代。
