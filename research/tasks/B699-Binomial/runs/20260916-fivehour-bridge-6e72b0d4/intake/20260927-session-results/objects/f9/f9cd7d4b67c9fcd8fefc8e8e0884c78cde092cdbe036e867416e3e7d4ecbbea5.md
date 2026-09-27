# B699 Pro B — M1-CARRY-MULT

入口：REPORT.md → PROOFS.md → FAILURE_BOUNDARIES.md → HANDOFF.md。

本轮关闭首档m=1非零常数的z≤2，以及明确的EDGE3-T0整行族；不是完整首档/i3/B699。R7不变。包含两个实际完整幂时的原量词与完整源，包括合法素数3。

Python3.10+，仅标准库，无网络：

```
python3 -B scripts/verify.py --output /tmp/m1-receiver.json
python3 -B scripts/consume.py --P 27 --Q 677
python3 -B scripts/replay_archive.py /path/to/evidence.zip --output /tmp/m1-clean.json
```

verify与consume只读；接收输出必须在证据树外。discover.py会重写本轮证书，只在工作副本运行。无需运行任何旧P壳、m2、零支、仓库或Lean。

文件：报告/证明/失败边界/交接/状态；31项代数检查；43,608条新完备末端CSV及两算法证书；10条真幂行原源见证；4个小整行直接二项式回归；弱容量诊断；冻结依赖、日志、哈希及重放回执。

准确哈希覆盖及内外回执区别见PACKAGING.md。最终ZIP的自身SHA-256在包外.sidecar和包外final-replay.json，避免自引用。
