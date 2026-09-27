#!/usr/bin/env python3
"""Independent-formula certificate receiver; does not import the generator.
It checks finite proofs and exact identities, not the historical NC3 reduction.
"""
from __future__ import annotations
import argparse, hashlib, json, math, sys, zipfile
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'): sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
T=((18817,32592,9408),(10864,18817,5432),(0,0,1))

def require(ok: bool, message: str) -> None:
    if not ok: raise AssertionError(message)

def digest(p: Path) -> str: return hashlib.sha256(p.read_bytes()).hexdigest()

def states(mod: int) -> list[list[int]]:
    result=[]; vector=(1,1,1); seen=set()
    while vector not in seen:
        seen.add(vector); result.append(list(vector[:2]))
        vector=tuple(sum(T[i][j]*vector[j] for j in range(3))%mod for i in range(3))
        require(len(result)<100001, 'orbit too large')
    require(vector==(1,1,1),f'first return mod{mod}')
    return result

def value(d: int,y: int,a: int,b: int,m: int) -> int:
    v=a*y
    return (v*(v*(v*(v+5*d)+10*d*d)+10*d**3)+5*d**4+d*d*b*y)%m

def actual_row(modrows: list[list[int]],q: int,a: int,p: int) -> dict:
    d,y=modrows[q%len(modrows)]
    quotient,remainder=divmod(3*d-3,a)
    require(remainder==0,'nonintegral quotient in actual row')
    b=quotient%p; s=value(d,y,a,b,p)
    roots=[i for i in range(p) if pow(i,2,p)==s]
    return {'q':q,'d':d,'y':y,'B':b,'S':s,'roots':roots}

def pell_linear(k: int) -> tuple[int,int]:
    u,x=1,0
    for _ in range(k): u,x=2*u+3*x,u+2*x
    return u,x

# An exact multivariate polynomial ring over Z, used only for formal identities.
N=8
class Poly:
    def __init__(self, terms):
        if isinstance(terms,int): terms={(0,)*N:terms}
        self.terms={k:v for k,v in terms.items() if v}
    def __add__(self,other):
        if not isinstance(other,Poly):other=Poly(other)
        z=self.terms.copy()
        for k,v in other.terms.items():z[k]=z.get(k,0)+v
        return Poly(z)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.terms.items()})
    def __sub__(self,other):return self+-other if isinstance(other,Poly) else self+(-other)
    def __rsub__(self,other):return -self+other
    def __mul__(self,other):
        if not isinstance(other,Poly):other=Poly(other)
        z={}
        for k,v in self.terms.items():
            for l,w in other.terms.items():
                e=tuple(a+b for a,b in zip(k,l));z[e]=z.get(e,0)+v*w
        return Poly(z)
    __rmul__=__mul__
    def __pow__(self,n):
        require(isinstance(n,int) and n>=0,'polynomial exponent')
        r=Poly(1)
        for _ in range(n):r=r*self
        return r

def variable(i):return Poly({tuple(int(k==i) for k in range(N)):1})

def formal_interfaces():
    d,v,nu,h,W,A,B,y=[variable(i) for i in range(N)]
    Q=d+v;P=Q+h*v
    lhs=v*(d*nu-Q**2)**2-Q**5+d**2
    rhs=d**2*(v*nu**2-P*Q**2+1)+d*v*Q**2*(h*d-Q-2*nu)
    require(not (lhs-rhs).terms,'source identity 1')
    S=v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+d**2*W
    require(not (v*S-Q**5+d**2-d**2*(v*W-d**3+1)).terms,'source identity 2')
    require(not (A*B*y**2-d**3+1-y**2*(A*B-3*(d-1))-(d-1)*(3*y**2-d**2-d-1)).terms,'source identity 3')
    x=v
    f=5*(1+3*x**2)**2*x+30*(1+3*x**2)*x**3+9*x**5
    require(not (f-x*(5+60*x**2+144*x**4)).terms,'fifth angle polynomial')

def verify(cdir: Path) -> dict:
    names=sorted(p.name for p in cdir.glob('*.json'))
    require(len(names)==8,'expected exactly eight certificates')
    C={name:json.loads((cdir/name).read_text()) for name in names}
    a=C['01_exact_quotient5.json']
    for m in [500,2500]:require(a['orbits'][str(m)]==states(m),f'all source orbit mod{m}')
    require(len(a['orbits']['500'])==75 and len(a['orbits']['2500'])==375,'quotient periods')
    for modulus,span in [(5,5),(25,25)]:
        rowset=states(100*modulus)
        table=[dict(r=r,**actual_row(rowset,45+60*r,100,modulus)) for r in range(span)]
        require(a[f'r_mod{modulus}']==table,f'actual B mod{modulus}')
        keep=[r['r'] for r in table if r['roots']]
        require(a[f'allowed_r_mod{modulus}']==keep,f'allowed r mod{modulus}')
        require((60*span)%len(rowset)==0,'progression repeats exactly')
    require(a['allowed_r_mod5']==[2,3,4],'correct zero-square treatment mod5')
    require(a['allowed_r_mod25']==[2,4,7,9,12,13,14,17,19,22,24],'mod25 kept r')
    for item in a['r_mod5']:
        require(item['B']==(item['r']+2)%5 and item['S']==item['B'],'B/S linear r formula')
    print('PASS 01: exact source quotient modulo5/25; full finite periods; zero squares kept')
    b=C['02_A100_all_rows_mod29.json']
    require(b['orbit25']==states(25) and len(b['orbit25'])==15,'mod25 source gate')
    require(b['d_eq1_mod25_indices']==[i for i,row in enumerate(states(25)) if row[0]==1]==[0],'all q satisfying 25|d-1')
    require(b['orbit29']==states(29) and len(b['orbit29'])==15,'mod29 complete orbit')
    require(states(29)[0]==[1,1],'initial state mod29')
    require(b['positive_q_multiple']==15 and b['A']==100 and b['A_mod29']==13,'closure premises')
    inv=pow(100,-1,29); B29=(3*(1-1)*inv)%29
    val=value(1,1,100,B29,29)
    require(b['at_q_0_mod15']==dict(d_mod29=1,y_mod29=1,B_mod29=0,S_mod29=17),'source S mod29')
    require(val==17,'target value mod29')
    residues=sorted({i*i%29 for i in range(29)})
    require(b['quadratic_residues29']==residues and 17 not in residues,'nonsquare 17 mod29')
    require(b['euler_power']==pow(17,14,29)==28,'Euler crosscheck')
    require(b['S_representative']==105101005,'unreduced polynomial representative')
    print('PASS 02: A100 all positive rows excluded by exact mod25 -> period15 -> mod29')
    c=C['03_general_25_mod29.json']; sq=set(residues)
    # Horner coefficients avoid duplicating the generator expression.
    def f(a):return ((((a+5)*a+10)*a+10)*a+5)%29
    values=[f(a) for a in range(29)]
    bad=[a for a in range(1,29) if f(a) not in sq]
    bad725=[a for a in range(725) if a%25==0 and a%29 in bad]
    require(c['polynomial_coefficients_ascending']==[5,10,10,5,1],'general polynomial')
    require(c['values_mod29']==values and c['bad_A_mod29']==bad,'all general residue values')
    require(c['bad_A_mod725']==bad725 and len(bad)==len(bad725)==16,'conditional 16-class gate')
    require(c['excluded_residue0_mod29'] is False and 0 not in bad,'do not divide by A when 29|A')
    print('PASS 03: all 16 generalized A classes; 29|A correctly left untouched')
    d=C['04_SPLIT5_CAP_and_valuation.json']
    gamma=[]
    for q in range(3):
        u,x=pell_linear(4*q)
        gamma.append(dict(q_mod3=q,U4q_mod5=u%5,X4q_mod5=x%5,U4q1_mod5=(2*u+3*x)%5))
    require(d['gamma_mod5']==gamma,'order-three source states')
    require(pell_linear(12)==(d['U12'],d['X12'])==(3650401,2107560),'Pell12 exact base')
    require(d['X12_mod25']==10,'base v5=1')
    for k in range(6):
        u,x=pell_linear(12*k)
        require(u%25==1 and x%25==10*k%25,'base m modulo5, hence all m')
    require(d['fifth_angle_factor_ascending']==[5,0,60,0,144],'five-fold multiplier')
    require((5+60*25+144*625)%25==5,'multiplier v5=1 if x divisible5')
    require(d['valuation_identity']=='v5(d-1)=1+v5(q)','valuation statement')
    cfg=[];sq25={x*x%25 for x in range(25)}
    for D in range(25):
        for Y in range(25):
            if D%5!=1 or Y%5!=1 or (D*D+D+1-3*Y*Y)%25: continue
            for AA in range(25):
                if AA%5:continue
                for BB in range(25):
                    if (AA*BB-3*(D-1))%25:continue
                    ss=value(D,Y,AA,BB,25);ok=ss in sq25
                    cfg.append([D,Y,AA,BB,ss,ok])
                    if BB==0:require(ss==5 and not ok,'5|A,25|B contradiction')
                    if BB%5==0 and ok:require(BB==20,'v5(B)=1 unit fixed')
                    if BB%5!=0 and ok:require(BB%5 in (1,4),'unit B square residue')
    require(d['universal_mod25_checks']==cfg,'all universal cap finite checks')
    print('PASS 04: SPLIT5 cap, fifth-angle/base exact identities, universal modular crosscheck')
    e=C['05_frontier_CRT_product.json'];parent=json.loads((ROOT/'inputs/parent_frontier.json').read_text())
    old=parent['surviving_A_residues'];m=parent['new_A_modulus'];count=len(old)
    require(digest(ROOT/'inputs/parent_frontier.json')==e['parent_frontier_sha256'],'parent frontier hash')
    require(old==sorted(set(old)) and len(old)==118548 and all(0<=x<m and x%2==0 for x in old),'adopted parent list integrity')
    require(m==e['parent_modulus']==3031056 and count==e['parent_surviving_classes'],'parent metadata')
    require(e['new_gate_modulus']==725 and e['bad_new_residues']==bad725,'frontier gate')
    require(math.gcd(m,725)==e['gcd_of_moduli']==1,'CRT coprimality')
    require((m*e['CRT_multiplier_inverse'])%725==1,'CRT inverse')
    require({m*k%725 for k in range(725)}==set(range(725)),'CRT lift bijection')
    require(e['new_modulus']==m*725==2197515600,'joint modulus')
    require(e['parent_lift_classes']==count*725==85947300,'lifted count')
    require(e['newly_excluded_classes']==count*16==1896768,'exact removed count')
    require(e['surviving_classes']==count*709==84050532,'exact kept count')
    least=min(a for a in old if a>0 and a%725 not in bad725)
    require(least==e['least_positive_surviving_A']==144,'minimum positive projection')
    require([a for a in old if 0<a<144]==e['new_fixed_minimum_branch_closed']==[100],'new minimum branch')
    print('PASS 05: exact CRT product counts; no large-lift enumeration; minimum necessary A144')
    fcert=C['06_boundary_local_family.json'];q0=fcert['q0'];stride=fcert['q_stride']
    require(q0==165 and stride==1500 and fcert['A']==100,'weak diagnostic family')
    for pstr,rec in fcert['modular'].items():
        p=int(pstr);rows=states(100*p);period=len(rows)//math.gcd(stride,len(rows))
        require(rec['lifted_modulus']==100*p and rec['pell_period']==len(rows) and rec['progression_period']==period,'weak full progression periods')
        require(rec['initial']==actual_row(rows,q0,100,p),'weak initial exact quotient')
        vals=[actual_row(rows,q0+k*stride,100,p)['S'] for k in range(period)]
        require(rec['S_values']==vals,'whole weak progression values')
    require(fcert['modular']['25']['S_values']==[24] and fcert['modular']['29']['S_values']==[17],'weak family already killed by29')
    sample=fcert['sample'];q=sample['q'];u,x=pell_linear(8*q+1)
    dd=(3*x-1)//2;yy=u//2;bb,rem=divmod(3*(dd-1),100);vv=100*yy;QQ=dd+vv
    require(rem==0 and bb%4==0,'exact diagnostic source quotient')
    SS,rem=divmod(QQ**5-dd*dd,vv)
    require(rem==0 and dd*dd+dd+1==3*yy*yy,'exact diagnostic norm')
    floor=math.isqrt(SS)
    expected=dict(q=q,d=str(dd),y=str(yy),B=str(bb),Q=str(QQ),S=str(SS),floor_sqrt_S=str(floor),lower_gap=str(SS-floor*floor),upper_gap=str((floor+1)**2-SS))
    require(sample==expected and floor*floor<SS<(floor+1)**2,'exact non-square diagnostic')
    require(fcert['not_a_remaining_frontier_model'] is True,'boundary classification')
    print('PASS 06: infinite low-five-adic weak family; entire family fails29; one exact diagnostic')
    src=C['07_source_adoption.json'];pz=ROOT/'inputs/parent_A42_evidence.zip'
    require(src['parent_sha256']==digest(pz)=='8fe240451e6261726a9663805530629a83d6f94ec133e9128fa8b7e3d1882637','parent raw bytes')
    with zipfile.ZipFile(pz) as z:
        require(z.testzip() is None and src['parent_zip_crc_ok'],'parent CRC')
        for filename,meta in src['adopted_members'].items():
            data=(ROOT/'inputs'/filename).read_bytes()
            require(data==z.read(meta['source_member']) and hashlib.sha256(data).hexdigest()==meta['sha256'],'adopted member identity')
    require(src['overview_sha256']==digest(ROOT/'inputs/OVERVIEW-2026-09-22.md.txt'),'overview bytes')
    require(src['old_proofs_rerun'] is False and src['repository_operations']==[],'scope of source check')
    print('PASS 07: frozen-source hashes and exact extracted members; no parent proof rerun')
    require(C['08_same_input_polynomial_interface.json']['source_n']=='n=PQ*nu+2=c*2^s; c in {1,3}','source n notation')
    formal_interfaces()
    print('PASS 08: three original-input polynomial identities plus fifth-angle formal equality')
    result={'status':'PASS','certificates':8,'minimum_A_in_recorded_projection':144,
            'newly_excluded_A_classes_relative_to_CRT_lift':1896768,
            'historical_NC3_reduction':'adopted author-level premise',
            'independent_external_review':False,'Lean':False}
    print(json.dumps(result,sort_keys=True))
    return result

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--cert-dir',type=Path,default=ROOT/'certificates')
    args=parser.parse_args();verify(args.cert_dir)
if __name__=='__main__':main()
