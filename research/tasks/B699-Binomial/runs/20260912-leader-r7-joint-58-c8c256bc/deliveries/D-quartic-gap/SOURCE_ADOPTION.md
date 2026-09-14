# SOURCE_ADOPTION — 两路旧D与本轮的分离绑定

唯一启动输入：B699-ABD-next-round-20260914-v1.zip，SHA256
`10311a858e4006dee9800bef43c6bc8e8dc3732a059e7cd25afe0f78404a525c`。
实际解压、阅读README/COMMON/D/快照后运行了`python3 prepare_inputs.py D`，四原包恢复；结束阶段另运行`python3 prepare_inputs.py D --check-only`。这是字节校验，不是数学验收。

全部原ZIP身份、每个实际引用文本的原ZIP成员路径／大小／SHA256／本包快照路径见`sources/SOURCE_MAP.json`。

|身份|固定原ZIP SHA256|本轮采用范围|
|---|---|---|
|旧D transfer-verified|6edfbf6a680cffba5184730c1438a6d827ffb436b4d2705c2e4022dad2a31fb7|已读REPORT/HANDOFF/PROOFS/FAILURES/最小接口。ROW9、ROW-H、α≤9及端点能力表用于继承覆盖对照；不作为QIG/S4S5证明前提。|
|上轮新D three-window|7cdbad8b85bcd934fe04a761278b71e2646a2e73182fb4cda55da86786de249e|已读REPORT/HANDOFF/PROOFS/FAILURES/INTAKE。继承s_m约定和TW盲区作为任务基线；TW、COUNT、22幂消费者不重复计功，也不作为新证明前提。|
|A outer-exponent|95d398cd0931ecd8551ef090edbae741e60124fba09e62ea8d71f306650de6d9|已读报告、交接、失败边界及完整证明中的前提／幂排除／高度／失败族。只作NC9范围参考；没有采用cuts、content、全局高度或A有限证书。|
|B cubic-residual|ccbc0e93abf39199272521611a3fc516b560578bf4bcd39def04dcac63402bf0|已读REPORT/HANDOFF/PROOFS/FAILURES。确认其NC3商和立方禁形专用前提；不在新投影调用它们。整数间隙思路与其主题相邻，不把其旧成果重复计为本轮。|

## 自含主链

NC_m → 每个候选完整幂在实际j的全层无进位 → 四窗口系数整除 → 两个齐次式的整数归一化 → B²−2A³≥1 → QIG/HEIGHT → 平移光滑赋值多项式控制 → 指数有限化 → 本轮完整有限证书。

全链在notes/PROOFS.md重证所需阶乘计数、消因子、局部提升、不等式、CRT覆盖与素性判据。
没有BEG、BFT、Padé、Dusart、Pell、旧固定C表或其他出版输入。多项式系数完整幂方法与原项目有概念继承，本轮专门重证其适用前提；不声称这些一般工具为首创。

SymPy1.14.0只用于生成有限分解和发现代数；验证不使用它。接收器独立重建恒等式，并以260个递归确定性节点验证所有素数。代码依赖不是数学公理；运行结果不是Lean证明。
未做系统文献新颖性调查。曾查阅标准Kummer文档作实现参考，但证明使用明确给出的阶乘计数恒等式，没有把外部网页内容作为输入公理。

## 可恢复性与未重放范围

旧D、上轮新D、B的完整当前原ZIP原字节随本包保留；18份实际阅读的文本另作逐字节快照。
A的50.9MB外层包仅作边界来源，不复刻无关大证据；其所有本轮引用文本均完整随包，精确原ZIP/member/hash映射同时保留。用户启动包含其完整原ZIP，不能把本包小快照误称A历史证据全量副本。
启动任务原件、原inventory/manifest及prepare_inputs.py原字节亦保留。后者要在完整原启动包中运行，不是本轮新证明接收入口。

本轮没有运行旧A大块、旧D有限域、上轮TW完整数学链或B原接受链；它们原包里的PASS日志只是历史原件，非本次独立重验。
本轮没有取得或使用任何“正在运行的新结果”。没有提交、推送、合并、联系或修改仓库／旧会话。

## 本轮身份

schema：b699-quartic-integer-gap-v2。
最终证书SHA256：`d15cd25c8375b59e7b752c11417b76eae549ce47cf91cb33261fc8c24bc42cf0`。
最终本轮文件身份由MANIFEST.json绑定；ZIP整体身份由外置发布收据绑定，避免自引用哈希。
