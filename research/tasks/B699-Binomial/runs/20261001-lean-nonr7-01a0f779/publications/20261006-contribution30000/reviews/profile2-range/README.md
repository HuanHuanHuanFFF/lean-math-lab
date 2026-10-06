# 中高段诊断原字节

run `37510369566` / source `8360757b00251833539fbbbd50c4da564fdc2400`，manifest `413ea094431b20fe7556ea37de5fae2c5cc43e142afa3a2e94dc4819892ac10c`，只执行五份明确选择的诊断。原件481,581字节及逐文件SHA见 `RETAINED-EVIDENCE.json`，大型生命周期JSON不直接dump；上层 `PROFILE2-RANGE-INDEPENDENT-DIAGNOSIS.json` 给出限定摘要。

Middle Prelude sourcecompile0，约11.61秒。最后1/16个segment分别在88.91/88.42秒exit137，Docker实际OOMKilled=true、已观察oom_kill=1、peak到14,227,079,168 / 14,495,514,624字节实际hard cap；没有supervisor kill，不是180秒超时。这确认容器OOM，不推出host总物理RAM不足或数学反例。后续须改变decoder/validation工作量，不能原样重试或任意升cap，也不能从1/16线性外推全部687段。

High Prelude exit1、约60.06秒，实际错误为缺失 `N7.elementary_primeCounting_bound`，OOMKilled=false。完整原F整数与11085阶乘的独立算术检查sourcecompile0，约4.215秒；它不证明122879557的素性、整个sieve或原题范围。

五份source/helpers/scripts/logs/objects及实际guard、GNU timer、容器配置、自有CID清理均独立绑定。峰值/CPU仍只称已观察样本。原题新源码接受仍只有Small的`{1,2}`；完整S未接受。
