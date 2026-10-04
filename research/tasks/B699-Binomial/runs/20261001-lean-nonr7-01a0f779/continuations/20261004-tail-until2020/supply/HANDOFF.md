# A：接续至20:20的冻结源

负责人 `/root/tail90_implementation`，复杂既定路线Lean实现，Sol6.1/xhigh；只写本段supply。原基线 `1c2987754a4a0ae7126cce9cae8993ce6c50af6b`，同分支 `huan/b699-lean-next-20261002-01a0f779`。开始11:49:12UTC，原绝对hard12:20:00；原proofStop12:08:00，后Root在同一原hard内改为12:11:00，未延长用户截止。旧90分钟普通文件和数学源全部原字节保留。

本轮启动正式全集 `{1,2,11,29}∪[35,10000]`。先复用旧 `Extra10001Legacy.lean` 和S旧准确literal，零新增prime；再完整15000候选。主消费者保留全部Nat n/i/j，`4883≤i≤K`、`i<j≤n/2`，同实际Prime p≥i双完整choose，无额外数学输入。R7、低23与无界Gap不动。

## 15000最小供应与源冻结

- `prepare.py` 只在本段写源、拒绝覆盖、有proofStop；精确试除的divisor范围升到9000，并拒绝任何n≥9000²，覆盖新末61.44M，不重放旧7000范围的生成器。
- `candidates.json` 140492B，按字段解析，不dump。26块 `RatioBlock000..025`，首25块各64prime，末63，共1663个新prime；新末61439401≥4095×15000=61425000。Python准备0.1654286秒只是candidate，不是kernel证据。
- seed40956329准确复用旧 `B699TailNinety20261004.RatioBlock044.prime48`；新modern块复用旧RatioCore及NormNum.Prime，所有原literal整数edge4095q≤4096p。根、module、bytes和SHA逐项在metadata。
- `Tail15000Legacy.lean` 复用已接受 `tail_chain_10000`，经26个trans接新链；调用已接受 `common_of_ratio_tail_endpoint`，三个新根是 `B699TailUntil202020261004.tail_chain_15000/common_upto_15000/complete_15000`。

11:54:49UTC全部27个数学源ready回执已给C/S/Root并冻结；没有在ready spec追加targets或改数学source。C按同pipeline先10001再26块和完整15000，S新literal独立编写。没有新增Gap、新模型或研究路线，不本机Lean/CI/commit/push。源审/Python/CI成功/具名接受保持分开。

## 成本门控与接受

实际协调耗时后，Root于12:00:39决策改完整目标13000，并明确新freeze，latestStart12:03:00、proofStop12:11:00、hard仍12:20:00。A收到请求后即写 `Tail13000Legacy.lean` 和 `candidate13000.json`，实际ready12:03:20（比新latest晚20秒，如实保留，不自动延时）；新准入由Root/C门控。数学源再次冻结。只用原26块的前17块000..016，1088新prime、末53399837≥4095×13000；没有改任何原块或15000候选源。

13000消费者inline旧10000链与17trans，只有 `B699TailUntil202020261004.common_upto_13000/complete_13000` 两根；source2961B/SHA6f67a5979a1f7fedfd3403b21673063eaf1b71a22168e7ffa9d7092516e5b8cd。source/module/root metadata齐，S另写single+[4883,13000]准确literal；C先10001后13000。15000保持未验候选，原metadata中K15000不能当本轮执行/接受目标。预期13000完整成功相对启动10000新增3000指标，无界更大i和Gap仍开。

按前轮C实际首64 compiler9.7s+checker8.2s，26块约465秒只是prime块基线；10001、consumer、literal、cache/恢复和queue另占时间。A于11:58:44回执提醒实际runner至少约9分钟余量才宜整个15000；不据8分钟prime块总量承诺完成。若C实测不够，须Root明确新freeze才改完整较小K，不能在已ready spec临时追加/替换target。

接受依C实际source/object/raw/传递AX白名单/normalchecker和S准确原题single+[4883,K]签件。本轮截至这个准备记录没有新数值求证、memory或recursion复杂度失败；以后如出现必须保留准确命题/阶段/log/资源，冻结重试报Root。无界Dusart解析供应未形式化属于已有来源/形式化缺口，不能标为本轮kernel慢。

首10001成功单独交S，不等待15000；完整15000若未在proofStop实际闭合，保留pending，不从partial prime块推断完整指标。预期成功可消去[10001,15000]的全部合法n/j，仍留下更大i的低比例i/n/j、无界Gap y及低23/R7。

上轮深解析来源的准确后续接口与未知成本，直接引用冻结 `../20261004-tail-ninetymin/supply/DUSART-DEPENDENCIES.md`，不重复其未供来源核对或改原件。当前本机Lean0；真实runner资源由C记录，A不假定主机内存或以前CI峰值就是新runner预算。
