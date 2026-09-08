# B677 形式化实施账本

基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`；采用 `20260908-interval-lcm-f0a6539/explorer/complete-proof.md`、`review/mathematical-review.md`、实际正式源及验收。M(n,k)=lcm(n+1,…,n+k)，H：n,m,k∈ℕ,k>0,n+k≤m。跨题复用B686 lcm-distance批的固定源。

| ID / 最终结论与量词 | 已有依赖、精确缺口与来源 | 分类 / 状态 / 验收 |
|---|---|---|
| F677-00 差值LCM整除、后段素数见证排除 | Math/B677/IntervalLcm.lean及Tests/Examples完整 | 已闭合，复验复用 |
| F677-01 初等有限化桥 | ∀H,2≤k,M(n,k)=M(m,k)⇒m+1<4(n+k)；d≤8k⇒m<1466k；n≤369k⇒m<1480k。paper §§3–5 | 1 已闭合初等消费者；fresh 20260908T093438980811Z通过11源闭包、12新guard；利用既有更强一阶乘LCM压缩给m<1032k，保留原1466/1480结果。旧半阶乘与exp估计已不在采用证明链，未重复实现 |
| F677-02 原有限全覆盖 | ∀H,m<89693⇒M(n,k)≠M(m,k)。paper §7及primary/finite_check.py；已有精确Python覆盖全部输入，最大所需k=71 | 1 完整Lean闭合；全部71长度×89693起点的模表示和确定性代表元证书由内核核验，k≥72由1372素数链覆盖。792项目源全新编译、最终guard及源码/依赖/对象/日志完整性核对成功；verification/finite/20260908T105847632428Z/evidence.json，notes/finite/acceptance.md。没有m+k<89693附加限制 |
| F677-03 大参数素数见证 | ∀实数x≥89693,∃prime p,x<p≤x(1+1/(log x)^3)（Dusart Prop5.4），另需(log89693)^3>1480严格常数及原题后段见证桥 | 3 外部定理未Lean；已核验固定mathlib/公开复用无可直接用的定理；主线程已实现精确(log89693)^3>1480及仅显式依赖Dusart的完整原题有限化桥，fresh verification/20260908T101901Z成功（2guards）。数学上无条件，不等于Lean无公理证明；不改成新公理 |
| F677-04 两个完整无限区域排除 | ∀H,(m−n≤8k ∨ n≤369k)⇒M(n,k)≠M(m,k)，paper §§4–8 | 依赖01+02已完整闭合；03仅外部Dusart仍缺。lean/analytic/RegionConsumer.lean已把全部依赖接通，保持并集、全n,m,k及k=1边界；显式只依赖Dusart的完整条件消费者通过verification/analytic/20260908T130158Z。无条件目标仍开放（3），不以条件定理关闭 |

用户未设截止，以验证或精确阻塞为检查点。原题剩余全无界范围不因形式化基础引理而缩小。本批README、账本、最终消费者归主线程；bounds拥有lean/bounds/ notes/bounds/ verification/bounds/；其他区域由主线程协调。保留历史原始证据，另存本批源码与实际验证。
