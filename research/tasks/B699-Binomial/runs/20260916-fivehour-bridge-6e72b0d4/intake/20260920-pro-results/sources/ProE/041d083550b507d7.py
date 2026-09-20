from __future__ import annotations
import json, math, sys
from pathlib import Path
from poly import expected, NAMES

def iso3(v:int)->int:
    return 3 if v%3==0 and v%9!=0 else 1

def table():
    factors=[[(1,0),(4,-1),(1,-1)],[(4,1),(1,0),(4,1)],[(1,-3),(4,-15),(1,-4)]]
    caps=[2,1,4]
    records=[]
    for c,row in enumerate(factors):
        bounds=[max(abs(a*0+b),abs(a*caps[c]+b)) for a,b in row]
        for pair in [(0,1),(0,2),(1,2)]:
            unique=[]
            for s in pair:
                if row[s] not in unique:unique.append(row[s])
            coefficient=math.prod(max(abs(b),abs(a*caps[c]+b)) for a,b in unique)
            records.append({'c':c,'slots':list(pair),'factors':[list(e) for e in unique],
                            'm_degree':2*len(unique),'bound_coefficient':coefficient})
    return {'caps':caps,'factors':[[list(e) for e in r] for r in factors],'pairs':records}

def prime_check(n,cert,done=None):
    if done is None:done=set()
    if n in done:return
    if n==2:
        assert cert.get('2')=={'factors':[],'witnesses':{}},'base prime certificate'
        done.add(n);return
    assert n>2 and n%2,'candidate prime parity'
    rec=cert[str(n)];fac=rec['factors']
    assert fac==sorted(fac) and len({p for p,e in fac})==len(fac)
    assert math.prod(p**e for p,e in fac)==n-1
    assert set(rec['witnesses'])=={str(p) for p,e in fac}
    for p,e in fac:
        assert isinstance(e,int) and e>=1 and 2<=p<n
        prime_check(p,cert,done)
        a=rec['witnesses'][str(p)]
        assert 1<a<n and pow(a,n-1,n)==1
        assert math.gcd(pow(a,(n-1)//p,n)-1,n)==1
    done.add(n)

def row_check(r,cert):
    X=2**41;P=8831418697;m=249;d=iso3(X-1)
    assert r=={
        'X':X,'n':2*X*X,'exponent_n':83,'P':P,'p':P,'h':1,'m':m,'d3':d,
        'factor_Xminus':[[13367,1],[164511353,1]],
        'factor_Xplus':[[3,1],[83,1],[P,1]],
        'new_threshold':64*d*m**3,'previous_negative_threshold':542*m**5,
        'omega_K':4,'omega_M':5}
    for key,number in [('factor_Xminus',X-1),('factor_Xplus',X+1)]:
        assert math.prod(p**e for p,e in r[key])==number
        for p,e in r[key]:prime_check(p,cert)
    assert X%2==0 and m*P==X+1 and math.gcd(m,P)==1
    assert P>=64*d*m**3 and P<542*m**5
    assert len(r['factor_Xminus'])-(1 if d==3 else 0)<=2
    assert sum(1 for p,e in r['factor_Xminus']+r['factor_Xplus'])==5
    assert iso3(X*X-1)==3 and iso3(X+1)==3

def legendre(n,j,p):
    result=0;q=p
    while q<=n:
        result+=n//q-j//q-(n-j)//q;q*=p
    return result

def shell():
    t=2;m=t**3-1;r=[3*m*m-t,15*m*m-4*t,(4*m*m-t)//2]
    R=math.prod(r);P=(R+2)//m;X=m*P-1
    # All congruences are for b, not a new original input.
    mods=r;res=[(-m)%r[0],(-m*pow(2,-1,r[1]))%r[1],0]
    b=0;M=1
    for q,a in zip(mods,res):
        b+=M*((a-b)*pow(M,-1,q)%q);M*=q
    j=b*P+2;n=2*X*X;N=n-1;K=(X*X-1)//iso3(X*X-1)
    return {'t':t,'m':m,'r':r,'R':R,'P':P,'X':X,'b':b,'j':j,'n':n,
            'legal':4<=j<=n//2,'g':math.gcd(n,j),'W1_remainder':j*(j-1)%N,
            'W2_full_remainder':j*(j-1)*(j-2)%K,'opposite_remainder':j*(j-1)*(j-2)%R,
            'slots':[j%q for q in r],'p_witness':5,
            'v_binom_n3':legendre(n,3,5),'v_binom_nj':legendre(n,j,5),
            'P_factorization':[[3,1],[31,1],[113,1],[139,1]]}

def validate(c):
    assert set(c)=={'format','names','polynomials','slot_table','prime_certificates','row','shell','iso3_tests'}
    assert c['format']=='B699-E-TWO-SLOT-CUBIC-v1'
    assert c['names']==list(NAMES)
    assert c['polynomials']==expected(),'polynomial coefficients'
    assert c['slot_table']==table(),'source allocation table'
    for row in c['slot_table']['pairs']:
        assert row['bound_coefficient']<=60
        assert row['m_degree'] in (2,4)
    pc=c['prime_certificates']
    for n in pc:prime_check(int(n),pc)
    row_check(c['row'],pc)
    assert c['shell']==shell(),'relaxed shell diagnostic'
    sh=c['shell'];assert sh['legal'] and sh['W1_remainder'] and sh['opposite_remainder']==0
    assert sh['v_binom_n3']>0 and sh['v_binom_nj']>0
    assert c['iso3_tests']==[[1,1],[3,3],[9,1],[27,1],[15,3],[45,1],[63,1]]
    for n,d in c['iso3_tests']:assert iso3(n)==d
    return True

if __name__=='__main__':
    path=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).resolve().parents[1]/'certificates/certificate.json'
    validate(json.loads(path.read_text()))
    print('PASS_PRIMARY_COEFFICIENTS_COMPLETE_SLOTS_AND_LUCAS_CERTIFICATES')
