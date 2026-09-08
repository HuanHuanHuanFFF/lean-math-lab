# B686 最终消费者验证索引

以下只列最终采用的成功验证，不把开发失败、预期失败输入或定向编译冒充验收。JSON 记录实际源码、命令及日志；本批源码与采用的历史项目依赖均在新对象目录重新编译。数学范围见 [报告](../report.md) 和 [账本](../ledger.md)。

| 最终消费者 | 成功的新目录证据 | 项目闭包 / 根声明公理检查 |
|---|---|---|
| 两倍素数幂反射和 | [093042](../../../../../shared/20260909-formalization-environment/runs/20260908T093042Z/evidence.json) | 6 源 / 1 guard |
| 全 p 距离余因子 | [093810](../../../../../shared/20260909-formalization-environment/runs/20260908T093810Z/evidence.json) | 完整项目闭包 / 3 guards |
| 反射两位置 | [094325](../../../../../shared/20260909-formalization-environment/runs/20260908T094325Z/evidence.json) | 6 源 / 1 guard |
| 中心相邻距离支持 | [100510](20260908T100510Z/evidence.json) | 完整项目闭包 / 根 guard |
| 一般距离两位置 | [103044](20260908T103044Z/evidence.json) | 完整项目闭包 / 根 guard |
| 对称距离与调和分母指数 | [103810](20260908T103810Z/evidence.json) | 16 源 / 2 guards |
| 全偶 Runge | [centered](centered/20260908T095933132002Z/verification.json) | 10 源 / 10 声明审计；空白名单负测试实际拒绝 |
| 四整除 Runge | [quarter](quarter/20260908T114117928142Z/verification.json) | 23 源 / 18 声明审计；空白名单负测试实际拒绝 |
| 矩形 Cauchy 基础接口 | [111750](20260908T111750Z/evidence.json) | 独立接口 guard；同时纳入完整 quarter 闭包 |
| 原题规范系统提供者 | [provider](canonical/standard-provider-final-20260908T/evidence.json) | 6 源 / 2 guards |
| 偶数长度密度 1/4 | [density](canonical/density/20260908T113015661794Z/evidence.json) | 18 源 / 5 guards |
| 四整除长度密度 1/8 | [quarter density](canonical/density/20260908T114721436330Z/evidence.json) | 36 源 / 2 guards |
| 全 n 的短间隙排除 | [120354](20260908T120354Z/evidence.json) | 14 源 / 3 guards |
| 任意固定 h 的精确界及有限性 | [120826](20260908T120826Z/evidence.json) | 13 源 / 3 guards |
| 采样高度的条件消费者 | [sampling](sampling/20260908T105855Z/evidence.json) | 17 源 / 3 guards；MRSTT 前提未证明 |
| 独立复用 Sylvester–Schur | [sylvester](shortgap/sylvester/20260908T120920262026Z/verification.json) | 3 源 / 5 声明审计；空白名单负测试实际拒绝 |

公理检查只接受标准集合 `propext`、`Classical.choice`、`Quot.sound`（个别声明用其子集）。`#guard_msgs` 检查实际传递公理输出；Runge/Sylvester 审计另显式拒绝白名单外公理，并保留负向日志。预期失败的 `NegativeAudit.lean` 只是测试输入。源码 policy 检查接受闭包中的占位证明、新公理及 `native_decide`。

最终源码对照由 [check_acceptance.py](check_acceptance.py) 读取 [accepted-results.json](accepted-results.json)，重新计算每个根的精确源码闭包、核对当前 SHA-256、成功编译记录、保留日志和源码 policy；[20260908T123720406308Z](reconciliation/20260908T123720406308Z/evidence.json) 全部通过。这是只读证据整合，不是另一次 Lean 编译。完整新增 Lean 源码的额外占位/公理 policy 扫描也没有违规。原始日志和已冻结 vendor 来源注释有空白告警，按原字节保留，未宣称 `git diff --check` 成功；见 [integration/acceptance-notes.json](integration/acceptance-notes.json)。

## 从新环境复现

新会话必须检查本机环境，不应假定本次 `.tools/elan`、`.lake` 或其他工作区路径存在。按照仓库脚本恢复 `lean-toolchain` 指定的 Lean `v4.33.1`、`lake-manifest.json` 固定的 9 项包；不修改版本。运行器本次使用仓库内 `.tools/elan`，固定包缓存可重新下载或从源构建。详见 [环境记录](../../../../../shared/20260909-formalization-environment/README.md)。

普通消费者使用共享 `fresh-root.py --root <Lean源码> --guards N`；参数可以重复。每次自动分配新时间戳，不能指定旧成功目录。具体示例：

```sh
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/Consumer.lean \
  --guards 3

python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/FixedGap.lean \
  --guards 3
```

其他普通根为 `lean/reflected/TwicePrimePower.lean`（1 guard）、`DistancePrimePower.lean`（3）、`TwoPositionSupport.lean`（1）、`lean/distance/CentralConsumer.lean`、`PairBounds.lean`、`SymmetricConsumer.lean`（2）、`lean/sampling/HeightAssembly.lean`（1）与 `HeightCorollaries.lean`（2）。准确已运行命令见对应 JSON 的 `argv` 和 `compile_records`，不用旧项目 olean。

包含实际反向审计的专用运行器：

```sh
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/centered/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/centered/AxiomAudit.lean
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/quarter/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/quarter/AxiomAudit.lean
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/shortgap/sylvester/focused_check.py research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/AxiomAudit.lean
```

密度运行器为本目录 `canonical/density/verify_density.py` 与 `verify_quarter_density.py`，默认根分别是实际两条密度消费者。原题规范系统可以独立用共享运行器验证 `lean/canonical/Provider.lean --guards 2`。

## 保存范围和失败记录

历史验证没有覆盖。centered/quarter 保留开发失败与兼容修复；canonical 保留 import、线程/内存/guard 诊断和切片来源；`shortgap/development/` 保留证书、固定 h 和旧条件路线的开发日志。部分过大的可重建对象缓存因共享盘容量被清理，精确记录在本批和共享环境目录。Lean 源码、命令、日志与 SHA-256 证据保留，不能用缓存是否仍在磁盘判断验收状态。

第三方固定包没有全部从源码重建；本批强制重编的是受影响项目依赖闭包。没有外部独立内核复核或零 linter 警告声明。API 文档构建、部署不作为证明验收前提。
