# 来源、采用范围与证据等级

## 1. 本轮输入边界

用户仅要求接续本会话上一轮。主接续材料为上传的OVERVIEW-2026-9-17.md和上一轮GAP31交付；未调用其他会话记忆补数学状态，也未刷新或推测远端分支的新成果。

上一轮原ZIP：`B699-ProB-i3-GAP31-evidence-20260917.zip`。
SHA-256：`05b19804edac6091f89468b3993ac769873cd88d1edb7187f69987bed56d12f9`。

本包的sources/source_manifest.json记录以下实际保留成员的SHA-256与原路径：

|本包路径|原路径/用途|本轮采用等级|
|---|---|---|
|sources/OVERVIEW-2026-9-17.md|用户上传总览；目标、符号、前沿|来源原件，不代表新验收|
|sources/previous/PROOFS.md|上一包proofs/PROOFS.md；§1、§2.1、§2.3、§5.1|作者初等纸面前置；这轮读过并定向核对，非外部独立审读|
|sources/previous/terminals.json|上一包outputs/terminals.json|仅1406个小C原题见证在本轮另算两种整除核验|
|sources/previous/SOURCE_ADOPTION.md|上一包同名源记录|原字节保留，注明旧等级；不把其全部依赖自动带入新证明|

冻结原证明的旧相对链接按此成员映射理解；未保留或未调用的旧GAP31算法不是本包新证明的运行依赖。旧δ≥33可继续沿用作者等级，但BAL、ZERO、LOW-11和RHO-HEIGHT的证明不依赖旧222811状态闭合。

## 2. 采用的初等前置

完整NC3⇒α=c2^s、s≥3、c=3仅在v3(n)=1且3∤g；真实孤立λμ；完整源窗口和互素分配；u,z,δ整数性；N/Q/J恒等式；C≥5时ε正奇与DIV1。

小C已由Q界到n≤81，1406见证在本轮真实重验。不调用E的QT100K、端部≥11、R=7、THIN9、固定椭圆点表或B射线类群来证明新消费者。

仅负η的失败探索采用总览记载的旧VG8作者结果。该依赖没有进入本轮接受的BAL/ZERO/RHO-HEIGHT链。

## 3. 唯一新增出版依赖：只用于RHO-HEIGHT

David Masser, *How to solve a binary cubic equation in integers*, Mathematical Proceedings of the Cambridge Philosophical Society 176 (2024), 609–624.

DOI: `10.1017/S0305004124000057`。

出版社PDF：
https://www.cambridge.org/core/services/aop-cambridge-core/content/view/3632428D7B6FD0ED55217E889583B297/S0305004124000057a.pdf/div-class-title-how-to-solve-a-binary-cubic-equation-in-integers-div.pdf

准确位置：Lemma2，印刷页614，PDF页索引5。已访问出版社原文，读取所需引理并查看该页公式截图。

采用K=Q、D=1、|Δ_K|=1的特例：非奇异整数三次式系数绝对值≤H时，其每个整数点满足 `log max(1,|x|,|Y|)≤12^17172 H^4050`。原引理的h′为系数非齐次对数高度，整数情况下≤logH。我们的x,Y=qδ都是整数，qf判别式非零且系数界已在新证明§7逐项给出。

Lemma2原证明引用Bérczes–Evertse–Győry定理。本轮以Masser明确陈述作为出版输入，未声称复核其所有上游出版证明或重新实现深层估计。

没有使用首页“有解则有一个小解”的主定理去界所有NC；那个量词不够。也没有调用CAS整点表、类数表、机器返回的完备群或新的固定曲线分类。

论文标注CC BY 4.0；本轮本地文件下载失败，故未打包PDF。container.download失败，urllib请求出现DNS解析错误；准确记录在sources/external_fetch.json。原文在线核对成功与字节下载失败分别记录，不混为一谈。

BAL/ZERO/LOW-11与271状态证书完全不使用Masser；外部依赖只服务固定ρ的巨大有效高度。

## 4. 验证分级

|项目|本轮实际完成|不表示|
|---|---|---|
|新无限证明|同作者纸面分类、因式分解、估值与曲线消元|Lean内核验收或人类同行评审|
|有限BAL末端|271状态全覆盖、不同顺序和二次恢复、7坏证书拒绝|依靠样本证明无限尾部|
|符号身份|SymPy与标准库稀疏整数多项式两实现|两名独立研究者|
|旧小C|完整1406原题见证定向重算|重跑全部历史消费者或提升旧全链等级|
|API|961输入有限回归|新增无限覆盖或全题扫描|
|Masser|核对准确所需原文/截图、假设匹配|重证出版定理、完成巨大有限末端|
|打包|清单哈希、干净目录重放、ZIP提取后重放|数学独立接受、Git发布|

所有本轮新结果仍待独立数学审读和Lean化。无新增完整指标、无全球首创性或全历史非空差集审计。
