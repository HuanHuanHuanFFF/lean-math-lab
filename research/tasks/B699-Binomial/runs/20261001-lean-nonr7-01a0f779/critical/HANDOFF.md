# 临界指标 Lean 接续：本轮已接受与未验候选

Owner `/root/critical_verify`，模型6.1 Sol/xhigh。本轮原始预算2026-10-01 13:42:09–15:42:09 UTC，不延期。15:32冻结，保留历史源、原日志与失败收据；不切分支、提交、推送或改Math/pins。当前分支由Leader管理：`huan/b699-lean-20261001-01a0f779`，输入`4d22485e20e509e33348b33e63f6902becbae414`。

## 已接受

- [窗口log，9根](verification/20261001T142900Z-window/acceptance.json)：实际正整数完整幂窗口、n>4096、不同a,b<34，给准确展开L非零、≤33/(n−33)、<128/n。
- [Base，36根](verification/20261001T144100Z-base/acceptance.json)：i=28/31/34全部合法反例n>4096→两个M64实际完整幂窗口→上述非零L与严格上界。原题p≥i（保留p=i）在三个公开类型中展开；完整指数是`(n.choose i).factorization p + i.factorization p`。
- [真实距离及实际窗口pilot，45根](verification/20261001T151700Z-pilot/acceptance.json)：log2/3/5原96项盒、非共振/共振两条整数距离分支、真实线性形式，以及(2,3)素数对、cofactor(5,1)/(1,1)的实际完整窗口n界，分别为`n<25600*9881527843552324`和`n<512*9881527843552324`。保留完整`fullExponent(n,i,2)≤15359`条件，未把它藏掉；没有遗留L非零/局部上界假设。

三份接受均有真实exit0、准确类型、全部目标传递公理（仅propext/Classical.choice/Quot.sound）、source/object/sidecar/stdout/stderr hash及固定toolchain/manifest绑定。各目录`log-byte-map.json`链接逐字节日志/receipt副本。根集重叠，不能相加当全题进度。

完整原题新增指标 **0**；未排除三个指标的全部窗口，未推进R7。

## 尚未编译的源

- `M64/Height.lean`及新`Consumers.lean`/`HeightAudit.lean`：把冻结已验高度接到本轮完整指数≤15359和三个有界log消费者，仍未fresh合成。
- `CriticalHeightBundle.lean`：63份冻结历史高度依赖、484076 bytes，数学非import正文保留；[映射](height-bundle-map.json)有原raw hash、body text hash、拓扑和精确字节段。每原file独立section，原namespace/section/mutual平衡、private名字无重复仅为预检。最终类型相同及axioms必须fresh验。
- `ZeroBoundaryLogBoxes/Endpoints.lean`、16个四端点`EndpointData`块及`AllEndpoints.lean`：1..64完整原端点候选，未启动。
- `Resonance.lean`/`ResonancePilots.lean`：有理幂恒等式→带符号log指数吸收及±6预算候选，未启动。
- `Denominator.lean`：一项级数给统一log q>1/2候选，未启动。
- 单独的M64/LogBoxes/Separation审计入口有些未运行；已接受目标以三份acceptance的准确root列表为准，不能按文件存在外推。

## 下一项可执行检查

先由runtime复查可用物理内存、commit、D盘余量和他人任务。15:24空闲物理仅1.768GiB且没有可见Lean jobs；重根安全门槛不满足，未关闭用户程序。主线i≥4883的关键root先行。

1. 若资源恢复，按现有统一控制器编`CriticalHeightBundle.lean`，保留M3132/树WS1536、启动物理≥2560/运行余量900、commit≥4096、2CPU/单锁/Idle。这是新源，不能以旧高度接受替代。逐个复核旧最终i28/31/34高度声明及完整axioms。
2. bundle通过后，只在本轮`M64/Height.lean`将历史Final进口改为本轮bundle；编`HeightAudit.lean`，完整typed M64 28根与三个原题有界log消费者都需fresh检查。若bundle资源/作用域失败，按4–8文件组或常规逐源回退，不自动提cap。
3. 验`Endpoints.lean`后先一个四端点组，观察内核资源，再走全部16组与`AllEndpoints`；仍是finite log接口，非完整指标。
4. 之后才包55素数对/2519互素比例（138545位置）的原字节证书，复核共振吸收、所有比例覆盖，再接原`n<10^25`候选和终端数据。旧i11的w10 CRT消费者不能直接改为w33。禁止巨大上界暴力扫描。

运行入口`build-root.ps1`仅调用runtime单队列，跨root只按成功receipt/source/object hash精确复用到本task对象根。最后root须新编译。`audit-build.ps1 -CurrentRunRoots`审核目标完整传递axioms且核全部依赖/对象/日志；旧#guard_msgs抑制的辅助stdout不代替目标输出。细节、失败分类和来源见[REPORT](REPORT.md)、[最终源码清单](final-source-inventory.json)。
