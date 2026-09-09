# B677 验证与复现

成功的初等闭包为 [bounds/20260908T093438980811Z/evidence.json](bounds/20260908T093438980811Z/evidence.json)，Dusart 条件有限化桥为 [20260908T101901Z/evidence.json](20260908T101901Z/evidence.json)。原始日志、源码哈希、版本及传递公理检查均随记录保留。

完整有限证书的实际运行是 [finite/20260908T105847632428Z/evidence.json](finite/20260908T105847632428Z/evidence.json)。此记录已完整 `success=true`，792个项目源全部通过，最终根 guard 为标准三公理；[acceptance-check.json](finite/20260908T105847632428Z/acceptance-check.json) 的全部源码/依赖/对象/日志核对也通过。不能以部分 accepted_chunks 或有限 Python 实验替代最终证书。

## 新环境运行

先按仓库 `lean-toolchain` 和 `lake-manifest.json` 恢复 Lean v4.33.1 与全部固定包，不假定本次 `.tools/elan` 或 `.lake` 存在。环境差异与本批工具链证据见 [共享记录](../../../../../shared/20260909-formalization-environment/README.md)。

初等消费者：

```sh
python3 research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/bounds/verify_bounds.py
```

Dusart 条件有限化桥：

```sh
python3 research/shared/20260909-formalization-environment/fresh-root.py \
  --root research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/analytic/DusartBridge.lean \
  --guards 2
```

全部有限范围从空项目输出目录重编：

```sh
python3 research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/finite/verify_finite.py --jobs 4 --reserve-gb 5
```

有限证书很大，编译耗时明显高于结构证明。运行器最多同时运行 4 个编译进程，内存不足时减少并发。若确有中断，可对该次新输出目录使用 `--resume <该次verification目录>`；只接受同根、同次新分配以及逐项源码/依赖/对象哈希匹配的块。失败原始日志仍保存。

从头验证完整区域条件消费者，包括全部有限证书：

```sh
python3 research/tasks/B677-Lcm/runs/20260908-formalization-92c221/verification/finite/verify_finite.py \
  --root research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/analytic/RegionConsumer.lean \
  --jobs 4 --reserve-gb 5
```

本次采用一次新分配的完整有限构建，成功后再将剩余解析项目依赖从源编译。共享 `extend_fresh_finite.py` 在扩展前校验该次完整源码、依赖、对象哈希及成功证据，另存新的 analytic 验证记录，区分本次新编译与同批新构建复用对象。它不复用会话前的旧项目对象，也不覆盖原有限证据。后续普通新环境可直接使用上一条从头命令。

有限证书的生成器不是可信内核。接受链由 Lean 的 `decide +kernel`、覆盖正确性及实际最终消费者构成；没有 `native_decide` 或新增未证明公理。公理 guard 只接受标准三公理。第三方固定包可用缓存；本批强制新编的是完整受影响项目依赖。

## 最终区域消费者实际运行

[analytic/20260908T130158Z/evidence.json](analytic/20260908T130158Z/evidence.json) 已成功，根为 `lean/analytic/RegionConsumer.lean`。完整闭包804源；同批新构建的792个有限对象均核对源/依赖/对象SHA后复用，另12个项目源新编。根的1项实际传递公理guard通过，原有限证据SHA保持不变。证明本身仍显式要求 `DusartPrimeInterval`；没有用公理审计的标准三项输出遮蔽这个未证明参数。
