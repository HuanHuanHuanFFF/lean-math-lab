# 小批扩展计划

此计划未执行，未生成完整4k Lean链。最先接受固定 `ChainCore/Pilot32/PilotConsumer`，保实际编译及checker时间、峰值内存和对象大小，再以当前截止点判断是否可继续；不能把源级literal对应当primality通过。

准备的生成器支持 `-Mode Batch -StartNode 0 -NodeCount 32`：只把固定旧chain给定literal抽稀序列中的指定32节点写成一个可独立编译的Batch文件与输入映射。下一批从 `StartNode=31` 开始与前批共享准确端点，依次增加31。`NodeCount`可选2–128；扩大批量需要runtime按代表性峰值重新判定。先32真实成本，再比较64/128小块是否值得；没有本轮真实cost就不执行扩展。

每批本轮Lean义务：全部actual Nat.Prime、严格forward、相邻差≤4883、构造的PrimeChain。每批独立statement/source/hash/actualargv/exit/std3/rawlog和checker要绑定；各批已验不自动构成全finite。要解除有限前提，还须将全部block共享端点拼成2到20000093的完整链，独立证明对所有2≤n≤20M的严格近顶供应，并连接SparseTerminal的真实原题消费者。若采用旧闭包则OldFiniteTerminal较短，无需强FiniteTopSupply。

原题端点与量词：有限原题消费者保p≥i（p=i允许）、完整choose、i≥4883、所有i<j≤n/2；有限供应保p≤n且严格n<p+4883，终端保唯一Gap(4095,10^7)输入。任何局部批次或有限消费都不解决全y≥10^7 Gap，不增加完整指标计数。10:19停止新路线、10:21数学源冻结、10:25:29 UTC硬停；下一轮仍从问题OVERVIEW及本轮记录接续。

## 若NormNum小块成本过高

未执行的已有方法备选：旧 `lean/extension/PrimePrimorial.lean` 的 `primorialPrimeCheck_sound` 使用完整 `BasisComplete 4473 basis4473`、已验产品literal `basis4473_prod_eq`，由 `2≤p<4473²` 与 `gcd(p,primorial4473)=1` 供应actual Nat.Prime；小于4473的分支用旧小数checker。旧 `primorialChainCheck_sound` 再供相同严格Chain构造。旧228块42.9分钟数据来自该gcd反射法，不可直接当NormNum成本；抽稀4k也不可先假定成本线性或可闭合。

源级边界已定位：PrimePrimorial约2.8KiB、PrimeBasis约1.9KiB、PrimorialData约2.6KiB；现有PrimePrimorial通过旧PrimeChain引入较宽旧binomial闭包。若转移到本轮现代ChainCore，需要保数学body对应、实际BasisComplete与P产品供给，并对新导入/类型产生独立接受。最小判别仍是同32旧给定高端节点的实际boolean/gcd kernel检查；如果通过，再按实测量选择小批，不能从旧作者label或历史object记录跳到本轮接受。此备选尚未写新Lean，也未分派执行。
