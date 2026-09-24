# HANDOFF · B699 D / i=3 · 第八轮 RAM4 / PP2 / PELL-HEIGHT

## 开始位置与权限

先读REPORT，再读PROOFS P0--P7、FAILURES。第七轮原包位于inputs/round7-evidence.zip，本轮Overview也已冻结。无需重建旧聊天、重扫旧409/1129/601表或重跑未修改的旧证据链。

仓库未修改、提交、推送、发布。后续权限服从用户新指令。R7不变，没有Lean、外部独立审读或全历史净差审计。

## 唯一原输入支

同一个合法(n,j)，k=n-j，NC3规范最小临界两底：g=lambda=w_old=1,b=2r,xi=2mu；沿旧出口取真实mu1。

```text
P=Q+hv，2nu=h(Q-v)-Q，vnu²=PQ²-1；n=PQnu+2=c2^s，c1或3。
j=(P+nu)Q²，k=(Q²+vnu)P。
P,Q为不同原奇素数的完整幂；Q>=11，h>=15奇，v正偶，nu=2H且H奇。
d=Delta=Q-v>=17，d1 mod16，Q/3<v<Q。
W=(d³-1)/v，Dv=v/gcd(v,3(d-1))，DW=W/gcd(W,3(d-1))。
Phi3(d)=sigma Dv DW，Dv,DW>=7，sigma3若d1 mod3否则1。
```

这个核心是NC3必要条件，不能反推原反例。原gcd、原mu、lambda、完整源与所有高层无进位继续保留。sigma3不是mu3。

## 已完成的新门，不要再派为未解目标

1. **RAM4**：所有d>1,z>1，Phi3(d)≠3z⁴。Eisenstein单位负号保留，四次迹归到A⁴-2B²=1，互素半差法全排，无扫描末端。
2. 合用冻结RAM-ODD，Phi3(d)/3不为任何a>=3完全幂；指数gcd仅1或2。
3. 单底Phi3(d)/sigma=ell^a（ell素）只剩sigma3,a2；即Dv=DW=ell。旧a>=4全排；不要继续把e>=2当开放。
4. 单底平方必须
   `2ell+x√3=(2+√3)^{t_P}`，`d=(3x-1)/2`；
   `t_P`为素数且1 mod8；`ell≡1 mod120t_P`。
   旧ell49 mod120也已退出。t_P是新的Pell指数，不是t3。

## 更广的平衡域新接口

只要Dv=DW=y（允许y合数），就有sigma3、Phi3(d)=3y²，以及

```text
v=Ay，W=By，AB=3(d-1)，gcd(y,3(d-1))=1。
Pell表示同上，但t_P只要求1 mod8；不能要求它为素数。
y | R(n)，R(X)=X²-6X+4。
hd²<6Q²（此相对常数在整个当前走廊可用）。
Q<(11/6)d²，n<2^10 d^9。
10s<171t_P+10，故s<=floor((171t_P+9)/10)。
```

固定t_P时只需两种c、O(t_P)次模检查：R(c2^s)是否0 mod y_t。无需因式分解y-1、阶或离散对数，也无需y素性。

`python3 evidence/pell_gate.py --index 233`的全部s<=3985、7972项已排空。t17是旧出口回归；t41也排空且其Pell值合数。三个固定纤维不是全局剩余清单。

## 下一轮建议：真正的变指数问题

优先目标是在平衡域中联立

```text
U+x√3=(2+√3)^{t_P}，U=2y，t_P1 mod8，d=(3x-1)/2；
v=Ay，W=By，AB=3(d-1)；
Y²=(Q⁵-d²)/v，nu=(Y+Q²)/d，h=(2nu+Q)/d；
n=PQnu+2=c2^s，0<=s<=floor((171t_P+9)/10)；
y|R(c2^s)，以及原P/Q素数幂和高层源精度。
```

单底时再加t_P素、ell=y素和ell1 mod120t_P。

成功应界住变动的t_P，或证明上述原高度内的指数永不命中并回传原整数恢复；不能把固定t的O(t)算法写成全局有效有限化。也可转向一般非平衡Dv≠DW，但不得借用本轮平衡高度。

## 首个可否证试验与失败边界

* t41为素数、1 mod8、Pell值1 mod120t，但Pell值有明确真因子；因此新Pell规范不是充分条件。
* t233的放松湮灭指数和二次根幂检全部相容，却没有原有界s；不把湮灭指数当真实阶、SymPy诊断当大数素性证书。
* 平方Pell外壳无界，不能把RAM4推出成RAM2。
* 高次完幂指数已固定，不意味着原p/q指数或一般n已界住。

## 重放和证据等级

`bash replay.sh`只用Python标准库；六份证书可由make_certificates.py重建。整数矩阵与逐步递推、增量模2与直接pow有同会话交叉检查。UFD/辅助下降是正文证明；旧RAM-ODD与UNRAM-PP采用合同明列，不以本轮PASS重新认证旧NL定理。
