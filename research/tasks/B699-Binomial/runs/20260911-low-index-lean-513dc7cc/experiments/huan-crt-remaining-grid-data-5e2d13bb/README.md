# CRT remaining grid data

本目录只生成数据，不运行 Lean。范围是 stage0 除 (2,3) 外的其余五对，以及 stage1、stage2、stage3 的六对，共 23 张完整矩形；stage4 明确排除。

每张 JSON 保留 a=1..aMax、b=1..bMax 的全部细胞和 d=-10..10。每格保存 P/Q、精确逆元、capA/capC、最常见 default(lo,hi) 和全部例外。生成后重新加载每张 JSON，逐格逐位移重算公式并验证覆盖无重复、无缺失。未生成 Lean 源码，不修改现有 runner 或主源。
