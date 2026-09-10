# 交接与恢复

本轮未完成i≥4883全域原题消费者，新增原题范围0。已验成果仅为ECAnalytic的分析引理，接受声明和源哈希见acceptance.md。原始目标、量词、p=i和D/V的分支边界不变。旧run冻结源码、验收、共享入口、pins和当前main工作区均未修改。

## 下一数学检查

先明确可供Lean消费的无界短区间供应来源：Gap(4095,10^7)或能替代它的原题供应方法。现成Bertrand、单侧计数上界、N≤20,000,000素数链都不能直接完成它。若没有这一步的实际方案，不宜先扩大有限高度表。

完整EC恢复时，先恢复固定Chebyshev依赖缓存或明确安排源构建；旧完整候选在本轮真实运行停在缺失Chebyshev.olean。可以采用本run分析模块的导数修复，再接theta上界、Abel恒等式、基点计数和积分比较；必须重新编译完整EC并审计其实际传递公理。随后仍需归一化N、IC/115表和Gap，不能把这些义务隐藏在消费者参数里。

## 可重跑的接受入口

在本任务工作树根，用已存在的Lean 4.33.1及固定package目录。MemoryMb必须根据当前可用资源选择；本轮实际主验收使用3091MiB，最小导入实测峰值约1.09GB，这些是本轮观测而非未来配置默认值。

```powershell
$run = 'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17'
python -u -B "$run/verification/runner/verify.py" --project-root . --lean $Lean --package-root $PackageRoot --root "$run/lean/Acceptance.lean" --memory-mb $MemoryMb --timeout 180
```

verify.py已按原字节从合入的大指标run复制；每次创建本run新的时间戳证据目录和本工作树新的.tools目录，不覆盖旧验收。不需要大型旧原题对象缓存：本轮项目闭包只有ECAnalytic和Acceptance两源。真实命令和输出在../verification/20260910T075554Z/。该接受根不覆盖原题i≥4883。

对新根补做完整包对象绑定时：从新evidence.json取diagnostic_directory/olean作为ObjectRoot，设置LEAN_PATH使其排在固定包缓存目录之前，用相同Lean串行运行verification/runner/PackageClosure.lean；将完整日志保存到新时间戳目录，不能覆盖startup/package-closure.log。此审计程序只读取环境元数据和传递公理，没有数学native计算假设。再执行：

```powershell
python -B "$run/verification/runner/bind_package_closure.py" --project-root . --package-root $PackageRoot --lean-root $LeanRoot --object-root $ObjectRoot --module-log $NewModuleLog --output $NewClosureJson
```

这里LeanRoot是包含bin、lib和src的固定工具链根；NewModuleLog与NewClosureJson是相对工作树路径。绑定脚本拒绝覆盖已有文件。原始4512模块对象清单包含审计API的额外导入，是消费者闭包的超集，不把它当成4512个本轮新编模块。

## 证据与发布

report.md、frontier.md、acceptance.md、package-closure.json和source-binding.json给出本轮状态；publication.json记录源冻结提交、已核对的发布提交及真实耗时。旧源码字节与本轮接受根分别保存，失败诊断与成功证据分开。只向huan/b699-tail-20260910-9f6c2a17提交推送，不合main、不建PR、不等待CI。

未试分支：若以后取得可形式化的短区间供应，再比较完整归一化A和可变N的B；仅有更高尾部阈值时仍按原目标报告部分范围。没有推进其它三路正在进行的结果。
