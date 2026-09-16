# 来源、采用范围与核验等级

日期2026-09-16。实际接续挂载的paired-midpoint-square交付、前轮D原件和会话中已给总览。原件路径、大小和SHA-256见sources/SOURCE_MAP.json。没有假定取到新的A/B交付，未启动其他会话。

## 本轮主链

| 内容 | 实际采用原件 | 准确用途 |
|---|---|---|
| QIG | sources/B699-ProD-quartic-gap-shifted-smooth-20260914-proofs.md，§1–3 | 在各自s_i定义下给四窗口整行消费者；用于两个最大幂入口及末端筛选 |
| SIXG | sources/B699-ProD-even-gap-cluster-closure-20260914-proofs.md，§1–3 | 只在原生i6中给六窗口消费者；用于三幂质量、两最大幂入口及末端筛选 |
| e4>1，目标5 | sources/B699-ProD-residual-splitting-20260916-proofs.md，相应NC5/H02⁺完整端点结果 | 仅用于t至少三合格底数的推论，不用于新四槽/整行主定理 |
| e4>1，目标6 | sources/B699-ProD-center-residual-cubic-20260916-proofs.md，原生D6段 | 同上，保留独立NC6及额外模5条件 |
| f4>1 | sources/B699-ProD-three-group-row4-20260916-proofs.md，N5/N6 | 仅用于三底t时L−s至少四底的下一前沿 |
| 旧平方商与边界 | sources/B699-ProD-paired-midpoint-square-20260916-proofs.md/HANDOFF.md | 作为接续起点保留；本轮缺槽闭合不依赖其平方商的大小界 |

旧e4所需原ZIP的完整证据随sources保留。本轮没有重放其中未修改的历史全链；作者证据等级不升级为外部接受。若拒绝e4前置，新SLOT/ROW与单块相对高度仍独立成立，而“两底t全部闭合”的推论要暂缓。

## 自含的新部分

两份整数多项式的构造、3780条Taylor零条件、全合法矩形域正性、小部成本、严格绝对高度、完整有限域恢复、逐行源CRT和递归Lucas素性证书均在本包。实际运行的第二程序不用发现阶段的LP可行标志、probable-prime测试或生成器的CRT函数。

QIG/SIXG在冻结原件中为初等整数多项式不变量。新主链不使用Bugeaud、Yu、BEG、Magma、椭圆整点、A的出版高度或NC3专用缺陷。q2=1的旧单位窗口定理没有被默认加入三底下一前沿。

## 公开基础核对

基础阶乘/进位公式另与官方mathlib文档核对：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Multiplicity.html

其中Natural number multiplicity章节列出Legendre和Kummer接口。这只用于核对基础公式，不是本轮Lean运行或形式化接受。公开来源没有提供本轮的新四槽结论；新结果由本包作者推导、证书及程序承担。

## 执行边界

全部写入在/mnt/data的独立研究目录，不创建或修改任何仓库；没有commit/push/PR/合并。没有后台任务承诺或子研究会话。

发现阶段用NumPy/SymPy/SciPy；接受链只用Python标准库。尝试安装可选python-flint因环境DNS失败而终止，随后没有依赖它。所有输出均在本次实际运行生成；没有复用旧PASS标签冒充本轮验证。

验证等级：作者纸面无限证明＋确定性完备新证书；两套实现同会话作者。未Lean、未外部独立数学或人工审读。R7与6/24模板计数不变。
