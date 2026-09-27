"""Discovery only: requires SymPy. Replay/verification is standard-library only.
Writes only this package's NEW k=5 certificates; never reads old ledgers.
"""
from pathlib import Path
import json, math, hashlib, sys, time
import sympy as sp
from core import *
ROOT=Path(__file__).resolve().parents[1]
CERT=ROOT/'certificates'

def dump(name,data): (CERT/name).write_bytes(canonical_json(data))
def factor(n): return [[int(p),int(e)] for p,e in sp.factorint(n).items()]
def encode(expr,vs):
    return [[list(m),int(c)] for m,c in sp.Poly(sp.expand(expr),*vs).terms()]

def build_algebra():
    d,z,a=sp.symbols('d z a');vs=(d,z,a); records=[]
    for u in (1,2):
        for e in (-1,1):
            for name,residual,hpoly in symbolic_identities(u,e):
                expr=sum(sp.Integer(c)*sp.prod(v**r for v,r in zip(vs,m)) for m,c in residual.items())
                H=u*d-5*z+1
                quo,rem=sp.div(expr,H,*vs)
                assert rem==0 and all(c.q==1 for c in sp.Poly(quo,*vs).coeffs())
                records.append({'name':name,'u':u,'epsilon':e,'quotient':encode(quo,vs)})
    t=sp.symbols('t');inequalities=[]
    for e,N,C in [(-1,13,34776),(1,314,977184)]:
        zz=t+N;f=sp.expand(5*(5*zz-1)**4-C*zz**3)
        assert all(c>0 for c in sp.Poly(f,t).all_coeffs())
        inequalities.append({'epsilon':e,'threshold':N,'capacity_coefficient':C,'coefficients_ascending':[int(f.coeff(t,i)) for i in range(5)]})
    A=70*t*t+41*t+5;B=8750*t*t+4900*t+561;P=350*t*t+198*t+23;Q=1750*t*t+1015*t+122
    z0=10*t+3;a0=14*t+4;d0=25*t+7;n=P*Q+1;j=Q*(z0*a0-2)
    zero={
      'A':encode(A,(t,)),'B':encode(B,(t,)),
      'n':encode(n,(t,)),'j':encode(j,(t,)),
      'gap':encode(B-3*(100*t+29)*(25*t+6),(t,)),
      'A_at_4s_plus_3_over_2':encode(sp.expand(A.subs(t,4*t+3)/2),(t,))
    }
    assert sp.expand(n-2-A*B)==0
    dump('algebra.json',{'variables':['d','z','a'],'source_identities':records,'thresholds':inequalities,'zero_branch':zero})

def build_terminals():
    out={};total=0
    for u in (1,2):
        for e in (-1,1):
            data,summary=csv_bytes(rows_A(u,e))
            name=f'k5-u{u}-e{e}.csv'
            (CERT/name).write_bytes(data)
            summary.update(file=name,sha256=hashlib.sha256(data).hexdigest(),z_upper=BOUNDS[(u,e)])
            out[f'u{u}_e{e}']=summary;total+=summary['counts']['rows']
    dump('terminal-summary.json',{'total':total,'branches':out,'all_T2_rejected':True,'prime_power_filter_used':False})

def describe(u,e,z,a,label,kind='actual-row'):
    v=reconstruct(u,e,z,a);P,Q,n,j=[v[s] for s in ('P','Q','n','j')]
    pf=factor(P);qf=factor(Q);nf=factor(n);ff=factor(n-2)
    valid=len(pf)==len(qf)==1 and pf[0][0]!=qf[0][0]
    assert valid if kind=='actual-row' else True
    p_luc=[lucas(n,j,p) for p,_ in pf];q_luc=[lucas(n,j,p) for p,_ in qf]
    if kind=='actual-row':assert all(p_luc+q_luc)
    active=[]
    for p,E in ff:
        if p>=3 and binomial_v(n,3,p)>0:
            active.append({'prime':p,'full_exponent':E,'full_power':p**E,'j_residue':j%(p**E),
                           'binomial3_v':binomial_v(n,3,p),'binomialj_v':binomial_v(n,j,p)})
    witnesses=[w['prime'] for w in active if w['binomialj_v']>0]
    assert witnesses
    return dict(label=label,kind=kind,parameters=dict(u=u,epsilon=e,z=z,a=a),
                P=P,Q=Q,n=n,j=j,P_factorization=pf,Q_factorization=qf,n_factorization=nf,F_factorization=ff,
                true_two_complete_distinct_powers=valid,P_lucas=p_luc,Q_lucas=q_luc,
                T0=v['T0'],T0_divides_j=(j%v['T0']==0),T0_remainder=j%v['T0'],
                T2=v['T2'],C=list(v['C']),Lambda=v['Lambda'],
                T2_divides_Lambda=(v['Lambda']%v['T2']==0) if v['Lambda'] else None,
                active_full_T2=active,witnesses=witnesses)

def build_examples():
    specs=[(1,-1,3,9,'U1-prime-square-and-3'),(1,1,7,18,'U1-positive'),
           (1,1,11,39,'U1-Q-square'),(1,1,11,37,'U1-size-pass-actual'),
           (2,-1,9,13,'U2-negative-terminal'),(2,1,9,12,'U2-positive-and-3'),
           (2,1,17,24,'U2-size-pass-actual'),(2,-1,433,606,'ZERO-t43-actual')]
    rows=[describe(*p) for p in specs]
    weak=describe(2,-1,156833,219566,'ZERO-overlap-t15683','weak-integer-not-NC')
    t=15683;A=70*t*t+41*t+5;B=8750*t*t+4900*t+561
    weak['overlap']={'t':t,'A':A,'B':B,'gcd':math.gcd(A,B),'ell':10111,
                     'v_A':valuation(A,10111),'v_B':valuation(B,10111),
                     'v_F':valuation(weak['n']-2,10111),'v_j':valuation(weak['j'],10111)}
    rows.append(weak)
    dump('examples.json',{'rows':rows,'actual_rows':len(specs),'weak_rows':1})
    # Include all size-pass models with exact flags, rather than falsely labeling them actual rows.
    summaries=json.loads((CERT/'terminal-summary.json').read_text())
    sizepasses=[]
    for br in summaries['branches'].values():
        for r in br['size_pass']:
            pf=factor(r['P']);qf=factor(r['Q'])
            true=len(pf)==len(qf)==1 and pf[0][0]!=qf[0][0]
            sizepasses.append(dict(u=r['u'],epsilon=r['epsilon'],z=r['z'],a=r['a'],
              P=r['P'],Q=r['Q'],P_factorization=pf,Q_factorization=qf,true_two_complete_distinct_powers=true,
              full_P_lucas=lucas(r['n'],r['j'],pf[0][0]) if len(pf)==1 else None,
              full_Q_lucas=lucas(r['n'],r['j'],qf[0][0]) if len(qf)==1 else None,
              T2=r['T2'],Lambda=r['Lambda'],remainder=r['remainder']))
    dump('size-pass-audit.json',{'rows':sizepasses,'count':len(sizepasses)})

def build_binomials():
    examples=json.loads((CERT/'examples.json').read_text())['rows']
    r=examples[0];n=r['n'];j0=r['j']
    ps=[p for p,e in factor(math.comb(n,3)) if p>=3]
    out=io.StringIO(newline='');w=csv.writer(out,lineterminator='\n');w.writerow(['j','witness','v_binomial3','v_binomialj'])
    for j in range(4,n//2+1):
        v=[p for p in ps if not lucas(n,j,p)]
        assert v
        p=v[0];assert binomial_v(n,3,p)>0 and binomial_v(n,j,p)>0
        w.writerow([j,p,binomial_v(n,3,p),binomial_v(n,j,p)])
    dat=out.getvalue().encode();(CERT/'small-row.csv').write_bytes(dat)
    js=sorted(set(list(range(4,20))+[n//3,n//2-1,n//2,j0]))
    direct=[]
    c3=math.comb(n,3)
    for j in js:
        cj=math.comb(n,j);g=math.gcd(c3,cj);wv=next(p for p in ps if g%p==0)
        direct.append(dict(n=n,j=j,prime=wv,v3=valuation(c3,wv),vj=valuation(cj,wv)))
    dump('binomial-regression.json',{'P':r['P'],'Q':r['Q'],'n':n,'source_primes':ps,
          'source_factorization':factor(c3),'row_count':n//2-3,'file':'small-row.csv',
          'sha256':hashlib.sha256(dat).hexdigest(),'direct':direct})

if __name__=='__main__':
    begin=time.perf_counter()
    build_algebra();build_terminals();build_examples();build_binomials()
    log={'status':'PASS','phase':'NEW_K5_CERTIFICATE_DISCOVERY','elapsed_seconds':time.perf_counter()-begin,
         'old_k4_or_k3_ledgers_read':False,'sympy_version':sp.__version__,
         'algebra_source_identity_count':16,'terminal_rows':106465,
         'note':'Discovery creates certificates. Offline verifier independently accepts them.'}
    (ROOT/'logs/discovery.json').write_bytes(canonical_json(log));print(json.dumps(log,ensure_ascii=False,indent=2))
