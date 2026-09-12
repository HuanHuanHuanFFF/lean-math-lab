# i11 CRT 原语有界 benchmark

本目录只保存本次 benchmark 的计划、脚本和结果。没有修改旧 checker、源码、证据、index 或 Git，也没有运行 Lean。

## 固定输入

使用 frozen i11 coverage-feasibility 的 full.json：

- B=15360，H=2^15360
- i=11,r=3,s=7
- 37,136 个 prime-power families
- 保守 shell 相交族对上界 185,190,380
- 壳筛后 pair-offset 上界 3,888,997,980
- M 用已采用的 crt_bound_probe.get_M 在完整 15360-bit H 上计算，并检查 2^3261 < M ≤ 2^3262

复用的只读原语：

- delivery/vendor/crt_bound_probe.py 的 params/get_M/primes/vp
- delivery/vendor/crt_fast.py 的 bound 中单个 prime-power pair、21 个 d∈[-10,10] 分支
- delivery/code/crt_descent.py 只作为采用关系和成本入口记录，未调用 main

benchmark 脚本导入这些模块但不调用任何旧 main，并把旧源 SHA、frozen full.json SHA 和输出 SHA 写入结果。

## 样本设计

先执行 pilot：6 个不同素数对 × 3 个 Q bit-length strata × 每 strata 1 对，共 18 对。

pilot 通过后执行 full：同样的 18 个 strata，每个固定选 8 对，共 144 对，低、中、高位数各覆盖，选择由族序号和排序后二分范围确定，可重复生成。

样本只选择两个 conservative shell 实际相交的族对。shell_overlap=true 不代表 CRT 真的有解；每对仍完整运行 21 个 signed differences 和原分支的精确大整数区间逻辑。结果只保存 bit length、整数 SHA、非空 d 数、等差进程项数和最大 n 摘要，不输出无界大整数列表。

## 资源门禁

脚本每个 pair/d 阶段检查：

- 墙钟总上限 60 秒；
- 当前进程 peak working set 上限 256 MiB；
- Python 整数运算，不把 Q/R/M/H 转成浮点；
- 固定 family count 必须仍为 15,359、9,691、6,615、5,471。

本机运行顺序：

~~~text
set PYTHONDONTWRITEBYTECODE=1
python -B experiments/huan-i11-crt-primitive-benchmark-5e2d13bb/benchmark_crt_i11.py --mode pilot
python -B experiments/huan-i11-crt-primitive-benchmark-5e2d13bb/benchmark_crt_i11.py --mode full
~~~

实际结果分别写入 pilot.json、full.json 及对应 integrity 文件。

## 解释边界

本 benchmark 只测量固定 18/144 对的单对 CRT 原语成本。它没有运行全 185,190,380 对、3,888,997,980 个 pair-offset 步、cofactor enumeration、完整 n/j 覆盖或 Lean。因此即使样本成功，也不能外推总耗时、非空族比例或全局无解；样本无解也不能称全局无解。


## 实际结果

pilot 已运行 18 对：

- status benchmark_passed
- wall time 5.226170 秒
- peak working set 164,413,440 bytes
- M 为 3262 bit，族数与 frozen 完全一致

full 已运行 144 对：

- status benchmark_passed
- 低、中、高 Q bit-length 各 48 对
- 六种不同素数对各 24 对
- primitive 分支：mode 0 为 108 对，mode 1 为 6 对，mode 2 为 30 对
- 总 wall time 6.211540 秒
- family 构造 2.544958 秒
- 单对原语总计 0.949941 秒
- 单对 wall time 平均 0.006590538 秒，范围 0.0014131 到 0.0191451 秒
- peak working set 164,950,016 bytes，约 157.309 MiB
- 144 对共 630 个非空 signed-difference，等差进程项数以完整整数写入 full.json

单位纠正：full.json 的 pair_wall_seconds.mean 已包含每对的 21 个 signed differences，因此机械乘算应使用 185,190,380 个 shell-overlap 族对，而不是再乘 3,888,997,980 个 pair-offset。得到 1,220,504.272634 秒、约 14.1262 天。这个乘法仍不是整体工时预测：样本不是全体族对，未测并行、缓存、输入分布和 cofactor 处理，也没有把样本无解解释为全局无解；前一版 296.7 天的摘要已在 CORRECTION.json 中保留为纠正来源。

full-integrity.json 和 pilot-integrity.json 保存输出及四个只读输入的 SHA。static-checks.json 保存语法、main 未调用、Lean/Git 未运行和资源门禁结果。
