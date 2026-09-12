# 实际正窗口到线性对数式：候选交付

Owner `/root/zero_log_separation`，Astra/max。独占本目录，开始 2026-09-12 10:53:39 UTC，20分钟检查点11:13:39 UTC；无总时限。仅运行小型精确 Python 诊断与静态检查，Lean / Git / 完整证书扫描 / CF 搜索调用均为0。

**已准备三个 Lean 源文件、8个定理和1个公开定义，共9个完整类型及公理打印入口；尚无 Lean 验收。** 最终消费者没有留下 L≠0 或局部 log 上界假设。当前原题接受指标增量为0；本包只补充前一距离层需要的实际窗口接口。

## 实际结论与来源对应

全部参数为自然数。假设

`4096<n`，`a,b<34`，`a≠b`，`1≤A,C`，p,q为素数，

`n=A*p^x+a`，`n=C*q^y+b`。

源码中 L 的准确表达式是

`Real.log A − Real.log C + (x:Real)*Real.log p − (y:Real)*Real.log q`。

[Actual.lean](Actual.lean) 的 `actual_linear_form_eq` 给

`L=Real.log ((n-a:Nat):Real) − Real.log ((n-b:Nat):Real)`。

`actual_linear_form_bounds` 的最终公开类型直接展开 L，并同时给

`0<|L|`，`|L|≤33/((n:Real)−33)`，`|L|<128/(n:Real)`。

这里 x,y 为输入实际分解的完整自然数指数，没有改为任意截断幂。新 noCommon 到实际窗口和完整指数的来源仍由后继原题消费者提供。本接口不需要 A,C≤64、p≠q、x,y>0；原题提供的更强条件可以直接传入，不改变恒等式。零指数的合法性已纳入诊断。

## 证明分层

1. [Elementary.lean](Elementary.lean)，2根。对正实数u,v，用 `Real.log_div` 和 `Real.log_le_sub_one_of_pos` 证明 `log u−log v≤(u−v)/v`。分别交换u,v，再用共同正下界lower及 `|u−v|≤D` 得 `|logu−logv|≤D/lower`。D≥0由距离假设推出，没有额外未证输入。
2. [Window.lean](Window.lean)，3根。n>33、a,b≤33 给两个自然窗口为正，共同实数下界n−33为正；所有 `Nat.cast_sub` 均先证明偏移≤n。窗口差≤33直接来自自然偏移范围。正域 `Real.log_injOn_pos` 和a≠b给非零。最后严格有理比较 `33/(n−33)<128/n` 由n>4096交叉相乘证明。
3. [Actual.lean](Actual.lean)，4根含公开定义。实际自然等式先给 `n−a=A*p^x`，再以正系数、正底数满足 `Real.log_mul` 的非零条件，以 `Real.log_pow` 展开完整指数。两窗口展开后用环恒等式恢复准确L，再直接消费第二层的三项界。

非零来源是a≠b与正窗口，未以p≠q或所谓log独立性替代。没有使用 `Real.log_eq_zero` 在全部实数上的特殊0/−1分支；本论证只在严格正域使用单射。两个方向一起由对称不等式处理，不依赖a<b或b<a。

## 已执行的检查

`C:/Python314/python.exe -B <本目录>/diagnose.py` 返回exit0；精确计算和静态扫描约0.007秒。只检查以下5个固定实际窗口，无实数log数值近似：

| n | (a,b) | (A,p,x) | (C,q,y) | 目的 |
|---|---|---|---|---|
|4374|(22,0)|(17,2,8)|(2,3,7)|负log差|
|4374|(0,22)|(2,3,7)|(17,2,8)|正log差|
|4097|(33,0)|(127,2,5)|(241,17,1)|最大负位移|
|4097|(0,33)|(241,17,1)|(127,2,5)|最大正位移|
|4097|(0,1)|(4097,2,0)|(4096,3,0)|两个指数均0|

逐例精确核对素性、两条自然幂等式、正窗口与非零差、有理乘法比恒等式，以及 `|u−v|/min(u,v)≤33/(n−33)<128/n`。这验证输入转录和边界，不证明通用实数log结论；通用结论仍须Lean检查。

边界控制保留：相同偏移时窗口比为1，非零前提确实失败；n=10,a=20,b=21时两个自然减法均截断为0，说明偏移不同不能替代正窗口证明；33/(n−33)<128/n在n=44失败、n=45成立，当前n>4096有充分裕量，未宣称4096为最小阈值。

全部9个公开根均有完整 `#check (name : type)` 和 `#print axioms name`，静态检查未发现 placeholder / 新 axiom / native_decide。类型检查的执行结果和实际传递公理列表目前均未取得。

[audit_axioms.py](audit_axioms.py) 为后续真实Lean输出提供拒绝式审计：要求非空输出、9根齐全、无编译error，且传递公理只在标准三项 `propext, Classical.choice, Quot.sound` 内。解析器已用明确标为合成文本的自测验证：有效9根文本接受，空文本、漏最后一根、sorryAx、其他公理、编译error均拒绝。见 [audit-parser-self-test.json](audit-parser-self-test.json)；这不是任何Lean证明的接受收据。实际运行还必须另查全部编译退出码为0。

## 来源、修订和交接

准确输入、mathlib pin、资源观察、源码SHA与根列表见 [record.json](record.json)。mathlib `Log/Basic.lean` 是本包实际采用的初等API来源，未导入Matveev、PNT或log级数盒；旧零边界 `reduction-plan.md` 用于目标和常数对照。窗口到L的这一层不依赖旧55对数值表。

写候选时将未核准的API记忆 `Nat.sub_pos_iff_lt` 改为当前mathlib源码实际出现的 `Nat.sub_pos_of_lt`；发生在任何编译前，没有失败Lean日志。没有数学失败或已知缺失引理；剩余不确定性是源码实际elaboration和内核验收，不能据静态复核预判通过。

建议集成目录 `lean/ZeroBoundaryWindowLog`，namespace `Math.B699.ZeroBoundaryWindowLog`。当前imports使用本实验真实路径，可直接形成三源闭包；迁移后需刷新来源哈希并重新验收。串行顺序为 Elementary → Window → Actual，全部9根都需检查。最后可用 `audit_axioms.py <三个实际日志> --output <新的审计结果路径>`，空/缺根输出必须失败。

交接后可将最终消费者输出的非零与局部上界接入前一包的非共振、共振及X=0小分支。原题noCommon到正窗口、指数高度、全部55对/138545位置覆盖、终端原题消费者仍为独立义务；本包没有替代这些工作。