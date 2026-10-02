# 三源实际窗口对数链独立技术复核

核验者：`runtime_review`，2026-10-01 14:33 UTC。AI技术审查，不是第二内核或人工同行复审。

接受 `critical/WindowLog/{Elementary,Window,Actual}.lean` 的9个已打印公开根，证据入口 `critical/verification/20261001T142900Z-window/acceptance.json`。Elementary的两个实数基础根已有单独复核；本复核补充Nat窗口和实际幂分解连接。

关键准确声明：当 `n>4096`、自然数偏移 `a,b<34` 且 `a≠b`，两窗口log差非零，绝对值至多 `33/(n-33)` 且严格小于 `128/n`。证明先以正区间上的log单射处理非零，再由共同正下端点 `n-33` 和距离≤33得到上界；每个Nat减法转换在 `a,b≤n` 下进行，没有偷偷把截断减法变为普通减法。

Actual根对自然数 `A,C≥1`、素数p,q及**未截断**的自然数指数x,y，采用两个完整乘法等式 `n=A p^x+a=C q^y+b`。它真实推导

`L=log A-log C+x log p-y log q=log(n-a)-log(n-b)`，

继而得到 `0<|L|≤33/(n-33)` 和 `|L|<128/n`。等式、正性与非零/上界都在证明体中得到；没有把这些结论作为消费者前提。支持x/y=0和p=q，只要其他显式假设可满足。该工具不声明p-adic最大指数或p≥i；下游仍必须从原题noCommon状态构造所需真实分解并证明有关界。它保留给定的全部幂，不能代替该结构义务。

三个源SHA256依次为 `d23cd5fbf4a639a144bc7fddf42e81ebfe7421290c1c7183498e60da659d97d0`、`35d7557d2329af2c17444b63cc47c60bbbf6619f05a5c6a0ebe1290cbbade1b0`、`e4f5329a06aed12d6ac93585ac7de84f9591349d23834bcf5fcab85813ceb11a`。独立逐源核对当前源、原字节snapshot、object、stdout、stderr、receipt的6项hash绑定全部通过；源前后不变，每源真实exit0、Native0x2030、committed限额0。完整公开类型与9个传递公理输出均已审读，全部仅 `propext,Classical.choice,Quot.sound`；拒绝式审计另有fresh exit0。没有placeholder或额外项目axiom。

Lean4.33.1、固定9包pins；M3132、WS1536、单线程/2CPU/低优先级、物理/commit预检与本轮截止维持。研究对象root优先加入LEAN_PATH以消除research前缀shadow，完整字节副本及实际读取根由receipt记录。

完整原题指标新增 **0**。n仍无上界，A,C,p,q,x,y没有由此获得NoCommon结构限制；未连接M64分离、高度排除、有限n剩余区和最终二项式共同素数见证。特别是i=28,31,34的原题全域尚未因此闭合，p=i边界也没有在这些不含i的工具根中被检验或排除。此接受只标识真实窗口对数前置已可复用。
