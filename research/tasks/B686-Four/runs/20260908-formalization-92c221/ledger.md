# B686 形式化实施账本

基线 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`；采用 `20260908-lcm-distance-7cab35e` 与 `20260908-reflected-sum-9bad0b9` 在此基线的完整报告/源码/验收。记 P(k,t)=∏_{i=1}^k(t+i)，原解假设 H 为 k,n,m∈ℕ，k≥2，n+k≤m，P(k,m)=4P(k,n)；d=m−n，S=m+n+k+1。以下常数界均保留严格不等号。

| ID / 最终数学消费者 | 来源与精确声明 | 已有入口 / 仍缺步骤 | 分类 / 本次状态 |
|---|---|---|---|
| F686-00 全长度距离界 | lcm-distance/uniform/Consumer.lean：H ⇒ k²<64d | 原题消费者及11源闭包已存在；本次只复用、纳入新消费者闭包验证 | 已闭合，禁止重复实现 |
| F686-01 非素数幂和及固定余因子界 | reflected-sum/main/SumPrimePowerExclusion.lean、SumCofactorBounds.lean：∀prime p,a∈ℕ，H⇒S≠p^a；B=S/p^v_p(S)⇒k≤10B,S,m<200B³ | 全p核心与原题消费者已存在 | 已闭合，复用 |
| F686-02 两倍素数幂和排除 | reflected-sum/main/sum-structure-theorems.md §4，a/sum-cofactor-and-twice-prime-power-audit.md：∀prime p,a∈ℕ，H⇒S≠2p^a | ReflectedPrimePower高接触、ReflectedGeometry窗口与k5/S50尾；补高低分支及p=2/a=0，接原题最终消费者 | 1 已完整Lean闭合；fresh 20260908T093042Z |
| F686-03 全p距离余因子界 | reflected-sum/main/all-prime-power-balance.md、a/all-prime-distance-independent-audit.md：k≥3,H,p prime,a=v_p(d),B=d/p^a（包括p∤d）⇒p^(2a)<12k²d,d<12B²k²,m<16B²k³ | SizeBounds及反射ValGE工具可用；完整距离高位置存在、单位性、平方接触及原题消费者均已实现 | 1 已完整Lean闭合；fresh 20260908T093810Z |
| F686-04 两粗位置长度界 | reflected-sum/b/sum-two-position-norm-audit.md：H,k≥5，A=∏_{p≤k}p^v_p(S)，所有p>k,p∣S只命中至多两个下段位置⇒k≤60A²，Even A⇒k≤15A² | SumTwoPositionGap.reflected_factor_contact_bounds仅证书终结器；缺实际光滑部分、完整互素粗分组、组平方接触 | 1 完整support消费者已通过fresh 20260908T094325Z（6源依赖闭包）；不再需要调用者因子/接触证书 |
| F686-05 全偶数高度界 | lcm-distance/next-route-a/centered-runge-bound.md §1–5；paper-acceptance/centered-review.md：H,Even k⇒n<16·2^(4k)·k^(k/2+1)，n+k<20·2^(4k)·k^(k/2+1) | Round3TwoScaleGap；缺任意k整数截断、非零余项、加权误差界及原题桥 | 1 完整Lean闭合；10源fresh与10声明公理guard通过，verification/centered/20260908T095933132002Z |
| F686-06 4整除长度高度界 | lcm-distance/next-route-a/quarter-runge-bound.md §1–6；paper-acceptance/quarter-review.md：k=4s≥4,n<m,P(k,m)=4P(k,n)⇒n<2^s k^(s+1)，n+k<2^(s+1)k^(s+1) | 实际整数q、真实半平面分支、两矩形Cauchy跳跃公式、割线换元、误差正性/严格递减/显式界及整数间隙均已证明；lean/quarter/Consumer.lean 保留完整原题域 | 1 完整Lean闭合；23源fresh及18项传递公理guard通过，verification/quarter/20260908T114117928142Z；负向guard实际拒绝，详见notes/quarter/acceptance.md |
| F686-07 超多项式高度 / 采样路线 | reflected-sum/main/prime-synchronization-theorem.md：∀δ∈(0,1/2),∃K,∀H,k≥K⇒log m>(log(2k))^(3/2−δ)；从而∀C>0只有有限多m≤k^C的原解，且∀η>0最终k<exp((log m)^(2/3+η)) | 已有从H的固定光滑采样误差下界；HeightAssembly和HeightCorollaries已将精确、未证明的FixedTestSamplingEstimate接成全部三项完整量词消费者。MRSTT原定理、C³范数接口与固定函数特化仍缺 | 3 外部解析数论依赖仍开放；全部下游条件消费者已通过17源fresh、3guards，verification/sampling/20260908T105855Z；不以条件结果关闭此项 |

分类：1=纸面完整主要缺Lean；2=纸面尚有数学义务；3=未形式化外部定理或大型基础理论。状态不随合并或其他文件编译自动升级。每项验收：完整量词源码对照、实际最终消费者、新输出目录项目依赖闭包编译、可失败传递公理检查、精确源码哈希和日志。条件消费者保留为中间成果，不能关闭完整条目。

进一步接续审查：固定短间隙归约、距离中心两位置多项式高度、canonical支持密度推论逐项核对其当前接受范围后补记；不会静默遗漏。诊断性的真实矩系数高度障碍、被否定的低阶模板、未采用的加权素数估计与探索草稿不作为本次数学目标。

写入归属：主线程 owns 本批README/ledger/frontier、lean/reflected/、lean/distance/、lean/sampling/、quarter/RectangleCauchy.lean与JumpIntegral.lean及其笔记/验证和最终整合；Astra centered拥有lean/centered/以及quarter其余文件；Astra bounds在B677 finite长编译期间独立承担lean/canonical/density/及其笔记/验证；Luna external仅拥有canonical/vendor与Provider.lean及对应来源/兼容证据。固定源及历史报告只读。无全题数学完成或新颖性声明。

## 全文复核后追加的已采用纸面目标

F686-08（1，完整Lean闭合）：reflected-sum/b/cofactor-structure-and-pell.md §§5–6及a/offline-audit-and-smooth-part-checkpoint.md的实际距离粗支持二位置界。A为d的k-smooth部分：
- k=2r≥4、粗支持只命中r,r+1⇒d<8A³k³、3m<32A³k⁴。
- k≥40、两位置i<j、h=j−i，H_l=∑_{a≠l}1/(a−l)=p_l/q_l最简(q_l>0)：d<324q_iq_jA⁵k⁴、m<432q_iq_jA⁵k⁵，q_l≤k^{|k+1−2l|}。
- i+j=k+1、固定h≥1,k≥40⇒d<16qA³k²≤16A³k^{h+2}、3m<64qA³k³≤64A³k^{h+3}。
初始缺口为根处模立方展开、调和系数、完整因子组、辅助式非零/高度；本批已经补齐，并接到原题粗素数完整平方接触。中心相邻的完整原题消费者已通过fresh 20260908T100510Z（含完整项目依赖闭包与guard）；对每个完整粗素数幂直接证立方整除同一G=rR_rR_{r+1}−4d²，可避免一般调和分母和显式两组余因子。一般两位置原常数界已通过fresh 20260908T103044Z；完整分母指数与对称间距消费者已通过fresh verification/20260908T103810Z（2最终声明guard）。所有F686-08数学子项均已完整闭合。Pell放松反例属于诊断不作为新目标。

F686-09（1，完整Lean闭合）：当前已采用的必要条件为∀k≥2,n≥0,m≥n+k，P(k,m)=4P(k,n)⇒m≥n+k+8。采用最新统一界k²<64d，h=d−k≤7迫使k≤70；既有2≤k≤21的160项符号证书与本批22≤k≤70的392项证书覆盖全部k和h。每项由严格单调性将全部自然数n归约到相邻cutoff的内核整数比较；不是有界n实验。最终消费者lean/shortgap/Consumer.lean，fresh verification/20260908T120354Z通过14源、3guards；独审reviews/shortgap-independent-review.md。旧Sylvester–Schur/MS删项路线保留为来源对照，已不在此消费者的依赖中。完整Sylvester–Schur乘积定理也已独立移植、fresh通过，但不是本项验收的额外前提。

F686-10（1，完整Lean闭合）：canonical支持密度1/4、1/8均是渐近尾部命题：∀ε>0,∃K,∀原解且k≥K，偶数k给support/k²≤1/4+ε，4∣k给≤1/8+ε。存在实际从原题构造的系统版本，也有对每个有效SystemInput的版本；不是每个有限k的精确比例界。矩阵源来自aff1d30b3b1c6bd705810fa4d588b03940fb31df（MIT分发），已抽取实际声明依赖闭包并在固定v4.33.1移植、完整编译、公理核验；lean/canonical/Provider.lean从原题返回完整SystemInput，没有系统存在性附加前提。原题→canonical系统→(support+1)!≤P_k(n)≤(n+k)^k→已验Runge高度→统一渐近估计已完整接通。1/4验收verification/canonical/density/20260908T113015661794Z（18源、5guards）；1/8验收20260908T114721436330Z（36源、2guards）。来源、许可、API兼容改动及失败聚合探针均保留；独审reviews/density-primary-review.md。proper-support/jet非公共零属于继续原题无解路线的开放数学义务，并非密度定理缺失前提。

F686-11（1，完整Lean闭合）：∀固定h∈ℕ，令B(h)=max(293,h+8,p_{floor((4h+7)/3)+1}−1)（p_j为1起始第j个素数）。对全部k≥2,n≥0及P(k,n+k+h)=4P(k,n)，2k+h≤B(h)、k≤floor((B(h)−h)/2)、n<B(h)²；满足原式与m=n+k+h的全三元组集合有限。lean/shortgap/FixedGap.lean保留旧精确常数和全部h。新证明由初等素数间距给B≥293、B≥4h+2，再用k²<64(k+h)推出2k+h≤B；无需旧MS/Laishram–Shorey大素因子计数。fresh verification/20260908T120826Z通过13源、3guards；独审reviews/fixedgap-independent-review.md。旧外部路线未被伪装成已形式化，而是明确由已证明路线替代。

最终状态：F686-00、01为核验复用；02、03、04、05、06、08、09、10、11均完整闭合。F686-07的下游条件消费者完成，完整无条件目标仍受MRSTT估计及其特化阻塞。全部清单未关闭，不称“全部完成”。精确接口、命令、失败记录和恢复条件见report.md与verification/README.md。
