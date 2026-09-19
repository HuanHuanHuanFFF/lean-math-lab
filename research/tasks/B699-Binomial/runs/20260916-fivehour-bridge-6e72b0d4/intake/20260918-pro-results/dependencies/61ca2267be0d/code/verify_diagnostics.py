"""NEW exact method-limit checks. No original-problem counterexample is asserted."""
from pathlib import Path
from math import comb,gcd
import json
from verify import ROOT,POINTS,shape,monomials,rank_mod,require,integer
P=1000003

def nullspace_mod(A):
    A=[[x%P for x in row]for row in A];piv=[];r=0
    for c in range(len(A[0])):
        k=next((k for k in range(r,len(A))if A[k][c]),None)
        if k is None:continue
        A[k],A[r]=A[r],A[k];iv=pow(A[r][c],-1,P);A[r]=[x*iv%P for x in A[r]]
        for k in range(len(A)):
            if k!=r and A[k][c]:
                v=A[k][c];A[k]=[(x-v*y)%P for x,y in zip(A[k],A[r])]
        piv.append(c);r+=1
        if r==len(A):break
    out=[]
    for c in range(len(A[0])):
        if c in piv:continue
        x=[0]*len(A[0]);x[c]=1
        for i,p in enumerate(piv):x[p]=-A[i][c]%P
        out.append(x)
    return out

def taylor(co,mon,i,j,r,x):
    return sum(v*comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)for v,(a,b)in zip(co,mon)if a>=i and b>=j)

def run():
    data=json.loads((ROOT/'evidence/linear_multiplier_diagnostic.json').read_text());out=[]
    for rec in data:
        mask=rec['mask'];cs,ds=shape(mask);require(sum(cs)==14 and not any(ds),'diagnostic scope changed')
        Z=[p for i,p in enumerate(POINTS)if mask>>i&1];ms=(4,4,3,3,3,3);hs=rec['H_basis'];B7=monomials(7);B17=monomials(17);B10=monomials(10)
        require(rec['H_monomials']==[list(x)for x in B7]and len(hs)==6,'source basis schema')
        S=[[r**a*x**b for a,b in B7]for r,x in Z]
        require(rank_mod(S,P)==14 and rank_mod(hs,P)==6,'source rank mismatch')
        require(all(len(h)==20 and all(integer(c)for c in h)for h in hs),'source basis type')
        require(all(sum(c*v for c,v in zip(h,s))==0 for h in hs for s in S),'nonzero source basis value')
        rows=[];loc=[]
        for ix,(r,x)in enumerate(Z):
            m=ms[r-3]
            for i in range(m):
                for j in range(m-i):rows.append((ix,i,j,r,x))
            for i in range(m-1):
                for j in range(m-1-i):loc.append((ix,i,j,r,x))
        A=[[comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)if a>=i and b>=j else 0 for a,b in B17]for ix,i,j,r,x in rows]
        require(rank_mod(A,P)==90,'pure jet rank not full')
        left=nullspace_mod([list(x)for x in zip(*A)])
        require(len(left)==10 and rank_mod(left,P)==10,'left kernel rank')
        require(all(sum(l[t]*A[t][c]for t in range(100))%P==0 for l in left for c in range(90)),'left kernel equality')
        C=[]
        for h in hs:
            B=[[taylor(h,B7,i-a,j-b,r,x)if ix==jx and i>=a and j>=b else 0 for jx,a,b,_,_ in loc]for ix,i,j,r,x in rows]
            C.extend([[sum(l[t]*B[t][c]for t in range(100))%P for c in range(54)]for l in left])
        G=[[comb(a,i)*comb(b,j)*r**(a-i)*x**(b-j)if a>=i and b>=j else 0 for a,b in B10]for ix,i,j,r,x in loc]
        require(rank_mod(C,P)==18 and rank_mod(G,P)==36,'multiplier rank mismatch')
        require(all(sum(c[k]*G[k][i]for k in range(54))%P==0 for c in C for i in range(36)),'global multipliers not in residual kernel')
        out.append({'mask':mask,'pure_jet_rank':90,'compressed_rank':18,'universal_dimension':36,'global_multiplier_dimension':36})
    gate=json.loads((ROOT/'evidence/seven_forms_gate.json').read_text());mask=gate['mask'];shape(mask)
    mon=[(a,b)for a,b in monomials(7)if(a,b)not in[(6,0),(7,0)]];basis=gate['basis'];ev=[[r**a*x**b for a,b in mon]for r,x in POINTS]
    require(gate['monomials']==[list(x)for x in mon]and len(basis)==4,'seven-form basis schema')
    S=[r for i,r in enumerate(ev)if mask>>i&1]
    require(rank_mod(S,P)==14 and rank_mod(basis,P)==4,'seven-form source rank')
    require(all(sum(x*y for x,y in zip(b,r))==0 for b in basis for r in S),'seven-form source equality')
    proj=[]
    require(len(gate['nonhit_forms'])==7,'seven-form count')
    for rec in gate['nonhit_forms']:
        ix=rec['point_index'];require(not(mask>>ix&1),'form attached to hit')
        vals=[sum(c*v for c,v in zip(b,ev[ix]))for b in basis];require(vals==rec['values'],'form values mismatch')
        require(any(vals),'zero nonhit form');g=gcd(*vals);v=[x//g for x in vals]
        if next(x for x in v if x)<0:v=[-x for x in v]
        require(v==rec['primitive_projective_form'],'projective form mismatch');proj.append(tuple(v))
    require(len(set(proj))==7,'not seven distinct linear factors')
    return {'status':'PASS_NEW_METHOD_BOUNDARY_CHECKS','universal_multiplier_cases':out,'seven_nonproportional_forms_mask':mask,'minimal_formal_common_annihilator_degree':7,'NC9_realization_claimed':False}
if __name__=='__main__':print(json.dumps(run(),indent=2))
