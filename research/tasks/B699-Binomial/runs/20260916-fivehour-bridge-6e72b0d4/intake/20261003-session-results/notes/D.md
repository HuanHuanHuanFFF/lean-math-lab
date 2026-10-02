# D 新页 11阶段：SYNC455 → SATURATED-RECOVERY

本页来自 B699-D-i3-ALL-ROUNDS-20261003.zip，外包 SHA-256 9b03068b8c5d4948c63ddb6e7a6a08ccd64d6b659e405b33a0becd35f1b9c004。以下只登记作者报告、交接、采用说明和失败边界；未运行作者程序、读取大证书作数学接受、复算投影或执行 Lean。作者纸证、同会话不同程序/重放、字节完整性各守范围，未升级为独立数学接受。映射见 [MEMBERS.json](../MEMBERS.json)，本页顺序见 [MASTER_README](../objects/30/30e5aa62b0bec25e3d0999a4d345490da5e167e53ed8bd13e5336f8ff00c08b3.md) · [ROUND_ORDER](../objects/33/33e92f2729593840c7fc89bdec978dbfdd548693d2f70ab5b3a2fc7ae56c7218.tsv)。

## 与旧11286/4018账本的关系

[10/2旧D摘要](../../20261002-pro-results/notes/D.md) 保留 SOURCE-LIFT-PHASE5→A4090→A10152：采用R27摘要的主必要投影最低到A11286；不补R27的敏感性账本最低4018。两账不能互换、相减或由新页轮名覆盖，更不代表实际NC3数。

新页首阶段实际名为D04-SYNC455，第二阶段D08-ORIGIN-SOURCE；后续D-R03至D-R11。D-R08与第二阶段旧名D08是不同交付，不因同数字而复用。外层抽出02_ROUND_FRONTFILES便于浏览；规范来源是11个01_EVIDENCE_ZIPS递归映射后的普通成员。

D04实际采用固定main b17ee9f9574459147ce3f503ecb89a4f9ae53c6c 的D13限定核心，只读到必要A≥3866；未读到3866→11286中间完整交付，11286及11/19侧商只作导航。作者另给同q/c/s门，声明排全部正偶A≡366 mod910，包含11286，但不宣告下一个最低A。455投影排290/留165、相对允许各模分别选s的明确基线新增100；不是对旧主账的净差。见 [SOURCE_ADOPTION](../objects/8d/8d20d2e3c402d762d7b4a6cdf9aeb3c95c080e26c4f32b035def5433fa631602.md) · [FAILURE_BOUNDARIES](../objects/a9/a977c8285d4a72694d354a39e67ccefaa23dbfa9ff5880b551159a4bb9f59415.md)。

D08再定向读取R27 P0/P4等，作者采用q≥6、A-EXP、h>A²、ORIGIN6完整源幂短桥；保留的主要是带定位摘录，不是完整R27原件SHA核验。这补充本页的明列依赖，仍未接回旧11286/4018账本完整并集，不能从局部A≡5616推新全局最低A。见 [SOURCE_ADOPTION](../objects/53/531a9ad3c632fbd86dcbf741b19689c708962c764b3c32bbc43244b19ff1ca89.md)。

## 本页采用次序

|阶段|作者报告的准确范围/接口|固定报告|
|---|---|---|
|01 D04-SYNC455|同q/c/s的A≡366 mod910整支排除；455投影290排/165留|[REPORT](../objects/8b/8bd2c8d9f92456755a5f2099f8b5079e37793b0548be36c1e0be6f4705d5197a.md) · [HANDOFF](../objects/d9/d9e48315afa64f334059d60bf4430a6416970bb0c070cb2508d73a767b030af5.md)|
|02 D08-ORIGIN-SOURCE|原T完整支持阶及全13进真实商；指定A16mod70入口只留A5616mod8190|[REPORT](../objects/3d/3d8a5cf25864fc9a2b5224da2b30767facb9805c5f8825b181101fd6c542a404.md) · [HANDOFF](../objects/40/4046d1e3966413e9545ceb029a0d9b212ec17c41e5623495078783fc88d28151.md)|
|03 D-R03 PRIME-ALLOCATION|P非平方/完整底指数；A1mod5的q2支退出，指定余A5616mod24570、3整除q；M_A>q^6|[REPORT](../objects/a5/a5f8cdefb6ef3477e4f974006399bb9019b3eff50b68ac8e1e272f3bc08587ae.md)|
|04 D-R04 FIVE-MASS|补关A−1mod5的7整除A遗留支；c3⇒5∤PQ，R_H^6>H^5及相对高度|[REPORT](../objects/0f/0f661a14b02a380647ceb8f736c5b3f7fec9f9100a63692b623a3d7d06b1d23c.md) · [SOURCE_ADOPTION](../objects/12/122b0d89cd26a5715c8c8dc82508d7234752b6064deba837f846d0cd74e1faee.md)|
|05 D-R05 DOUBLE-VALUATION|保留b_ℓ=v_ℓ(A)的双重估值；指定q<4096M^4，M=P⁺(R_H)仍无界|[REPORT](../objects/3f/3ff22fcf55106bdb14abb9c303e285c38dbf5cb04910981df42c4820dacefcda.md)|
|06 D-R06 COMMON-EXPONENT|同一g_e=gcd(e_P,e_Q)的分圆块预算，阶容量>g_e/2；g_e=1仍开|[REPORT](../objects/21/2188b36906f9511e2fce6b140c41d80bf8855987a983a95fdfc577d9ed0d8ccf.md)|
|07 D-R07 ORIGINAL-SOURCE-CARRY|P/Q/H/X/Y五源完整高层进位判别与条件见证；未证明必进位|[REPORT](../objects/90/90617dca1085657bf3ebdaf2caa850b557ccae6de6a32d56f979674bfc2e1fbc.md)|
|08 D-R08 FIXED-PRIME-TWO-BLOCKS|固定原π_P完整两块公式；e_P=1且ι≥κ时该底全部估值0|[REPORT](../objects/34/349e3a6b7787270fe1e38a6f8d34218e31ec5b5817acaa488f41fda20232e1e4.md)|
|09 D-R09 Q-SOURCE-NEAR-SQUARE|τ=⌊√(h+1)⌋，τ≥256、Δ²≤τ时原π_Q进位；带外仍开|[REPORT](../objects/20/20f6ead97bd2f64af10386eb42e2f1dfa6f85153f23845d07bc8c447e1519676.md)|
|10 D-R10 GLOBAL-INTEGER-PHASE|平方差保护域内全Δ精确判别；固定h/Q时原n至多一项|[REPORT](../objects/74/745562f8048a8baf57a3c394ef5430d39271c424a4a08fade209e8aacf09bffd.md) · [HANDOFF](../objects/02/027ddef35fa7efbd0d591c9abce193b94443151004f6db660e714bfc4b459d4d.md)|
|11 D-R11 SATURATED-RECOVERY|同n/Q饱和恢复、无需自由h输入的唯一H、完整原来源gcd预算|[REPORT](../objects/37/37a855d78b493162f076cf4c73ee0162198a03dbf3f4852dc37d731b741fd965.md) · [HANDOFF](../objects/e2/e26f466730cfa4ceded595d8561920a74553ae96cee3ab429e30a1884a4b9477.md) · [SOURCE_ADOPTION](../objects/97/97fa7a8da53a6e4c87cdeb37c56c5430234686752cc4c6bd49b7dac089d2d542.md)|

各条件域互有重叠/嵌套，必要投影、算法回归和唯一恢复不相加为全题删域。最新R11新增认证排空的无界原题域0，历史消费者净差0/未认证；整条页链没有一般i3或B699闭合。

## 最新输入域：保留同参、原幂和13全层

所有原题回传只在同一原合法(n,j)、规范最小临界两底、λ=μ=1、Dv=Dw=y的采用核心。原P=π_P^e_P、Q=π_Q^e_Q是不同奇底的完整正幂，H=ν/2正奇；不证明所有NC3进入该核心。Pell行参数q不是原素数底。p≥i=3以及允许p=i的原语义保留；在当前c3子核心对3的特殊赋值结论不能移到c1或核外。

当前指定入口保留：

    A≡5616 mod24570，3|q，c=3，n=3·2^s，s≡6 mod12；
    a=v13(A)=1+v13(q)，A0=A/13^a，
    q/13^(a−1)≡−A0，13∤B，B≡5 mod13；
    v13(P−1)=v13(Q−1)=a，
    (P−1)/13^a≡11A0，(Q−1)/13^a≡7A0 mod13；
    e_P奇，gcd(e_Q,6)=1，π_Q≡1 mod13，π_P≡49 mod120；
    5∤PQ，H完整5部等于T=PQH的完整5部，M_A>q^6。

a可无界，原底和完整指数的13部不能任选重置或只归给一侧。M_A是A去掉完整2/3/13部的余部；R_H=H/5^v5(H)是另一余部；M_A|H/R_H/PQH或其根基整除均未证明。Overview的A≥3866是作者实际读到的另一必要投影口径，不能被局部余数5616替代。

## SATURATED-RECOVERY的准确接口

置同一原n及完整Q的C=(n−2)/(2Q)=PH。对正奇h,Q、正C、gcd(C,hQ)=1，定义：

    L=4C+3hQ²>0，
    K=h²Q³−CQ−h，
    Φ=4K²−hQKL+CL²。

作者声明 Φ=0、K>0、8K<(h−2)QL 与存在正整数P,H,d,v满足hQ=P+4H、hd=Q+4H、v=Q−d、4vH²=PQ²−1，且C=PH、v>d严格等价；H=K/L自动整数，并恢复P=hQ−4H、d=(4H+Q)/h、v=Q−d。判别式D=(hQ)²−16C=(P−4H)²自动平方。逆向只恢复所列代数子系统，还须P/Q完整素数幂、正整数Pell/AB/n相位、全部13单位、合法原j和五源高层；Φ≠0拒绝的是共同恢复，不能单称“D非平方”。见 [FAILURE_BOUNDARIES](../objects/0c/0ce3e659a1c9109c241a6fc91acccacd9c437ae5c849b1446cd13b880570ad54.md)。

固定同一n,Q不再以无界h为输入：

    F_CQ(x)=4Qx²(C−Qx)/(C+4x²)−CQ²/x+1。

作者声明在全部正区间4x²+2Qx<C严格递增，故最多一个整数H，继而P,h,d,v唯一。精确整数符号二分可找候选；严格递增的是该有理函数，不能无条件改称清分母四次式单调。结果覆盖R10保护域与保护失败域的代数恢复，但n、Q仍无界，也不代表给定n整行闭合。脚本candidate并未认证P/Q素性和完整幂。

同一原候选、c3及完整互素源还给：

    H=gcd(C,hQ³−1)，P=gcd(C,hQ³−4)；
    X=P+2H，Y=Q²+2vH，n−1=XY；
    G_X=gcd(n−1,h²Q³−1)=Xε_X，
    ε_X|2h−3，gcd(ε_X,X)=1，G_X²>9C。

每个ℓ|X在h²Q³−1中保持X的完整估值；额外因子ε_X不能删、不能设1，也不能把G_X所有素因子归X。两gcd分拆使用3∤C/c3来源条件。上述配对范数和多项式是原E的等价消元，不增加独立方程，不重复支付高度。

## 作者失败边界和修正

- D04保留P/Q/S模零余数、A=0时全部B分支；在模v非单位处不能由E/F/N倒推整数层的S=Z²，不能把各模独立s拼成一个原s。
- R03的P非平方/同余不能替代单底完整幂；合数P65、Q1795是条件反查例。13估值要保留原底和指数两部；部分试除不是完整因数分解。见 [FAILURE_BOUNDARIES](../objects/dd/dde3073828374977c7d6848f23e4fecf2fa5502308ef055805b5ca4586ae5b0a.md)。
- R05准确范数层b_ℓ+2e_ℓ保留b_ℓ=v_ℓ(A)，不是gcd(H,v)=1；R06还需独立v_ℓ(g_e)，按实际阶分块只支付一次。M、M_A、R_H不能互换，g_e=1及足够大阶容量仍开。见 [FAILURE_BOUNDARIES](../objects/ae/ae27356ad9871c10fbf6e694b3d415da3ae14078e97a57e59706aba6bc900535.md) · [FAILURE_BOUNDARIES](../objects/0e/0e03498010f84ebe227bb9b13f79746701c93cb99caf1263fc64c1b652f5e7a2.md)。
- R07剥离后的较小二项式只压缩同一素数估值，不保持NC3，不能称严格下降或另找一素数无条件回传。见 [FAILURE_BOUNDARIES](../objects/63/63e60c28b5e5ef3252b4ba3fc06ef1f4ff1eb6ad71e94e6248c65c180735df5b.md)。
- R08 e_P=1、ι≥κ时原π_P所有层已为0，继续扩查该底没有未验层；e_P>1须保留块内进位及δ·v_πP(N1)。P89/Q3/H10模型有真实合法数对但H偶/B0/q0/μ≠1/n形状错，是放宽系统边界，不是当前入口或B699反例。见 [FAILURE_BOUNDARIES](../objects/15/15006d0aa192700515881f932583af2a16c8f995522dc032214092e57d808649.md)。
- R09实根反侧模型未恢复整数P/H/d、Pell/n/13/j，只是连续解析边界；R10保护条件γ_-≥4h、γ_+≥4(h+1)是额外条件。反相位只说原Q³这一层为0，不表示π_Q所有层为0；保护失败域仍未空。见 [FAILURE_BOUNDARIES](../objects/25/25cd86eabdb5fa7c2743705ef5f06374b7bc13d46d1d05a34b767c145fb7d535.md) · [FAILURE_BOUNDARIES](../objects/d8/d89fc45a369faf5a341ed00f6ae990a683ca1ed57451191149fd03a3ddf0957a.md)。
- R11无界平方族s=402+3420m、n=3·2^s、Q19、H5、P=(n−2)/190、h=(P+20)/19有真n形状和平方D，但d=39/h∈(0,1)、Φ≠0，未过E/正Pell/AB、Q13相位、指定A、P幂认证，未核R10保护条件；不是NC/入口模型，精准说明平方D不足。见 [FAILURE_BOUNDARIES](../objects/0c/0ce3e659a1c9109c241a6fc91acccacd9c437ae5c849b1446cd13b880570ad54.md)。

## 前置、证据缺口与下一可执行检查

旧入核、q≥6、A-EXP、ORIGIN6、正Pell/13相位仍按作者级采用。R04新增BL p-adic两对数依赖：作者实际比对2025正式HTML Lemma2.6与2024作者预印本Lemma2.2陈述，未取得/重证1996全文证明；去掉BL，14层根证书只支撑142≤s≤10^9，不能覆盖无限尾。R05扩大BL到任意ℓ和原π_P/π_Q，须单列采用。R11新初等推导不直接调用BL/A-EXP/qmin，不等于继承前沿已消除此链。见 [FAILURE_BOUNDARIES](../objects/b7/b73f75b5359ec61c0fa5e0979fc8fa2bb418328ecb7ed9f0930b7253456e9508.md) · [FAILURE_BOUNDARIES](../objects/ae/ae27356ad9871c10fbf6e694b3d415da3ae14078e97a57e59706aba6bc900535.md)。

R11作者本机实际核父R10 SHA 69791706c40f3753e359765e464f38895060e6095ef35525931f553d9da6673a并重放父自身有限程序；更早祖先只核字节，q=6未执行。新7恒等式/完备插值/单调根回归/16篡改拒绝是作者同会话有限核对，不证明所有无界量词或历史入核。完整Overview预期SHA-256 96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066仍未对原字节复算，Git blob89481b6a5f79959a47081920c534c1321b7c3447与摘录哈希分别登记。

一般未界：q及Pell行参数、A,a,A0,M_A,B,d,y,v,ν,H,h,n,j,s,w,R_H及其支持/完整指数、M、π_P/π_Q/e_P/e_Q、公指数g_e、X/Y与全部局部估值层。固定n,Q唯一H不界住n/Q；固定M相对高度未做每个M全原题终端。反相位和保护失败域仍开；核外cross/low-low、非平衡、多底/多槽仍未覆盖。R7={3,4,5,6,7,8,9}不变，没有一般有效有限化或同NC的严格下降。

下一可执行检查先独立核验R11“Φ条件自动整性”、唯一H和完整gcd分配的准确合同及继承前置。数学接续应固定真实n=192·4096^t和同一实际完整Q，对唯一H恢复出的P联立完整幂、正整数Pell/AB与所有13单位；或者把同一G_X、受控额外因子2h−3接到原第一源全层数字，证明真素数必进位或反向高度。不能分别重选h/H/s、设ε_X=1、假定M_A|R_H，或由一个Q失败推出n整行闭合。若以后补齐旧11286链，另与本页同q/c/s标签交叉审计，不从局部余数编造全局最低A。
