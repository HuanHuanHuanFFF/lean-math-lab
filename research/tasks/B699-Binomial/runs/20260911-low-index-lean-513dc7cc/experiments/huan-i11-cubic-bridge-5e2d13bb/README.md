# i11 实际立方小余因子桥

owner：`/root/i18_downstream_review`；唯一写入本目录。接续任务开始检查 2026-09-11 14:13:43 UTC；先冻结了旧 localization 候选，新 cubic 目录从 14:20 UTC 开始落盘。20 分钟 checkpoint 已向主线程提交：完整三文件候选已写出，等待小型算术和静态审计；这不是总截止。

固定纸面来源：`20260910-pade-three-closure-4edad426/delivery/REPORT.md` §4。主线程给定来源 commit `5c37f257401952ed85ddd104de8e56a4f2024031`；本次不运行 Git，以实际读取的报告 SHA 绑定字节。

全部 Lean 为**未编译候选**，本 worker 不编译，不改共享入口或已验模块。拟集成路径本 run `lean/I11Cubic/`：

- `CubicPowers.lean`：只依赖已验 upper-height i11 常数及 shared API，证明严格常数、实际 U^44>n^143、U^4>n^13、两个不同实际小素数组件的四次幂>n^3。这是可供主线程先编译的独立前缀。
- `CubicCofactors.lean`：独立纯 Nat 前缀，从 A*X≤n 与 X^4>n^3 得 A^4≤n，再用正 A、n≥20 得 A^3≤n−10及双窗口 cubic，另给 Nat.dist≤10。
- `ActualCubic.lean`：把完整 n,j、实际 noCommon、大分量与真实窗口接起来。还依赖刚冻结的 `I11SmallPrimes.Components/Window`，须先由主线程实际接受；FourWindows 并非此末端的必需导入。

最终 p,q 属于 {2,3,5,7} 且不同；h,k明确等于实际 binomial valuation，正且不任意放大；a,b<11但不要求互异。余因子A,C≥1，两个三次幂都≤min(n−a,n−b)，距离≤10。没有新增HeightValid、U乘积或Padé/G假设。

该桥只处理 n≥2^98 且假设完整 noCommon 的分支。低于2^98的整段、指数块证书以及2^109高度均未由本目录接受。B仍0/19。

最终检查点 2026-09-11T14:41:33.175498+00:00：三文件完整候选、12个audit roots和小型常数/临界检查已完成；检查0.036350秒。未运行Lean/CRT/指数块，实际定位依赖仍待primary接受。即将按原字节交回。
