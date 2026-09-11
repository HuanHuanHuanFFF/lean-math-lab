# B699：百万约分分子无界子族

先读 `REPORT.md`、`HANDOFF.md`、`notes/PROOFS.md`。本包不含旧任务作为新指令。

```bash
python3 verify_manifest.py
python3 code/reproduce.py --record replay/local
```

主重放需要Python≥3.8、g++或clang++（C++17和unsigned __int128）。不需要网络、Lean、额外Python库或大型历史ZIP。三种有限实现分别是β-CRT、j-CRT、无因数分解的直接有界枚举。若编译器缺失，重放会明确失败，不声称第三检查已经运行。

`MANIFEST.json`核对全部静态文件；`replay/`下是允许新增的运行日志，不进入静态清单。冻结运行见`replay/acceptance/`。默认不执行`exploration/`，其中保留真实探针和初版结果，不承担无限证明。

原始上一轮小ZIP按原字节保存在`originals/`。6份采用文本见`sources/SOURCE_MAP.json`。拥有全部历史原包时，可额外执行：

```bash
python3 code/check_sources.py --original-dir /path/to/originals --out replay/source-originals.json
```

这会核对每个原ZIP、必要的嵌套ZIP及成员的精确字节；它不重跑历史数学。原文件名按SOURCE_MAP，旧文件不被改写。

本轮未减少R8整项计数，未给i3绝对高度。最强结论的必要子族前提是`j/gcd(n,j)≤2^20`，不能删去。
