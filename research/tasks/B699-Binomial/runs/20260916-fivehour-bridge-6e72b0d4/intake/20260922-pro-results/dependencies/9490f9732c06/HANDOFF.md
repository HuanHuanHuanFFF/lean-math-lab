# HANDOFF · B699 D / i=3 · 第三轮 NSB64

## 接续和权限

先读本目录 REPORT、PROOFS、FAILURES。Overview、上一轮 ZIP、上一轮展开
PROOFS/HANDOFF 和第一轮相关证明在 inputs。只读研究授权不扩展为仓库写入；
本轮没有改仓库、提交、推送或发布。

## 当前精确系统

仍是同一原始 NC3 规范最小临界支：

```
g=lambda=w=1,b=2r,xi=2mu; 使用旧出口后真实mu=1,
P=p^a,Q=q^r 是不同原底的完整源幂,
h>=15奇,Q>=11,Delta=Q-v>=17,Delta≡1 mod16,1/3<v/Q<1,
P=Q+hv,2nu=hDelta-Q,vnu^2=PQ^2-1,nu=2H,
n=PQnu+2,j=(P+nu)Q^2,k=(Q^2+vnu)P.
```

原方向 j<k 在该走廊由 (k-j)=nu(Pv-Q²)>0 给出。
原 n 形状、完整源和实际 gcd 仍须保留；代数候选不反推 NC3。

旧第二轮：

```
D_cyc=v/gcd(v,3(Delta-1))>=7,
D_cyc 是 v 的酉因子，支持素数ell≡1 mod3,ord_ell(Delta)=3,
h<36D_cyc²+30D_cyc+9,n<2^78D_cyc^24.
```

## 本轮可直接调用

1. 相对位置：`hDelta²<9Q²`，所以 `h<Q²<Q³`；另有 `n<P³`。
2. **NSB64 原源消费者：** `m=isqrt(h),A=h-m²+1,m>=64A²` 时，
   `j mod Q³>n mod Q³`。Q³=q^(3r)，故同一 q>=3 同除 C(n,3),C(n,j)。
3. 剩余统一缺口：`m<64(h-m²+1)²`。这不是绝对高度。
4. `evidence/same_input_consumer.py --h H` 是廉价门检；不声称输入 H
   就代表存在原 NC3 数对。`--input JSON` 会核对同一个 n,j 的恢复及活动 q。

证明覆盖 m 奇、m 偶且 A>=4、m 偶且 A=2 全部三支。A=2 的抵消已经由
单侧四阶截断处理完，不需要重跑固定 h 列表。通用残差主证书是全参数单项控制，
不是10个解析样本或小整数进位测试。

## frontier reduction 与剩余

本轮在采用的最小支系统中排除一个真正带无界参数的平方邻域条件族。
未审计与完整历史消费者并集的净差；不登记净实例数/百分比。旧 odd-square+4
族的重叠不额外计功。完整指标0、R7不变、无Lean、无外部独立审读。

D_cyc、h、n、P、Q、v、nu、底素数和指数仍无统一绝对界。
low/low、非最小交叉、真多槽、不可约P_rho和可约双混合支持均未关闭。

## 下一轮最有价值的接续

优先研究平方下方或远离平方的原 q^3r / p 高层进位，保留原恢复和整数性；
也可把 D_cyc 分拆与原 n=c2^s 联立，但必须先证明活动原源资格。
不要只扩大固定 D 表、重复 D=1 末端、重复 NSB64 的奇偶分支。

### 可否证护栏

- D_cyc 的素数不是自动原源。FAILURES F1 有完整整数外壳，D307，
  n≡6 mod307且C(n,3)≡20 mod307；它缺完整范数，所以不是NC3。
- “全部实核心都在Q³层进位”被 h21,Q101 的精确实代数点否证；
  该点缺整数、alpha及完整素数幂，不是原题反例。
- 维持恢复等式与附加条件的逻辑类型；不要把这些等式重复计为新独立约束。

## 重放

```
sha256sum -c SHA256SUMS.txt
bash replay.sh
python3 evidence/same_input_consumer.py --h 332931
```

最后一行只是参数门检示例（577²+2），不是一条原题候选。
