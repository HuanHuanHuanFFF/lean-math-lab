# B699 · Pro D · LCM 约分分母闭合（2026-09-15）

## 内容

REPORT.md为本轮结果；notes/PROOFS.md给无限归约和全部量词；SOURCE_ADOPTION.md与sources/SOURCE_MAP.json绑定旧D和上一轮D原件；HANDOFF.md说明剩余任务。notes/FAILURES_AND_EXECUTION.md保留失败、来源纠正及实际执行边界。

本轮定理：i4,…,i8中，α=n/gcd(n,j)整除lcm(1,…,i)即原题成立，g任意；安全i8→i9桥接。它不是α≤LCM、不是全部R7，也不是一般α的绝对有限化。

## 从干净环境重放

仅需Python 3标准库，无网络、第三方数学包或Lean；从解压的包根目录执行：

```sh
python3 -S -B code/reproduce.py --out /tmp/b699-lcm-replay-unique
```

out必须不存在或为空，且不能位于证据包里面。程序先核对MANIFEST，再在out中重新生成证书，运行主接受、另一完整除子归约、真实二项式及新旧边界诊断、损坏证书测试。六份数学文件必须与包内原件逐字节相同。日志和收据存入out，不改证据包或任何仓库；不运行sources中的历史数学全链。

分步命令：

```sh
python3 -S -B code/generate.py --out /tmp/b699-new-evidence
python3 -S -B code/verify.py --certificate /tmp/b699-new-evidence/certificate.json --out /tmp/b699-new-outputs
python3 -S -B code/verify_by_all_positions.py --out /tmp/b699-new-outputs
python3 -S -B code/diagnostics.py --out /tmp/b699-new-outputs
python3 -S -B code/mutations.py --certificate /tmp/b699-new-evidence/certificate.json --out /tmp/b699-new-outputs
```

## 接受边界

evidence/certificate.json和generation.json是完整主域，outputs包含所有新确定性结果。主接受器不导入生成器；all_positions不读取主证书或导入主实现；diagnostics/mutations调用校验工具，但并不被冒充第三位独立数学研究者。

sources原ZIP仅用于原字节归档与来源审计。exploration的发现探针不是正向接受入口；有限模式和相同输出不能替代notes/PROOFS中的无限证明。所有程序仍来自同一作者，未Lean、未外部独立人工审读。R7不变。
