# HANDOFF — A-CYCLOTOMIC-ADJACENT-20260915

## 实际状态
本轮新推导和新算术接收已完成；R7/58不变，i14保留。不存在未完成的后台任务。旧系统错误运行未计完成。

优先阅读REPORT.md、notes/PROOFS.md、SOURCE_ADOPTION.md、FAILURE_BOUNDARIES.md。原件inputs/A-rough-base-repdigits-original.zip只保留一次、字节不变。不要重跑历史content、A14局部块、C31或A9末端。

## 可消费的准确新接口
S：400|n且完整S25(n)^26≤n^21 ⇒ 全部合法j Common9。依赖F/U。
CY：B≥11、gcd(B,10)=1，m∉{1,2,4} ⇒ S25(Φ_m(B))^4≤Φ_m(B)。完全初等无限分类，不能遗漏异常4。
CP：N=C B^e∏Φ_m(B)^u_m，1≤C<B，e≥0，u有限支撑；E=u1+u2+2u4，G=Σ其他φ(m)u_m。若210E+200≤840e+551G，则S25(N)^26<N^21；最终400整除给全行。多个不同基数的合格N及任意与10互素的正乘数封闭。
A+：n=X^h(X+1)，X,h≥1，400|n，h mod6∈{0,1,4,5} ⇒ 全行。
A−：n=X^h(X−1)，X≥2，h≥1，400|n，h mod6∈{1,5} ⇒ 全行。
A±额外使用P/L/QX的全行形式；不是从α条件T2跨域。

## 仍无界
一般α的a,b、g及粗支持未限。CP固定E只限因式分解形状，B,C仍无界，不能作为全局有限候选集。A+剩h≡2、3；没有保持NC9且严格减小n的下降。

下一便宜判别点：对h≡2、3，完整3/7最大位置要求能否与n−2、n−4、n−7的粗素数分配在同一个n,j上形成不相容；先检验真实整数约束，不再只加模7精度。h14有逐层可提升单根，本轮给出真实(3,1)整数族但共同素数11成立，所以不能作为反例。也可放下圆分表示；任意整数可作低阶异常表示，单纯增加阶数表不会逼迫一般源进入CP。

## 运行
python3 code/reproduce.py
python3 code/reproduce.py --output /absolute/separate/output
python3 code/fiber_bounds.py --E 13

第一条重放本轮义务、损坏测试、有限诊断及输入字节核对；不跑发现搜索或历史数学。第二条不更改发布成员。无限证明仍在notes/PROOFS.md，不是程序已Lean化。
