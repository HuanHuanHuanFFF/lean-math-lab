# 实际执行记录

本轮环境：cgroup内存上限4294967296字节，CPU quota400000/100000；初始可用磁盘约30GiB。此为当前容器观察，不是永久机器规格。用户未设本轮时限。日期2026-09-18，未继承旧任务计时或仍在运行的旧任务。

1. 读取挂载的NF35 PROOFS、HANDOFF与相关旧源，记录来源哈希；未运行旧数学全链。
2. probe_gate.py：SAT60/z14完整门39891，源直线后382。
3. probe_all_source.py + discover_uniform.py：逐次q1..13无z下界根门与残余子式；发现q11一次执行中断后完整重跑。普通jet最高121参数。
4. verify_saturation.py --max-e 11：中途完整新接收检查点通过，不是最终范围。
5. source_ledger.py：新费用与单缺重位置完整账本；条件SAT84、NF41和合取，不将这些未证几何当事实。
6. 最终命令：

```
/usr/bin/time -v python -u code/reproduce.py --out <本run>/verification/acceptance_final
```

结果PASS_NEW_UNIFORM_SAT78_COVER16，退出0；本次墙钟1:45.07，脚本记录104.461秒，最大resident set236860 KiB。日志保存为logs/acceptance_final.log。没有未知G大矩阵，没有OOM。

所有宣称的有限接受均以verification/acceptance_final为准。初始探针、不同输入范围的门数和临时进程号不作为数学结论。

最终ZIP另进行干净解压、成员哈希检查和同一新接收入口重放；包外release-receipt给出实际ZIP哈希、干净重放结果与精确输出比较。没有Lean、外部独立审稿或GitHub写入。
