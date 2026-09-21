# HANDOFF · B699 D / i=3 · 第五轮 COF40 / COMP1

## 入口与权限

先读 REPORT、PROOFS、FAILURES。本包保留 Overview、第四轮完整ZIP、第四轮关键交接与第一轮相关证明。第四轮ZIP递归保留更早冻结链。不要恢复缺失历史聊天，不继承旧发布授权。

仅本地研究与交付。没有仓库修改、提交、推送或发布；下一轮也不自动获得这些权限。

## 同一原输入

```
g=lambda=w_old=1,b=2r,xi=2mu；沿旧出口取真实mu=1。
P=p^a,Q=q^r 是不同原奇底的完整幂；Q>=11。
h>=15奇，Delta=Q-v>=17，Delta≡1 mod16，1/3<v/Q<1。
P=Q+hv，2nu=hDelta-Q，vnu²=PQ²-1，nu=2H，H奇。
n=PQnu+2，j=(P+nu)Q²，k=(Q²+vnu)P。
```

仍保留 n=c2^s、真实 gcd、完整源幂、当前 NC3；代数候选不反推 NC3。

## 本轮新增，优先采用

新参数 **W_Delta=(Delta³-1)/v** 是正整数；不是 w_old=1、D_cyc 或 (Q³-1)/v。

```
COMP1: W_Delta=1 整个域退出（证明在Delta>=14，原入口>=17）。
COF40: 16Delta>=W_Delta²+640W_Delta 整个域退出。
```

剩余

```
W_Delta>=2，16Delta<W_Delta²+640W_Delta。
Q<5Delta^(5/2)，h<225Delta³，n<2^20Delta^12。
h<2^21W_Delta^6，n<2^72W_Delta^24。
```

这些是同输入必要条件，不是一般绝对界。

### 完备整数恢复式

```
v=(Delta³-1)/W_Delta，Q=v+Delta，
Y²=Q⁴+Delta Q³+Delta²Q²+Delta³Q+Delta⁴+Delta²W_Delta，Y>0，
nu=(Y+Q²)/Delta，h=(2nu+Q)/Delta。
```

固定 W_Delta 只枚举 Delta=17 mod16 且
`Delta<=floor((W_Delta²+640W_Delta-1)/16)`，每个Delta至多一个正Y及nu,h。
槽数 O(W_Delta²)，不枚举h；W_Delta仍无界。

核心证明是 h 严格夹在相邻有理格点之间。COF40 的两个平方差有短全参数正性分组及41/49项可重放证书；COMP1 直接用3/4宽区间，没有剩余有限末端。

## 继承而未重复计功

旧 D_cyc>=7、D_cyc酉分拆及对应高度；NSB64、BSC-1/BSC-3、MID128与其反向相位障碍；纯二幂最小支已排指数族、h13和低比值出口。完整定义与证据沿 inputs/round4-HANDOFF.md 和第四轮ZIP读取。

## 已失败，勿原样重试

固定 h=16639，Q=10007/10037 的正实核心在 P² 尺度有相反相位。nu都不整数，不是NC3。仅换原素数尺度仍有Q依赖；须加入整数/完整源信息。

W_Delta无界标量外壳：W>=2，Delta=16W+1，v=(Delta³-1)/W，Q=v+Delta。它满足新补商门与奇偶，但没有完整范数/整数h,nu恢复。不要从相对高度误报全局有限化。

## 下一轮优先候选

优先将这次**补商的平方恢复与原 n=c2^s、P/Q完整素数幂**联立，尝试界住W_Delta，或排除某个支持/指数无界族。也可同时利用D_cyc与W_Delta的两侧分拆，必须核对二者共享因子的完整估值，不能先假定互素。

如果继续另一原p层，要保留原Q整数和实际源，别再用固定h的实相位外壳直接判定。不要只扩大固定W/h扫描；COMP1和COF40无限尾部已经完成。

## 精确交付状态

新增无界条件域COMP1与COF40；相对旧D_cyc单位门的差异明确，全历史消费者并集净差未审计。完整指标0，R7不变；无一般绝对界、无全局有限化、无严格下降、无Lean、无外部独立审读。

仍无界：W_Delta,D_cyc,Delta,h,n,P,Q,v,nu、底数/指数。一般low/low、非最小交叉、真三槽/多槽和其他恢复三次支未闭。

## 重放

```
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 evidence/recover.py --cofactor 7
python3 evidence/recover.py --cofactor 16 --delta 1601
```

最后一个是条件门检，不声称存在原NC3输入。生成证书才需要SymPy；主重放仅Python标准库。
