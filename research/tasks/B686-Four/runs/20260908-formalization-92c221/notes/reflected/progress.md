# 原题结构链的实施检查点

采用源基线08a8ac6872e8abfd4a2c480496da350a97ecdc13的reflected-sum批完整报告和审查。所有工作源码放本批lean/reflected，历史源未改。

- `TwicePrimePower.lean`：原题H+prime p+S=2p^a ⇒False，全自然指数（含0）和p=2。高分支复用全p核心，分割p=3/5两种真实系数后用小整数t；低分支由偶S迫d≥k+1，得到S>k(k+1)，只余已核k=5/S=50尾。最终fresh验证`research/shared/20260909-formalization-environment/runs/20260908T093042Z/evidence.json`成功。首次编译仅两处`subst p`选中了另一等式，未完成证明按失败保存；修正为明确数字化简后通过，没有改量词或增加假设。
- `DistancePrimePower.lean`：k≥3,H,任意prime p⇒(p^v_p(d))²<12k²d；直接B=d/p^v_p(d)⇒d<12B²k²,m<16B²k³。高位置由原乘积≡4≠1推出、其余因子为单位；真实R=3(n+i)−d>0，得到平方接触；高低分支均保留p=2/3。fresh验证`research/shared/20260909-formalization-environment/runs/20260908T093810Z/evidence.json`成功。初版失败属于Nat/Int/Rat cast和lemma名修复；没有数学改判。
- `TwoPositionSupport.lean`：实际S的完整k-smooth部分A与“每个粗素因子命中i或j”条件，推出k≤60A²，Even A⇒k≤15A²。从完整素数分解构造两组，允许i=j/空组；每个平方幂从原题high接口推出，经两两互素合并。因此没有把因子组等式或平方接触留作额外前提。fresh 20260908T094325Z完整6源闭包通过。

每条最终根都有可失败的传递公理guard，允许的公理只有propext、Classical.choice、Quot.sound。新结果只把原已审纸面结论接成Lean，未宣称新增数学排除范围或创新。独立审查尚待协调；不能把主线程自检当独审。

日常编译曾使用.tools/compile-reflected.py（本会话生成、只用于迭代，重用本会话已经新编的未变依赖）。最终验收使用fresh-root.py，重新编译完整项目闭包并保存命令、源码哈希、pins与日志。历史项目olean从未作为当前成功证据。
