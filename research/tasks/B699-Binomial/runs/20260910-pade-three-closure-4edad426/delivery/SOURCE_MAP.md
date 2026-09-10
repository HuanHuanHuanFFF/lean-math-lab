# 本轮来源与接口映射

固定输入上下文SHA-256：`84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5`。
本文件记录本轮实际采用关系，不代替 `originals/SOURCE_MAP.md` 的冻结历史清单。

| 使用的接口 | 精确来源 | 本轮采用方式 / 验证 |
|---|---|---|
|三项初始严格高度|`originals/asymmetric-pade.zip::B699-asymmetric-Pade/REPORT.md`；同包 `results/refined_profiles.json`、`code/verify_refined_profiles.py`|保留纸面定理输入；临时副本重放63数值约束和14,112取向；只消费11、16、21|
|BFT出版输入|Bennett–Filaseta–Trifonov, *On the factorization of consecutive integers*, 作者稿2007-02-26；Lemma4.1、Proposition5.1|重新读取作者原PDF和对应页；没有重证论文估计|
|原始多项式/消元|asymmetric-pade同包REPORT第4节及其后续完整推导（以文件标题和公式定位）|沿用原报告重建的整数多项式及非对称析取，不消费未经说明的其他版本定理|
|实际D、三窗口、赋值补偿|`originals/seven-index-closure.zip::notes/PROOFS.md` 第1、2节|本轮REPORT第3、4节重述完整证明；允许11，保留p=i|
|指数块引理|`originals/four-index-closure.zip::notes/PROOFS.md` 指数块部分|本轮重新核对并在REPORT第5节完整证明；不采用四项包新增Padé边/大高度输入|
|高度到M、CRT完整参数化|`originals/seven-index-closure.zip::notes/PROOFS.md` 第4、5节|本轮REPORT第6、7节完整重述；所有参数重新生成和验收|
|CRT快捷生成器|七项包 `code/crt_bound_probe.py`、`code/crt_fast.py`|vendor原字节；本轮新参数与17步输出|
|末端事件并集|七项包 `code/extra_terminal_probe.py`|vendor原字节；本轮完整候选生成|
|整数/区间原始验收器|七项包 `code/check_certificate.py`|vendor原字节；Legendre常数、余因子优先重建、大除子检查|
|另一方向CRT验收|四项包 `code/check_four_certificate.py::check_symbolic_stage`|只调用该函数；没有调用它对旧四项的main或旧高度检查|
|历史依赖模块|四项包 `code/check_blocks.py`|仅因上项模块导入而原字节携带；本轮不调用旧check函数|
|本轮新块/候选/例外验收|`code/check_targets.py`|不导入新生成器；目标参数限制、全部块完整性、51,127行完整覆盖、n330全部154个j|
|新回归与拒绝测试|`code/regression_tests.py`|7,253有限合法输入、端点11²专项、11类损坏证书拒绝|
|干净复现|`code/reproduce.py --regenerate`|实际执行；66份数学数据一致；不缓存新生成块|

外部原文：<https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf>。

启动状态核对：<https://github.com/HuanHuanHuanFFF/lean-math-lab/pull/7>。
冻结提交 `be57961409919d4675741bbaece9f462153a2a66` 与启动 squash main `784ec1d26f33fbb303ab0b0c14ac35919f03d902` 的相关 delivery tree 逐字节一致（见 `results/source_check.json`）。三个 run 路径为：

```text
research/tasks/B699-Binomial/runs/20260910-asymmetric-pade-022987af
research/tasks/B699-Binomial/runs/20260910-four-index-closure-c1bf7a69
research/tasks/B699-Binomial/runs/20260910-seven-index-closure-77927828
```

六份vendor代码的成员级原始路径、SHA-256、目标路径见 `results/vendor_source_map.json`；`check_sources.py` 实际从ZIP重新读取原成员并逐字节比较。不把导入旧模块等同于验收其所有旧结论。

新代码、报告和检查是本研究会话交付；旧理论、原报告与代码来源保持其原记录和作者信息。未调查新颖性，未完成外部人审或Lean内核验收。
