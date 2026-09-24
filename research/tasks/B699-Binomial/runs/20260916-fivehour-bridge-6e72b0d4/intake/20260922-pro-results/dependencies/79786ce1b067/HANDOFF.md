# HANDOFF · B699 D / i=3 · 第四轮 MID128 / BSC

## 接续与权限

先读 REPORT、PROOFS、FAILURES，再按需要查看证书和 SOURCE_ADOPTION。输入包含 Overview、第3轮完整ZIP及展开的第3轮关键证明/交接；第3轮ZIP内部保留前两轮冻结链。不要恢复缺失的旧聊天。

用户只授权研究与本地交付。没有仓库修改、提交、推送、发布；旧包中的权限不扩展当前授权。

## 当前同一原输入系统

```
g=lambda=w=1,b=2r,xi=2mu，沿旧出口取真实mu=1；
P=p^a,Q=q^r 是不同原奇底的完整幂，q>=3,Q>=11；
h>=15奇，Delta=Q-v>=17，Delta≡1 mod16，1/3<v/Q<1；
P=Q+hv，2nu=hDelta-Q，vnu²=PQ²-1，nu=2H，H奇；
n=PQnu+2，j=(P+nu)Q²，k=(Q²+vnu)P。
```

必须保留 n=c2^s、真实 gcd、完整原源和当前 NC3；显示的代数候选不能反推 NC3。

既有 D_cyc：

```
D_cyc=v/gcd(v,3(Delta-1))>=7，是v的完整酉因子；
所有ell|D_cyc有ord_ell(Delta)=3、ell≡1 mod3；
h<36D_cyc²+30D_cyc+9，n<2^78D_cyc^24。
```

既有 NSB64：m=isqrt(h)、A_old=h-m²+1、m>=64A_old²时退出。

## 本轮新增可调用消费者

均使用同一原 q^(3r)=Q³ 层，不换 n,j：

1. **BSC−1：** h=M²-1，M 偶且 M>=128。
2. **BSC−3：** h=M²-3，M 偶且 M>=256。
3. **MID128：** h=m²+m+d，d 为任意奇整数（可负），m>=128(|d|+1)²；再满足
   d≡1 mod4且m mod8∈{4,5,6,7}，或d≡3 mod4且m mod8∈{0,1,2,3}。

第3项有统一间距 `{j/Q³}-{n/Q³}>27/1024`，且与旧 NSB64 参数域不交。
全部证明无扫描末端。负 A 的双侧导数与 A=-2 的抵消已经处理完。

### 可移植解析引理 SC64

```
h=t²+A-1，t实，B>=1，|A|<=B，t>=64B²；
B0=t³-2t²+(3A/2-1)t-2A+1，c1=(3A²-4A-12)/8。
|nu/Q-t|<2B/t，|n/Q³-B0-c1/t|<32B/t²。
```

t>=128B²时还给 `|n/Q³-B0|<21/1024`。可尝试其他有理中心，但分母、整数边界、相位误差须一起控制。

## 精确方法障碍，不是 NC3

**LOWER-BARRIER：** h=M²-a为奇数，a>=2、a!=3、M>=128(a-1)²，严格有
`{j/Q³}<{n/Q³}`。MID128 其余八个局部模状态也有反向间距>27/1024。

这些区域不能再仅靠增加本层实根展开精度来排除。h16639,Q10007的非整数实模型精确见FAILURES；其nu处于1290864与1290865之间，不是原反例。

## 可执行入口

```
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 evidence/same_input_consumer.py --h 266773
python3 evidence/same_input_consumer.py --h 264709 --phase
python3 evidence/native_phase.py --h 16639
```

最后一个例子返回 NO_CARRY_THIS_LAYER，不是 NC3。h-only 入口由Qmin及两个精确隔离根统一处理所有原Q，不枚举Q，但h仍无界。完整数对输入模式另检查原整数恢复、合法性、活动素数及实际余数；大素数需要确定性证书。

## 准确 frontier 与下一步

本轮新增两条无界下方曲线和一个增长宽度中部带的条件排除。相对NSB64的新参数区域已证明；全历史覆盖并集净差未审计。完整指标0、R7不变；无一般绝对界、无全局有限化、无严格下降、无Lean、无外部独立审读。

D_cyc,h,n,P,Q,v,nu、底数与指数仍无界；一般low/low、非最小交叉、真三槽/多槽、不可约P_rho及可约双混合支持未被本轮关闭。

下一轮优先：利用已证明反向相位的区域来定位必须新增的原整数约束，接另一原源p的层或原n=c2^s；也可由SC64系统研究其他有理中心，但先确认产生与现有覆盖不同的无界区域。不要只扩大固定D/h表，不要重复BSC−3抵消或MID128的16状态周期分类。
