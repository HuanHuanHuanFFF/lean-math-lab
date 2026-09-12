#!/usr/bin/env python3
"""Build the Pro A R7 delivery; exact new checks, no search or frozen-block replay."""
from __future__ import annotations
import hashlib, itertools, json, math, shutil, sys, traceback, zipfile
from dataclasses import dataclass
from fractions import Fraction as F
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
for d in ('notes','evidence','logs','input','adopted-inputs'):(ROOT/d).mkdir(exist_ok=True)
P=(2,3,5,7)
LOW={2:3,3:1,5:1,7:1}
RCONST=2**2*3**5*5**4*7**10
C0=80640
K=2**42*math.prod(math.factorial(h) for h in range(1,7))**3
RESIDUES=list(range(0,9))+list(range(45,50))+list(range(90,99))+list(range(135,144))+list(range(184,189))

@dataclass(frozen=True)
class I:
    lo:F
    hi:F
    def __post_init__(self):
        assert self.lo<=self.hi
        # Outward dyadic rounding prevents denominator explosion. All bounds remain rigorous.
        den=1<<256
        lo=F(self.lo);hi=F(self.hi)
        qlo=(lo.numerator*den)//lo.denominator
        qhi=-((-hi.numerator*den)//hi.denominator)
        object.__setattr__(self,'lo',F(qlo,den))
        object.__setattr__(self,'hi',F(qhi,den))
    @staticmethod
    def point(x):
        x=F(x);return I(x,x)
    def __add__(self,other):
        o=iv(other);return I(self.lo+o.lo,self.hi+o.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,o):return self+-iv(o)
    def __rsub__(self,o):return iv(o)+-self
    def __mul__(self,other):
        o=iv(other);v=[a*b for a in (self.lo,self.hi) for b in (o.lo,o.hi)];return I(min(v),max(v))
    __rmul__=__mul__
    def inv(self):
        assert self.lo*self.hi>0;return I(1/self.hi,1/self.lo)
    def __truediv__(self,o):return self*iv(o).inv()
    def __rtruediv__(self,o):return iv(o)*self.inv()

def iv(x):return x if isinstance(x,I) else I.point(x)
def log_small(y:F, terms:int=96)->I:
    assert 1<=y<=2
    z=(y-1)/(y+1);z2=z*z;power=z;s=F(0)
    for k in range(terms):
        s+=power/(2*k+1);power*=z2
    tail=2*power/((2*terms+1)*(1-z2))
    return I(2*s,2*s+tail)
LN2=log_small(F(2))
def logq(x)->I:
    x=F(x);assert x>0
    k=x.numerator.bit_length()-x.denominator.bit_length()
    y=x/F(2)**k
    while y<1:k-=1;y*=2
    while y>=2:k+=1;y/=2
    return log_small(y)+k*LN2

def logI(x:I)->I:
    assert x.lo>0
    return I(logq(x.lo).lo,logq(x.hi).hi)

def sqrtq(x:F,bits:int=192)->I:
    x=F(x);assert x>=0
    z=math.isqrt((x.numerator<<(2*bits))//x.denominator)
    den=1<<bits
    return I(F(z,den),F(z+1,den))

def mini(a:I,b:I)->I:return I(min(a.lo,b.lo),min(a.hi,b.hi))
def enc(x:F):return {'numerator':str(x.numerator),'denominator':str(x.denominator)}
def interval_record(x:I):return {'lower':enc(x.lo),'upper':enc(x.hi)}

CUTS=[
 {'id':'p2-q7-published-25-17','p':2,'q':7,'k0':3,'l0':1,'a':1,'b':1,'D':1,'e':17,'d':17,'f':8,'wp':2731,'wq':3198,'L_num':777,'L_den':500,'m0':582},
 {'id':'p7-q2-published-7-4','p':7,'q':2,'k0':2,'l0':4,'a':1,'b':3,'D':1,'e':4,'d':4,'f':3,'wp':1063,'wq':3632,'L_num':16219,'L_den':10000,'m0':60},
]

def check_cut(row:dict)->dict:
    p,q=row['p'],row['q'];Pv=p**row['k0'];Qv=q**row['l0']
    a,b,D=row['a'],row['b'],row['D'];e,d,f=row['e'],row['d'],row['f'];c=d+f;S=e+d+f
    assert a*Pv-b*Qv==D>0
    z=F(D,a*Pv);h=1-z
    bq=f*(1+h)+d+e*h
    tq=2*f/(iv(bq)+sqrtq(bq*bq-4*h*S*f))
    be=e*(1+z)+d+f*z
    te=2*e/(iv(be)+sqrtq(be*be-4*z*S*e))
    alpha=S*logq(S)-e*logq(e)-d*logq(d)-f*logq(f)
    qstar=alpha+f*logI(tq)+d*logI(1-tq)+e*logI(1-h*tq)
    estar=alpha+e*logI(te)+d*logI(1-te)+f*logI(1-z*te)
    g=d*logq(F(row['L_num'],row['L_den']))
    O=f*logq(Pv)-max(e,d)*logq(a)-c*logq(b)-qstar+g
    T=e*logq(Pv)+c*logq(Qv)-(c-min(e,d))*logq(a)-(e+d)*logq(D)-estar+g
    ap=(e+f)*logq(Pv);aq=c*logq(Qv)
    beta=mini(F(10000-row['wp'],10000)/ap,F(10000-row['wq'],10000)/aq)
    X=9500000;K0=2**S*max(f,e*d)
    d1=beta*T-1;d2=beta*O
    margins={
      'positive_O':O,'positive_T':T,'positive_d1':d1,'positive_d2':d2,
      'effective_content_start':beta*X-1-row['m0'],
      'T_tail':d1*X-logq(X)-T-logq(8*K0),
      'O_tail':d2*X-logq(X)-O-logq(4*13*K0),
      'T_monotonicity':d1*X-1,'O_monotonicity':d2*X-1,
      'height_to_log':14000000*LN2-X,
    }
    for name,val in margins.items():assert val.lo>0,(row['id'],name)
    return {'input':row,'X':X,'D_window':13,'H_bits':14000000,'margins':{k:interval_record(v) for k,v in margins.items()}}

def vp(n:int,p:int)->int:
    assert n>0
    v=0
    while n%p==0:n//=p;v+=1
    return v

def low_factors(excluded:set[int]):
    primes=[p for p in P if p not in excluded]
    return sorted(math.prod(p**a for p,a in zip(primes,es)) for es in itertools.product(*(range(LOW[p]+1) for p in primes)))

def new_checks()->dict:
    assert K==67760797482613632294319030272000000
    assert C0**10==K*RCONST
    assert RCONST==171603713767500 and RCONST<2**48
    assert 108**7<=RCONST<109**7
    assert 25599<259*99
    assert 4+72*(2**817)**5<2**4096
    assert 3+9*(2**1023)**4<2**4096
    assert 5+360*840**6<2**70
    assert 8+math.factorial(8)*math.factorial(40)<2**257
    # Exact complete enumeration of a finite periodic predicate; completeness is proved in notes/PROOFS.md.
    got=[]
    for r in range(225):
        a=r%9
        yes=(r-a)%5==0 and ((r-a)%25==0 or r%25>8)
        if yes:got.append(r)
    assert got==RESIDUES and len(got)==37
    # Regression only; unlike the periodic predicate, this is not the all-n proof.
    checked=0
    for t in (1,2,3,4,5,8,16,25,81,125,625,10000):
        for r in range(225):
            n=225*t+r;a=n%9
            coincide=vp(n-a,5)==max(vp(n-b,5) for b in range(9))
            # n-a is the unique maximum-3 position in the nine-term window.
            assert vp(n-a,3)==max(vp(n-b,3) for b in range(9))
            assert coincide==(r in RESIDUES)
            checked+=1
    families=[]
    for p in P:
        for m in low_factors({p}):families.append({'kind':'one-high','primes':[p],'m':m,'min_exponents':[LOW[p]+1]})
    one=len(families)
    for p,q in itertools.combinations(P,2):
        if (p,q)==(3,5):continue
        for m in low_factors({p,q}):families.append({'kind':'two-high','primes':[p,q],'m':m,'min_exponents':[LOW[p]+1,LOW[q]+1]})
    assert one==56 and len(families)-one==28 and len(families)==84
    # Finite exact regression for the factorial product inequality. Its infinite proof is analytic/elementary.
    poly_checks=0
    for r in range(1,6):
        for k in range(1,101*r):
            y=F(k,101)
            v=math.prod(abs(y-s) for s in range(r+1))
            assert v<=F(math.factorial(r),4)
            poly_checks+=1
    received=[check_cut(c) for c in CUTS]
    (ROOT/'evidence/two_published_cuts_receiving.json').write_text(json.dumps(received,indent=2)+'\n')
    (ROOT/'evidence/residue_classes_225.json').write_text(json.dumps({'modulus':225,'classes':got,'count':len(got),'periodic_predicate_cases':225,'valuation_regression_cases':checked},indent=2)+'\n')
    (ROOT/'evidence/alpha_normal_forms.json').write_text(json.dumps({'meaning':'Necessary forms for a hypothetical i9 counterexample. Exponents remain unbounded.','one_high':56,'two_high':28,'families':families},indent=2)+'\n')
    return {'status':'PASS_NEW_EXACT_CHECKS','cut_rows':2,'strict_rational_margins':sum(len(x['margins']) for x in received),'periodic_predicate_cases':225,'residue_classes':37,'valuation_regression_cases':checked,'normal_form_families':84,'factorial_product_regression_cases':poly_checks,'old_i14_large_blocks':'NOT_REPLAYED_ADOPTED_FROZEN_INTERFACE','old_i9_finite_certificate':'NOT_REPLAYED_ADOPTED_FROZEN_INTERFACE','old_content_blocks':'NOT_USED_BY_THE_NEW_37_CLASS_PROOF','Lean':'NOT_RUN'}

PROOF=r'''# B699 Pro A — i9 的全局位置归约、分母有效高度与整行消费者

## 0. 精确目标与证据边界
令 E9 为满足 10≤j≤floor(n/2)，且不存在素数 p≥11 同时整除 C(n,9)、C(n,j) 的整数对。对 i=9，p≥9 与 p≥11 等价；这里没有修改其他指标的 p=i 边界。

本文在上轮冻结的纸面／精确证书接口上推导新结果。不是 Lean 证明；旧大整数块与旧 i9 完备有限证书本轮未重放。新的两个 cut 数值接收、全部 225 个周期谓词和有限正规形清单由新脚本精确检查。回归实验不承担无限量词。

## 1. 接收的旧接口

A9-SCALAR：n≥72 的 E9 对，设 Q_p 是 n,n−1,…,n−8 中 p 赋值的最大完整素数幂，p∈{2,3,5,7}。选择 N_p=n−a_p=Q_p A_p，0≤a_p≤8，A_p≥1。则

    K (∏Q_p)^10 ≤?  [注意：正确方向见下行]
    K n^27 ≤ C0^10 (∏Q_p)^10,
    C0=80640,
    K=2^42∏_{h=1}^6(h!)^3.

消去常数得到

    n^27 ≤ R(∏Q_p)^10,
    R=C0^10/K=2^2·3^5·5^4·7^10
     =171603713767500 < 2^48.

A9-FINITE：E9 中没有 n<2^4096 的点。该冻结结果本身不依赖 BFT。

A14-CUBIC-BLOCKS（只消费素数对 {2,7}）：两个完整素数幂分解

    n−a=2^u A, n−b=7^v B,
    0≤a,b≤13, a≠b,
    A^3≤216(n−a), B^3≤216(n−b),
    n<2^14000001

落入上轮 i14 对全部 15 个素数对完备检查的局部指数块覆盖，因此推出 n<2^169。这里采用的是通用的局部幂接口，不是从“i14 成立”推断“i9 成立”。本轮所需偏移仅 0..8，是其子范围。两个位置必须不同；本文在使用前证明这一点。

A14-CUTS：取 Y≥1，两个 N_2,N_7∈[Y,2Y]、差≤13；当 log Y≥9500000 时，冻结 Padé 接口与下列出版表项给出

    C1: A_2≥Y^(2731/10000) 或 A_7≥Y^(3198/10000),
    C2: A_7≥Y^(1063/10000) 或 A_2≥Y^(3632/10000).

C1 参数为 p=2,q=7,k=3,l=1,a=b=1,D=1,(e,d,f)=(17,17,8)，L=777/500,m0=582。
C2 参数为 p=7,q=2,k=2,l=4,a=1,b=3,D=1,(e,d,f)=(4,4,3)，L=16219/10000,m0=60。
其有效增长输入分别为 BFT 表项 (25,17)、(7,4)。本轮重新以有理区间验收这两行及高度转换；并没有重新证明出版表项、Padé 整性或相邻近似非退化定理。

这条新整行证明不消费那 33 个新 content 家族，也不消费旧 2,284,358 个 content 有限块。归档仍保留旧原件，不能把“逻辑上未使用”写成“原件已删除”或“全项目已去掉出版依赖”。

## 2. 三个最大幂不能共位
若三个 Q_p 的最大位置相同，则三者乘积整除同一个 n−a，故≤n；第四个 Q≤n。因此 ∏Q≤n²。A9-SCALAR 给出 n^7≤R。

精确检查为 108^7≤R<109^7。所以 n≥109 的 E9 对不允许三个最大幂共位。若四种小素数的最大位置总共只有两个，同样有 ∏Q≤n²，结论相同。

任意 n−a 同时含有三种 p^{v_p(n−a)}>8 的小素数幂，就强制三个最大位置共位。这是覆盖全部 j 的行排除条件，不是对素数集合替代完整幂。

## 3. 两个共位最大幂强制互补素数的立方局部界
假设 Q_3,Q_5 共位。Q_3 Q_5≤n，因此

    (Q_2 Q_7)^10 ≥ n^17/R.

由于每个 Q≤n，有 Q_2^10,Q_7^10≥n^7/R，从而

    A_2^10,A_7^10 ≤ R n^3 <2^48 n^3.

当 n≥2^84 时，取三次方并用 n≥2^84，得到

    A_p^30 <2^144 n^9 ≤2^60 n^10,
    A_p^3 <64n ≤128(n−a_p)<216(n−a_p), p=2,7.

最后用了 n−a_p≥n/2。若两个互补位置彼此相同，或与原共位位置相同，总位置数≤2 或出现三重共位，第2节已排除。因此在 E9 的 n≥2^4096 分支，互补位置不同，满足冻结块接口全部位置与立方条件。

## 4. 全局排除 Q3、Q5 共位
取任意 E9 对。由 A9-FINITE，n≥2^4096。

若 Q3,Q5 共位，则第3节成立。若 n<2^14000001，A14-CUBIC-BLOCKS 推出 n<2^169，与 n≥2^4096 矛盾。

于是只能有 n≥2^14000001。取 Y=n/2。所有 N_p∈[Y,2Y]，差≤8；且 log Y≥14000000 log2>9500000。C1、C2 的三个析取分支分别给出乘积指数 3198、3632 或 2731+1063=3794，因 Y≥1，所以统一得到

    A_2 A_7≥Y^(3198/10000).

另一方面，由共位与标量界，(A_2 A_7)^10≤R n³。因此

    (n/2)^(1599/500)≤R n³,
    n^99≤R^500·2^1599<2^25599<2^(259·99).

所以 n<2^259，再次矛盾。结论：**E9 中 Q3 和 Q5 的最大位置不可能共位**。该结论使用了新的跨指标局部接口接合；没有把 i14 定理本身误当成 i9 定理。

## 5. 37 条完整算术进程
九项窗口中恰有一个 9 的倍数，位置 a=n mod9；这是唯一的最大 3 赋值位置。它也能被选为最大 5 赋值位置，当且仅当

    5 | (n−a)，并且 [25 | (n−a) 或 n mod25>8]。

解释：若该项被25整除，则窗口内其他5倍数与它相差5，5赋值为1；若它的5赋值只有1，则只要窗口中没有25倍数，它就是一个最大5位置。窗口有25倍数恰好等价于 n mod25≤8。这个描述说明谓词真正以 lcm(9,25)=225 为周期；不是由几个样本猜测周期性。

225 个余数的完整检查得到

    S225={0,…,8} ∪ {45,…,49} ∪ {90,…,98}
         ∪ {135,…,143} ∪ {184,…,188}.

共37类。因此对每个自然数 n，以及每个 10≤j≤floor(n/2)，

    n mod225∈S225 ⇒ ∃素数 p≥11, p|C(n,9), p|C(n,j).

这是全部 n、全部合法 j 的消费者，不是有限 n 检查。其 n 行的自然密度为37/225；这不等于剩余证明工作的同等比例。

## 6. 约分分母的初等全局高度
令 g=gcd(n,j), α=n/g, β=j/g。则 gcd(α,β)=1，1≤β≤α/2。

### 6.1 α 为7-光滑数
若素数 p≥11 整除 α，则 v_p(n)>v_p(j)。令 q=p^{v_p(n)}。因为 p>9，q|C(n,9)。完整 noCommon 与无进位条件在 n modq=0 时强制 q|j，矛盾。因此 α 只有素因子2、3、5、7。

这里使用 p 的全部指数。没有仅由 p|j 推断 q|j。

### 6.2 大素数幂直接进入行列式因子
对 1≤r≤8，设 T_r 是 n−r 的全部 p≥11 部分。若 q=p^e|n−r，则 p>9 保证 q|C(n,9)。noCommon 给出 j modq=s∈{0,…,r}。由 αj=βn，得到

    q | αs−βr.

若 α∤r，则所有这些因子非零，故

    T_r | ∏_{s=0}^r(αs−βr).

每个 q 的完整指数均被保留。

### 6.3 一个统一实变量界
对实数 0≤y≤r，

    ∏_{s=0}^r |y−s| ≤ r!/4.

若 y 为整数，乘积为0。否则写 y=k+t，0<t<1、0≤k≤r−1，则乘积≤t(1−t)(k+1)!(r−k)!≤r!/4。最后一步来自 (k+1)!(r−k)!≤r!。

代入 y=rβ/α，得到 T_r≤(r!/4)α^{r+1}。

### 6.4 α>12 时的高度
若 α>12 且7-光滑，则至少一个 p^{v_p(α)}>4，因为各分量都≤4 时 α≤4·3=12。该素数的大幂整除 n，因此对 r=1,2,3,4，n−r 的 p 幂部分整除 r。

对其他三个小素数，各从这四项中删去一个最大赋值位置。至少留下一项 n−r。其每种小素数幂都整除一个绝对值≤4 的非零差，故整个7-光滑部分整除 lcm(1,2,3,4)=12。使用6.3，

    n−r≤12·r!·α^{r+1}/4≤72α^5,
    n≤4+72α^5.

这条新高度依赖 α，因此不是绝对有限化；但 g 已有显式上界。当 α≥5，整数性给出 g≤72α^4。

### 6.5 小 α 的有效处理，不额外调用 C 的行族
对 6≤α≤840，改用五项 n−1,…,n−5，各删一个小素数最大位置，留下一项，其光滑部分整除12；所有 r≤5<α。因此

    n≤5+360α^6≤5+360·840^6<2^70.

对 α∈{2,3,4,5}，选 q|α，q分别可取2、3、2、5。在 r∈{1,…,8},q∤r 的位置中，项数至少4；这些项无q因子。删去其他三个小素数最大位置后留下一项，光滑部分≤8!，所有行列式因子非零且绝对值≤40。因此其大素数部分整除 lcm(1,…,40)，有

    n≤8+8!·40!<2^257.

α=1 与 β≤α/2 不相容。所以 α≤840 的 E9 假设全部落入旧 n<2^4096 有限排除。

### 6.6 覆盖无界放大因子 g 的消费者
由6.4及小α处理，若 α≤2^817，则

    n≤4+72·(2^817)^5<2^4096,

与旧有限结果矛盾。故 **全部 α≤2^817 的约分比例，全部放大因子 g，以及全部合法 j，均成立 i9**。本轮没有扩大 n 的有限扫描范围；它把旧有限区间接到了无界 g 的新消费者。

## 7. 两个大分量时再降一次次数；84 个正规形
令 H(n)={p∈{2,3,5,7}:p^{v_p(n)}>8}。如果 |H(n)|≥3，第2节已排除 n≥109。若 H(n) 含3、5，则第4节排除。对于 E9，α>2^817，又 α|S7(n)，因此 H(n) 不为空。故 H(n) 有一个或两个元素，二元情形不能是{3,5}。

若 H(n) 有两个元素，在 n−1,n−2,n−3 中，这两种素数的幂由差 r 控制；各删去其余两种小素数的一个最大位置后，留下一项的全部光滑部分整除6。于是

    n≤3+9α^4,  g≤9α^3.

从而此情形还必须 α>2^1023，因为3+9·(2^1023)^4<2^4096。

H(α) 是 H(n) 的非空子集，也至多二元，且不能为{3,5}。低分量的上限指数是(3,1,1,1)。所以 α 有下列精确有限种形式：

- 一个高分量：α=m p^a，p^a>8，gcd(m,p)=1，m 的其他分量分别≤8。共有56个(p,m)种子；
- 两个高分量：α=m p^a q^b，p^a,q^b>8，{p,q}≠{3,5}，m 的互补分量分别≤8。共有28个(p,q,m)种子。

总共84种，完整清单在 evidence/alpha_normal_forms.json。给定 α 后，β≤α/2、g≤72α^4（高分量二元时可用9α³）均有效。因此剩余仅一或两个素数幂指数仍无界；不能把84个种子叫成84个有限候选或84次检查。

## 8. 全部 j 的稀疏候选行上界
记 S7(n)=2^{v2(n)}3^{v3(n)}5^{v5(n)}7^{v7(n)}。由 α≤S7(n) 与第6节，E9 的行必须

    n≤4+72 S7(n)^5.

因此对任意 n，只要 n>4+72 S7(n)^5，该行的全部合法 j 都满足原题（小n由旧有限证书接收）。这是有效的整行排除，不依赖求出 j 或分解 n 的大素因子。

还有一个不依赖新出版 cuts 的零密度结论：在 [X,2X) 中，X≥2^4096，候选行的 S7(n)≥(X/144)^(1/5)，故某个 p 分量≥(X/144)^(1/20)。按四种素数的最小足够幂计数，候选行数至多

    4·144^(1/20) X^(19/20)+4.

若进一步使用第7节的84种行支持与二高分量四次高度，可得较强显式界

    224·144^(1/5) X^(4/5)
    +56·18^(1/4) (0.5 log2 X+6) X^(3/4).

证明：单素数幂族的 reciprocal tail ≤2/Y；双素数幂族的 tail≤(2log2Y+6)/Y。再用每个光滑 d 的倍数计数≤2X/d，分别取Y=(X/144)^(1/5)、Y=(X/18)^(1/4)，并乘56、28个种子数。这里故意重复计数，只给上界。密度零不等于空集，也不产生两个剩余指数的绝对界。

## 9. 未解决的量词与依赖图

R7 没有减少，i9 没有全域闭合。潜在反例仍需满足 n≥2^4096、n−9非7-光滑（后一项接收自旧 C 行族，不计作本轮新证明）、n mod225不在37类、α>2^817，以及上面的正规形与有限辅助参数界。84种族中，一或两个素数幂指数仍然无界。

新初等高度、α≤2^817 的消费者及粗零密度上界：仅用 Kummer/整除初等推导和旧 i9 有限证书；不需 BFT，也不需 i14 大块。
新最大3/5不共位、37类进程、排除二高分量{3,5}：另外使用旧标量接口、i14 的{2,7}局部块，以及两个出版 Padé 表项及其冻结整性/非退化接口。新脚本重验两条 cut 的数值有效性，不重验旧大块。

## 10. 实验与失败边界
先前中断会话的交通流、直线/圆锥、重用 Padé 包络探针仅视为发现笔记；失去的输出不当成本轮独立验收。没有宣称它们排除了全部松弛点。本轮没有新增种子搜索、没有降低同一20条cut的m0来冒称全局矛盾，也没有把有限回归当成无限证明。

尚未完成其他最大位置二元组合的全局排除。尤其不能从已排除{3,5}共位，推断所有最大位置互异。要进一步排除组合，应先验证互补素数的乘积cut与桥接高度，而不是盲目重复 i14 搜索。
'''
# Remove an intentionally explicit draft-direction reminder: keep only the correct accepted inequality in final proof.
PROOF=PROOF.replace('    K (∏Q_p)^10 ≤?  [注意：正确方向见下行]\n','')
(ROOT/'notes/PROOFS.md').write_text(PROOF)
(ROOT/'evidence/cut_inputs.json').write_text(json.dumps(CUTS,indent=2)+'\n')

# Preserve upstream bytes, and make the source of the adopted interfaces available in the package.
source=Path('/mnt/data/B699-ProA-i14-closed-i9-finite-evidence-20260911.zip')
source_info=[]
if source.is_file():
    dst=ROOT/'adopted-inputs'/source.name
    if not dst.exists():shutil.copy2(source,dst)
    assert hashlib.file_digest(source.open('rb'),'sha256').hexdigest()==hashlib.file_digest(dst.open('rb'),'sha256').hexdigest()
    source_info.append({'file':dst.relative_to(ROOT).as_posix(),'sha256':hashlib.file_digest(dst.open('rb'),'sha256').hexdigest(),'bytes':dst.stat().st_size})
    excerpts=[]
    with zipfile.ZipFile(source) as z:
        for nm in z.namelist():
            if nm.endswith(('notes/PROOFS.md','notes/I9_FINITE.md','HANDOFF.md')):
                txt=z.read(nm).decode('utf-8');lines=txt.splitlines();keep=set()
                for i,line in enumerate(lines):
                    if any(s in line for s in ('216','169','14000001','14,000,001','14000000','4096','9500000','9,500,000')):
                        keep.update(range(max(0,i-3),min(len(lines),i+5)))
                excerpts.append('## '+nm+'\n\n'+'\n'.join(f'{i+1}: {lines[i]}' for i in sorted(keep)))
    (ROOT/'input/FROZEN_INTERFACE_EXCERPTS.md').write_text('# 冻结原文定位（不是重新验收日志）\n\n'+'\n\n'.join(excerpts))
(ROOT/'input/SOURCES.json').write_text(json.dumps(source_info,indent=2)+'\n')

try:
    status=new_checks()
except Exception as e:
    status={'status':'FAILED_NEW_RECEIVING','error':str(e),'traceback':traceback.format_exc(),'warning':'Do not register newly claimed certificate acceptance. Paper derivations and original inputs are preserved.'}
(ROOT/'logs/NEW_CHECKS.json').write_text(json.dumps(status,indent=2)+'\n')
(ROOT/'logs/NEW_CHECKS.txt').write_text(json.dumps(status,indent=2)+'\n')

REPORT='''# B699 · Pro A R7：i9 的新全局消费者与参数归约

**R7仍为{3,4,5,6,7,8,9}，i14冻结成果不变。i9尚未全域闭合。**

本轮交付两条不同依赖等级的推进。

## 一、37类模225整行闭合
对每个自然数n、每个10≤j≤floor(n/2)，若n mod225位于

    0..8，45..49，90..98，135..143，184..188，

则存在同一素数p≥11整除C(n,9)和C(n,j)。这是37条完整算术进程，包含无界n与全部合法j。

关键新链：最大3幂、5幂共位 ⇒ 互补2/7幂满足立方局部界 ⇒ 用i14冻结块接过中段 ⇒ 两条出版cut推出n<2^259，与所在高度矛盾。逻辑上只使用两条出版表项，不使用33个新content家族及228万个content有限块。

## 二、将旧有限n结论接到无界放大因子
写α=n/gcd(n,j)。新的初等证明给出：noCommon且α>12时，n≤4+72α^5。因此**所有α≤2^817的比例，全部放大因子g，均已覆盖**。有两个高小素数分量时加强为n≤3+9α^4，对应覆盖α≤2^1023。

潜在反例的α必须7-光滑，且仅有一或两种超过8的小素数幂；二元组合不能是{3,5}。具体归为56个单高幂种子、28个双高幂种子，共84种。给定指数后，β≤α/2且g≤72α^4（双高幂时g≤9α³）。**84是族数，不是有限候选数；一或两个素数幂指数仍无界。**

另得全部j的行消费者：n>4+72S7(n)^5时该行成立，并有显式零密度候选行上界。密度零不等于没有反例。

## 证据与核验

新检查状态见logs/NEW_CHECKS.json。接收脚本只做有理区间/整数检查，不做Padé、CRT或种子发现搜索。旧i14大块、旧i9有限证书按冻结接口接收，本轮未重新运行；未Lean化、未外部人工审读。

完整推导：notes/PROOFS.md。源码：code/build_delivery.py。精确cut接收：evidence/two_published_cuts_receiving.json。37类与84种正规形分别有完整有限清单。

## 下一接续点
优先尝试把剩下五种共位组合对应的互补乘积cut接到同一立方桥，或者在84种α族上用α、β、g的联合算术消去最后一或两个指数。不再回到旧content-G搜索，不把扫描上界扩大当成整指标闭合。
'''
REPORT+='\n实际新接收摘要：\n\n```json\n'+json.dumps(status,indent=2)+'\n```\n'
(ROOT/'REPORT.md').write_text(REPORT)
(ROOT/'HANDOFF.md').write_text('''# 接续 Pro A

先读REPORT.md、SESSION_STATE.json、notes/PROOFS.md第1–5节（冻结接口接合）及第6–9节（初等高度和仍未解量词）。

旧i14闭合不变。不要重做旧搜索。新主张的接收状态必须以logs/NEW_CHECKS.json为准；即使PASS也不代表旧大块本轮重放，更不代表Lean。

重点审读A14-CUBIC-BLOCKS消费的完整量词，原件在adopted-inputs；原文定位在input/FROZEN_INTERFACE_EXCERPTS.md。该接口是局部立方幂排除，不是直接跨指标引用i14结论。

剩余：i9的84种α正规形中的一或两个素数幂指数没有绝对上界；β、g只有依α的显式上界。其他R7指标本轮未登记新闭合。

候选下一路线：共位组合的互补乘积cut；特别区分已经排除3/5共位与尚未排除的组合。探索中断时的浮点可行点不能当作原题反例或完备方法下界。
''')
state={'phase':'new-paper-results-delivered','frontier':[3,4,5,6,7,8,9],'i14':'unchanged frozen global paper+exact certificate, not Lean','new_results':['i9 maximum-3/maximum-5 non-coincidence via frozen local interfaces','37 residue classes modulo225 all n,j','n<=4+72 alpha^5 and all alpha<=2^817 consumers','two-high n<=3+9 alpha^4 and alpha<=2^1023 consumers','84 necessary alpha normal forms; at most two unbounded prime exponents','effective all-j smooth-part row consumer and zero-density bound'],'new_receiving':status,'old_replay_this_turn':False,'remaining_unbounded':['one or two prime-power exponents in alpha','n remains unbounded through alpha'],'other_parameters':'beta<=alpha/2; g<=72 alpha^4, or9 alpha^3 in two-high case','next':'check complementary product-cuts for other co-location pairs before any new large computation'}
(ROOT/'SESSION_STATE.json').write_text(json.dumps(state,indent=2)+'\n')
(ROOT/'notes/FAILURE_BOUNDARIES.md').write_text('''# 失败边界与未验收事项

- R7没有减少。84个正规形种子不是有限解集，两个剩余素数幂指数没有绝对高度。
- 旧20条cuts的松弛可行点仍是有效失败边界；本轮没有声称降低同组m0可以消除它。
- 早先交通流、所有线/所选圆锥与重用包络探针的工作文件在中断中丢失；只保留发现记录，不补写未做的精确验收。
- 不从37类整行结论推断全部n，也不从候选行密度零推断空集。
- 新37类结论依赖两个明确出版表项和冻结的Padé整性/非退化接口；新数值接收没有证明这些出版输入。
- 旧大块本轮未重放，33个新content家族逻辑上未用于新37类证明，但它们仍属于冻结i14成果。
- 除3/5之外的最大位置共位组合尚未全局排除。
''')

# Complete selected delivery, not the large working extraction tree.
selected=[]
for base in ('code','notes','evidence','logs','input','adopted-inputs'):
    selected.extend(p for p in (ROOT/base).rglob('*') if p.is_file() and '__pycache__' not in p.parts)
selected += [ROOT/n for n in ('REPORT.md','HANDOFF.md','SESSION_STATE.json')]
selected=sorted(set(selected))
manifest=''.join(hashlib.file_digest(p.open('rb'),'sha256').hexdigest()+'  '+p.relative_to(ROOT).as_posix()+'\n' for p in selected)
(ROOT/'SHA256SUMS').write_text(manifest)
archive=Path('/mnt/data/B699-ProA-R7-i9-global-constraints-evidence-20260912.zip')
with zipfile.ZipFile(archive,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=6) as z:
    for p in selected+[ROOT/'SHA256SUMS']:
        # Original zip bytes are included without attempting a redundant costly recompression.
        c=zipfile.ZIP_STORED if p.suffix=='.zip' else zipfile.ZIP_DEFLATED
        z.write(p,'B699-ProA-R7-collision-20260912/'+p.relative_to(ROOT).as_posix(),compress_type=c)
with zipfile.ZipFile(archive) as z:assert z.testzip() is None
report=Path('/mnt/data/B699-ProA-R7-i9-global-constraints-report-20260912.md')
shutil.copy2(ROOT/'REPORT.md',report)
assert archive.is_file() and report.is_file()
print(json.dumps({'new_status':status['status'],'zip':str(archive),'zip_bytes':archive.stat().st_size,'report':str(report),'members':len(selected)+1,'sha256':hashlib.file_digest(archive.open('rb'),'sha256').hexdigest()},indent=2))
