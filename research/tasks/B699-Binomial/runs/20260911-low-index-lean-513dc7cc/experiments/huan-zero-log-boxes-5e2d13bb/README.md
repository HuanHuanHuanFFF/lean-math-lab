# 旧零边界 log 盒：三项 Lean 候选

Owner `/root/critical_finite_audit`，Astra/max。开始 2026-09-12 10:23:27 UTC，20分钟检查点10:43:27 UTC，无总时限。仅写本目录；旧审计、旧96项证书、共享/排队源码和Git不变；本子任务不运行Lean。

目标 namespace `Math.B699.ZeroBoundaryLogBoxes`，建议集成位置 `lean/ZeroBoundaryLogBoxes`。稳定接口 `logLower/logUpper : Nat → Rat` 采用旧checker的完整公式：二进制缩放、96项有理和、原窄尾界。后继使用a=1..64时无需更改定义。本次仅证明候选 `log_two_bounds`、`log_three_bounds`、`log_five_bounds`。

数学桥使用现存mathlib半对数有限上下界，两侧都乘2；m102现成宽上界经四个有限有理比较，推出旧m96窄上界。不能以m96现成宽上界直接替代旧区间。不新造精细atanh余项定理，不导入Matveev/PNT，不接55对或整数距离分支。

源码、精确对照和审计入口已准备，状态仍是未编译候选。共29个公开根、29个typed检查，统一Audit打印全部根。七个直接mathlib依赖的olean均存在。

- [详细报告](REPORT.md)
- [通用桥候选](Bridge.lean)
- [三个最终log盒](Pilots.lean)
- [全部64个旧端点精确值](exact-endpoints.json)
- [精确诊断](exact-checks.json)、[源映射](SOURCE_MAP.json)、[预期公理根](expected-axioms.json)

prepare_candidate.py --freeze 保存来源与文件SHA；冻结后默认运行只读核对，--log读取主任务提供的统一Audit日志。所有静态成功不等于Lean接受。下一步由主任务串行验证本候选。
