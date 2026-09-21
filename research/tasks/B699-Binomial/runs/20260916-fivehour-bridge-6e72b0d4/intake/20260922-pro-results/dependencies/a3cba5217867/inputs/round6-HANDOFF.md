# HANDOFF · B699 D / i=3 · 第六轮 DUAL-CYC1 / SPLIT5

## 入口与权限

先读REPORT、PROOFS、FAILURES、SOURCE_ADOPTION。仅继续本地数学研究和交付。没有仓库修改、提交、推送或发布授权。历史缺失会话不重建；本包inputs保留Overview、第五轮完整ZIP、第五轮四份主文档和第二轮采用证明。

## 原输入，不得更换

```text
规范最小临界两底支g=lambda=w_old=1,b=2r,xi=2mu；已取真实mu=1。
P=p^a,Q=q^r不同奇素数的完整幂；Q>=11。
h>=15奇，v正偶，nu=2H、H奇。
P=Q+hv；2nu=hDelta-Q；vnu²=PQ²-1。
Delta=Q-v>=17，Delta≡1 mod16，Q/3<v<Q。
n=PQnu+2；j=(P+nu)Q²；k=(Q²+vnu)P。
```

n=c2^s、真实gcd、孤立3、原完整窗口和高层NC3继续保留。任何代数壳都不能反推NC3。

## 新前沿：优先采用，勿重跑

```text
W=(Delta³-1)/v。
DUAL-CYC1: W|3(Delta-1)整个条件域退出。
```

准确证明：A支W|(Delta-1)，全部W>=192由格点+正残差排除；B支只多一层3，全部W>=1024由有理格点模3排除；剩余1255+2547=3802个证明界定状态全部非平方。旧W=1、COF40和D_v=1不重复计功。

令

```text
D_v=v/gcd(v,3(Delta-1))（旧D_cyc）；
D_W=W/gcd(W,3(Delta-1))（新补侧）；
sigma3=3当Delta=1 mod3，否则1。
```

有

```text
Delta²+Delta+1=sigma3 D_v D_W，D_v,D_W>=7；
gcd(D_v,v/D_v)=gcd(D_W,W/D_W)=1。
```

**D_v和D_W之间不准假定互素。**

新共享恒等式/完整精度：

```text
Delta²(h²-6h-11)=4W+10(h+1)Delta v+(4h+3)v²；
G0=gcd(v,W)整除h²-6h-11；
min(v3(v),v3(W))=0；min(v2(v),v2(W))<=2；min(v5(v),v5(W))<=1。
```

每个共享三次分圆素数ell|gcd(D_v,D_W)必须使5成为模ell非零平方，而且ell^min(v_ell(v),v_ell(W))完整整除h²-6h-11。

**SPLIT5消费者：** 若Phi3(Delta)/sigma3为素数，退出；若它为ell^a且5为模ell二次非剩余，所有a>=1退出。对一般单素数幂剩余必须a>=2并且5为模ell平方。不声称存在无限多的相关多项式素数值。

## 继续保留的旧界

```text
W>=2，16Delta<W²+640W；
Q<5Delta^(5/2)，h<225Delta³，n<2^20Delta^12；
h<2^21W^6，n<2^72W^24；
h<36D_v²+30D_v+9，n<2^78D_v^24。
```

NSB64、BSC-1/BSC-3、MID128、纯二幂已排指数族、低比值/h13等冻结出口保留。这些相对界没有变成全局高度。

## 下一轮最值得攻击的位置

优先把 **两侧共享完整幂G0|h²-6h-11** 与原P/Q完整素数幂、原n=c2^s联立；或者利用Phi3(Delta)已经必须两侧非空，对只剩一个使5成为平方的底数但跨侧分拆的区域做原范数高精度恢复。成功标准仍是删除真正未被已知门覆盖的无界条件域、统一界住一个原本无界参数，或完成实际可终止的有限化。

新的D_W不是W。固定D_W也不能直接调用第五轮“固定W”恢复器。两侧分别酉不意味着相互酉；3的额外一层不得删除。

不再扩大3802项末端；它已完整完成。不要只扩大固定W/Delta表或继续旧实相位外壳。

## 明确失败边界

* d49/W72说明W|3(d-1)不能改成W|(d-1)。已用独立B支修复。
* d7649/v145312/W3079729/h21保留新分拆与共享19，但原范数失败。不能宣称两侧必互素，也不能把它当NC3。
* 共享5平方条件仍允许无界弱外壳；完整范数/整数恢复不能省略。

## 证据状态

本轮完成DUAL-CYC1条件域及SPLIT5推论；全仓库历史消费者净差未审计。新增完整指标0，R7不变。无一般绝对界、全局有限化、严格下降、Lean或外部独立审读。

仍无界：D_v,D_W,W,Delta,h,n,P,Q,v,nu及底数/指数。一般low/low、非最小交叉、真三槽/多槽和其他恢复三次支未闭。

## 重放

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 evidence/bilateral_gate.py --delta 49 --cofactor 72
```

主重放仅标准库；SymPy只用于重生成有限系数证书。门检是条件核心接口，不断言给定参数下存在原NC3输入。
