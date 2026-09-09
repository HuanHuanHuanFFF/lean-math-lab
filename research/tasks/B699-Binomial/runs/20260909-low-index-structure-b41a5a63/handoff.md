# B699 本批恢复交接

分支：`GPT-work/b699-low-index-20260909-b41a5a63`；源main：`7fd3928656489afe2c80698f0a09d1d933444186`。最新远端SHA以最终回复和Git远端实测为准。本批不合并main、不创建PR、不联系外部作者。原5小时截止UTC10:59:09，不继承到下一轮。

## 先读与可直接采用

先读[frontier](frontier.md)、[report](report.md)、[acceptance](acceptance.md)。当前21个接受源与091130Z证据逐字节匹配；151个高度和无限尾部已经接受。通用有限覆盖消费者已接受，但要求具体row的Boolean检查为true。

151主链和新增零类三项在纸面/精确证书层合计覆盖154指标。主链入口notes/heights/HANDOFF.md；零类完整性入口notes/zero-boundary/candidate-chain.md。零类两份证书是串联依赖：090620Z压低高度，092400Z完成有限候选；Matveev等尚未Lean化。

本轮采用的模块、固定源版本和旧精确缺口见notes/source-adoption.md。控制中心转达的云端height分支24cb8dc未在本地复核，不在本批接受来源中。

## 当前最小阻断

没有一条代表性完整覆盖行通过本次轻量尝试。i=184的Row184FullProof在1536MiB设置下以interpreter内存异常退出；Row184Goods后来以“Decidable未化简到isTrue或isFalse”退出。后一次不是数值不等式为假的证据；根因尚未完全定位。默认素性实例的线性除数范围是已确认成本风险，平方根替换尚未解决完整行验收。

TrialPrimeCheck的声音性已单独正式通过。优化版见证代码和可应用diff在experiments/lightweight-prime；原LargeDivisorWitness已恢复。保存的10份失败源码都与当时记录SHA匹配，重建来源明确标注。

## 恢复顺序

1. 重新观察当前资源、工作树、固定pins和用户给出的新预算。保留原现场；先核对本批当前源与接受记录。
2. 读取experiments/lightweight-prime/README.md及source-snapshot-index.json。在新的输出目录复现最小化简/内存问题，明确所用检查器版本，避免混用开发对象。
3. 用一条完整代表行作为继续条件，记录实际耗时、峰值或采样内存；静态数据或单个辅助引理不算完整行成功。
4. 只有代表行成功且总成本适合剩余预算，才继续全部151项；完成后再由LowIndexComplete的新源码闭包和实际公理打印接受完整定理。
5. 零类的Matveev/日志Lean桥为独立未完成部分，不能由151项数据补链自动提升。更大指标及出版依赖保持各自精确边界。

以下只是下一轮验收命令的格式，**本轮没有运行整表成功版本**。在本独立工作树执行，选择当时已准备的单行根：

```powershell
& 'C:\Python314\python.exe' -B 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/verification/runner/verify_repo_relative.py' --project-root . --lean 'D:\CodingProject\Math\.tools\elan\toolchains\leanprover--lean4---v4.33.1\bin\lean.exe' --package-root 'D:\CodingProject\Math\.lake\packages' --root 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/coverage/rows/Row184.lean' --memory-mb 1536 --timeout 900
```

该命令会编译实际依赖闭包，不能把旧项目对象当新源码验收。固定包缓存可复用；本轮开发覆盖目录不可直接当接受证据。

## 交付与资源

所有新文件归本批，题目导航和云端批次未改。新下载/临时/缓存留在D盘；没有增加大型依赖缓存或修改电源配置。只停止过确认属于本轮的计算进程。收束后停止整表及新方向，活动任务/进程与原工作区状态在verification/end-state.json记录。

纸面数据、昂贵证书和历史接受记录均保留。恢复应针对未知区域与具体阻断，不以重跑旧全局扫描或扩大原题三元组范围替代推导。
