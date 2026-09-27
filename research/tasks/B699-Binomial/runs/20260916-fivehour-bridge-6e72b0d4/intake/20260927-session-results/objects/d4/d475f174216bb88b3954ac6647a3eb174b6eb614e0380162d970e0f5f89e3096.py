"""Exact characteristic-zero recovery and source-order certificates for this round.
Only fractions and polynomial dictionaries. No floating point, CAS, or network.
"""
from fractions import Fraction as F
from pathlib import Path
import json
from exact_minors import integer_columns, jet, poly_mul as mul, poly_add as add, scalar, bareiss

def dump(p,x):
    p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')

def encode(f):
    return [[a,b,F(v).numerator,F(v).denominator] for (a,b),v in sorted(f.items())]

def rref(a,n):
    a=[[F(x) for x in r] for r in a]; piv=[]; rr=0
    for c in range(n):
        ix=next((i for i in range(rr,len(a)) if a[i][c]),None)
        if ix is None: continue
        a[rr],a[ix]=a[ix],a[rr]; val=a[rr][c]
        a[rr]=[x/val for x in a[rr]]
        for i in range(len(a)):
            if i!=rr and a[i][c]:
                val=a[i][c]; a[i]=[x-val*y for x,y in zip(a[i],a[rr])]
        piv.append(c); rr+=1
        if rr==len(a): break
    return a,piv

def coords(polys,H):
    mons=sorted(set(H)|{m for f in polys for m in f}); n=len(polys)
    a=[[F(f.get(m,0)) for f in polys]+[F(H.get(m,0))] for m in mons]
    rr,piv=rref(a,n)
    for row in rr:
        if not any(row[:n]): assert not row[n]
    x=[F(0)]*n
    for i,c in enumerate(piv): x[c]=rr[i][n]
    ans={}
    for v,f in zip(x,polys): ans=add(ans,scalar(f,v))
    assert ans==H
    return x

def univariate(cs):
    return {(a,0):F(v) for a,v in enumerate(cs) if v}

def basic_polys():
    P0={(0,0):F(1)}; W={(0,0):F(1)}
    for a in range(4): P0=mul(P0,{(0,1):F(1),(1,0):F(-a),(0,0):F(a*a)})
    for r in range(3,9): W=mul(W,univariate([-r,1]))
    B=mul(mul(W,univariate([-3,1])),univariate([-4,1]))
    return P0,B,W

def fixed_quartic():
    """The normalized quartic F_* recovered at ext01_q4 gate 1."""
    _,B,_=basic_polys()
    f={(0,4):F(1)}
    f=add(f,mul({(0,3):F(1,2)},univariate([52,-23,1])))
    f=add(f,mul({(0,2):F(1,2)},univariate([2858,-2321,649,-73,3])))
    a=mul(mul(univariate([-4,1]),univariate([-3,1])),univariate([1446,-1061,328,-43,2]))
    f=add(f,scalar(mul({(0,1):F(1)},a),F(-1,2)))
    f=add(f,B)
    assert max(a+2*b for a,b in f)==8 and f[0,4]==1
    return f

def recover(gd,out):
    P0,B,W=basic_polys(); E=fixed_quartic()
    red={(0,1):F(1)}
    factors=[red,{(0,1):F(1),(1,0):F(-1),(0,0):F(1)},
             {(0,1):F(1),(1,0):F(-2),(0,0):F(4)},
             {(0,1):F(1),(2,0):F(3,2),(1,0):F(-33,2),(0,0):F(36)}]
    red={(0,0):F(1)}
    for fac in factors: red=mul(red,fac)
    expected={1:[E],7:[P0,B],8:[red]}; records=[]
    gates=(gd/'ext01_q4.gates').read_text().splitlines()
    for idx,polys in expected.items():
        cols,labels,m,k=integer_columns(gates[idx]); mat=[]; used=[]
        for r,s,i,j,pt in labels:
            if i+j<m[pt] or (2*s==r and i+2*j<2*m[pt]-k[r-3]):
                mat.append([jet(c,r,s,i,j) for c in cols]); used.append([r,s,i,j])
        rr,piv=rref(mat,len(cols))
        assert len(cols)-len(piv)==len(polys)
        xx=[]
        for pol in polys:
            x=coords(cols,pol)
            assert all(sum(a*b for a,b in zip(row,x))==0 for row in mat)
            xx.append([str(a) for a in x])
        # Independently check expected polynomials are linearly independent.
        _,ind=rref([[F(pol.get(m0,0)) for pol in polys] for m0 in sorted({m0 for pol in polys for m0 in pol})],len(polys))
        assert len(ind)==len(polys)
        records.append({'profile':'ext01_q4','gate':idx,'columns':len(cols),'rank':len(piv),
                        'kernel_dimension':len(polys),'rref_rows':[[str(x) for x in row] for row in rr[:len(piv)]],
                        'basis':list(map(encode,polys)),'coordinates':xx,
                        'conclusion':{1:'only F_* as monic completion; irreducibility not asserted',
                                      7:'monic completions P0+lambda B; exact deficit profile fails',
                                      8:'explicit nontrivial product, therefore reducible'}[idx]})
    # Gate 7 requests delta4=1, so mu4=3. Every P0+lambda B has mu4>=4.
    mismatch=[]
    for s,lower in [(0,1),(1,2),(2,1)]:
        vals=[]
        for i in range(lower):
            for j in range(lower-i):
                a,b=jet(P0,4,s,i,j),jet(B,4,s,i,j);assert a==b==0
                vals.append([i,j,str(a),str(b)])
        mismatch.append({'r':4,'s':s,'ordinary_lower':lower,'all_lower_jets':vals})
    assert sum(x['ordinary_lower'] for x in mismatch)==4
    dump(out/'exact_quartic_kernels.json',records)
    dump(out/'S5_extra_profile_mismatch.json',{'required_mu4':3,'uniform_mu4_lower':4,'for_all_rational_lambda':True,'source_checks':mismatch})
    dump(out/'fixed_quartic.json',{'polynomial':encode(E),'weighted_degree':8,'X_degree':4,'monic':True,
                                'irreducibility_proved':False,'actual_G_divisibility_proved':False,
                                'reducible_gate8_factors':list(map(encode,factors))})
    return E

def source_bounds(out,E):
    P0,B,W=basic_polys()
    U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1)); WU=(0,2,0,1,0,0)
    checks=[]
    for ri,r in enumerate(range(3,9)):
        for s in range(r//2+1):
            diag=2*s==r; bound=WU[ri] if diag else U[ri][s]
            if (r,s)==(5,2) or (diag and r==6):
                a,b=jet(P0,r,s,1,0),jet(B,r,s,1,0);assert a==0 and b!=0
                label='nonzero lambda times B_u';coeff=[1,0,str(a),str(b)]
            elif diag and r==4:
                a,b=jet(P0,r,s,0,1),jet(B,r,s,0,1);assert a!=0 and b==0
                label='parameter independent nonzero t coefficient';coeff=[0,1,str(a),str(b)]
            elif diag:
                a,b=jet(P0,r,s,0,0),jet(B,r,s,0,0);assert a!=0 and b==0
                label='nonzero row value';coeff=[0,0,str(a),str(b)]
            else:
                a,b=jet(P0,r,s,0,bound),jet(B,r,s,0,bound);assert a!=0 and b==0
                label='parameter independent specialization coefficient';coeff=[0,bound,str(a),str(b)]
            checks.append({'r':r,'s':s,'upper':bound,'kind':'weighted' if diag else 'ordinary','reason':label,'coefficient':coeff})
    dump(out/'S5_uniform_upper_bounds.json',{'lambda_nonzero_required':True,'ordinary':U,'weighted':WU,'P0':encode(P0),'B':encode(B),'all_sources':checks})
    erec=[]
    for r in range(3,9):
        for s in range(r//2+1):
            vals=[(i,j,jet(E,r,s,i,j)) for i in range(9) for j in range(5) if i+2*j<=8]
            m=min(i+j for i,j,v in vals if v); w=min(i+2*j for i,j,v in vals if v)
            diag=r==2*s; bound=w if diag else m
            # All possible Taylor coefficients are enumerated: global weighted degree 8.
            erec.append({'r':r,'s':s,'ordinary_order':m,'weighted_order':w if diag else None,
                         'upper':bound,'kind':'weighted' if diag else 'ordinary',
                         'all_nonzero_jets':[[i,j,str(v)] for i,j,v in vals if v]})
    true_cost=[]
    for r in range(3,9):
        ar=[x for x in erec if x['r']==r];delta=4-sum(x['ordinary_order'] for x in ar)
        k=0 if r%2 else 2*ar[-1]['ordinary_order']-ar[-1]['weighted_order']
        true_cost.append(2*delta+k)
    assert true_cost==[0,2,2,1,0,0]
    dump(out/'fixed_quartic_source_orders.json',{'true_cost':true_cost,'sources':erec,'scalars_do_not_change_orders':True})
    return checks,erec

def exact_minors(gd,cases,out):
    rec=[]
    for name,q,d,k in cases:
        mm=(gd/f'{name}.32719.minors').read_text().splitlines()
        if not mm: continue
        # ALL FIVE new q10 base gates, plus one complete integer minor per other nonempty profile.
        selected=mm if name=='base_q10' else mm[:1]
        gates=(gd/f'{name}.gates').read_text().splitlines()
        for line in selected:
            idx,n,val,*ids=map(int,line.split());cols,labels,m,ks=integer_columns(gates[idx]);mat=[]
            for id in ids:
                r,s,i,j,pt=labels[id]
                assert i+j<m[pt] or (2*s==r and i+2*j<2*m[pt]-ks[r-3])
                mat.append([jet(f,r,s,i,j) for f in cols])
            assert n==len(cols)==len(ids)
            det,divisions=bareiss(mat);assert det and det%32719==14400*val%32719
            rec.append({'profile':name,'gate':idx,'size':n,'jet_indices':ids,'integer_determinant':str(det),
                        'exact_division_checks':divisions,'mod32719':det%32719})
    assert sum(x['profile']=='base_q10' for x in rec)==5
    dump(out/'exact_integer_minors.json',{'count':len(rec),'records':rec,'all_five_q10_base_gates_exact':True})
    return len(rec)
