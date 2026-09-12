# 来源、量词与新增依赖

## 唯一调度输入

`B699-R7-ABD-task-pack-20260912-v2(1).zip`
SHA-256：`d5ab7315bd55fe36af9d88a95011836791e1260ca8f38e21d5d2e71271864f07`。
已读取 START_HERE.md、context/D_PREVIOUS_B_INTAKE.md、tasks/PRO-B.md；调度文字不放入本结果ZIP。启动包自身的12项哈希清单已经核验。采用的是v2，不是旧q³任务。

三个数学原包按原字节复制在 sources/originals/，大小及SHA见 sources/INTAKE.json；本轮不重跑历史大枚举。

|原包|采用内容|未采用／不升级|
|---|---|---|
|D-previous-B-task.zip|REPORT/HANDOFF、PROOFS、MINIMAL_INTERFACE、FAILURES：确认单侧任意纯素数幂及a≤21闭合；采用规范外侧商的原题映射|实际作者是D的误接任务补交，原署名不改，不当作本轮成果。旧有限证书不重跑|
|PRO-D.zip|REPORT/HANDOFF、PROOFS §1：完整素数幂投影、λ/μ；既有C分配和平方根行界用于对比|不调用一般ℓ=3的C₀>1、Pell/对数深证明；不把上游作者双实现当Lean|
|PRO-B.zip|REPORT/HANDOFF、PROOFS：双侧F、平方/素数幂范围对齐|旧β阈值、平方行排除及它们的历史证据均不重复计功|

PRO-A只作为调度前沿来源，未采用其新i9数学接口。没有连接在线main，也没有读取其他会话本轮正在产生的结果。`sources/SOURCE_MAP.json` 给已读取原成员的逐字节映射。

## [E1] 只用于补充固定B高度

Attila Bérczes, Jan-Hendrik Evertse, Kálmán Győry:
*Effective results for hyper- and superelliptic equations over number fields*, arXiv:1301.7168v1 (2013).

原始地址：https://arxiv.org/pdf/1301.7168

实际检查：PDF印刷页3（对数高度、S整数定义）、印刷页4的Theorem 2.2及(2.6)；查看网页PDF截图以核准“2^12 n^4 s”指数，不依赖解析文本的错排“212”。这不是Bugeaud–Evertse–Győry的S-parts论文，不能混用。

映射：数域Q；数域次数1、绝对判别式1；S={∞}、s=1、Q_S=1；b=1；f为整数四次、无重根；系数绝对值≤46656B^4。源定理给出的对数高度代入详见PROOFS §6。无须固定首项符号，也无须假设f首一。

只此补充分支引入E1。三个商的恒等式、完整22状态证书、9块排除和n=18P^aQ^b+2行族均为初等链，不依赖E1、BFT、Matveev、Padé、BEG的S-parts估计、Dusart或旧大枚举。

原PDF未纳入本ZIP；包内保存确切来源、采用陈述与实例化。程序没有重证E1的出版证明，没有将其作为一个“Python验证过”的定理。本轮不是文献新颖性调查，也不声称数学首创。
