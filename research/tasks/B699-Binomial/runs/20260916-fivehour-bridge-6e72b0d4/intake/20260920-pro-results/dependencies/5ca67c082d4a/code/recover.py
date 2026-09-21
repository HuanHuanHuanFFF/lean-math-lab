#!/usr/bin/env python3
import sys,json,math,time
from pathlib import Path
from fractions import Fraction
from sympy import Matrix,Rational,Poly,symbols,expand,factor_list
from jets import Model, full_minor
from accept_core import determinant_mod
N,X=symbols('N X')
def enc(x):
    z=Fraction(x);return [z.numerator,z.denominator]
def sparse(H):
    return [[a,b,*enc(c)] for (a,b),c in sorted(H.items()) if c]
def assemble(M,c,x,base):
    H=M.h0(c) if base else {}
    for (a,b),v in zip(M.mons,x):
        for i,z in enumerate(M.W):H[a+i,b]=H.get((a+i,b),0)+z*v
    return {k:Fraction(v)/120 for k,v in H.items() if v}
def restrict(H,t):
    res={}
    for (a,b),v in H.items():
        for i in range(b+1):res[a+i]=res.get(a+i,0)+v*math.comb(b,i)*t**i*(-t*t)**(b-i)
    return {k:v for k,v in res.items() if v}
def main(src,out):
    ob=json.loads(src.read_text());M=Model(ob['q']);res=[];rankcert=[]
    for ex in ob['exceptions']:
        st=time.monotonic();c=ex['record'];labs,A=M.build(c);R,piv=Matrix(A).rref();nc=M.nc
        if nc in piv:
            C,cpiv=Matrix([row[:-1] for row in A]).rref()
            free=[j for j in range(nc) if j not in cpiv];kernels=[]
            for f in free:
                v=[Fraction(0)]*nc;v[f]=Fraction(1)
                for i,j in enumerate(cpiv):v[j]=-Fraction(C[i,f])
                assert all(sum(Fraction(a)*b for a,b in zip(row[:-1],v))==0 for row in A)
                kernels.append(v)
            prime=1000033;rr,cc,aug=full_minor([[int(v%prime) for v in row] for row in A],prime)
            assert aug>len(cpiv)
            det=determinant_mod([[A[i][j] for j in cc] for i in rr],prime);assert det
            ent={'index':ex['index'],'kernel_vectors':[[enc(v) for v in x] for x in kernels],
                 'kernel_free_columns':free,'coefficient_rank_upper':len(cpiv),'augmented_rank_lower':aug,
                 'prime':prime,'rows':rr,'columns':cc,'determinant_mod_prime':det}
            rankcert.append(ent)
            print('EXACT_LOW_RANK_INCONSISTENT',src.name,ex['index'],'kernel',len(kernels),'augmented',aug,flush=True)
            out.with_name(out.stem.replace('_solutions','_rank_certificates')+'.json').write_text(json.dumps(rankcert,sort_keys=True,separators=(',',':'))+'\n')
            continue
        free=[j for j in range(nc) if j not in piv];sol=[Fraction(0) for _ in range(nc)]
        dirs=[]
        for i,j in enumerate(piv):sol[j]=Fraction(R[i,nc])
        for f in free:
            v=[Fraction(0) for _ in range(nc)];v[f]=Fraction(1)
            for i,j in enumerate(piv):v[j]=-Fraction(R[i,f])
            dirs.append(v)
        assert all(sum(Fraction(x)*y for x,y in zip(row[:-1],sol))==row[-1] for row in A)
        assert all(sum(Fraction(x)*y for x,y in zip(row[:-1],v))==0 for row in A for v in dirs)
        P=[assemble(M,c,sol,True)]+[assemble(M,c,v,False) for v in dirs]
        lines=[t for t in range(9) if all(not restrict(H,t) for H in P)]
        ent={'index':ex['index'],'record':c,'rank':len(piv),'pivot_columns':list(piv),'free_columns':free,'solution':[enc(v) for v in sol],'directions':[[enc(x) for x in v] for v in dirs],'polynomials':[sparse(H) for H in P],'common_source_lines':lines}
        res.append(ent)
        print('RECOVER',src.name,ex['index'],'dimension',len(dirs),'common_lines',lines,'terms',[len(H) for H in P],'seconds',round(time.monotonic()-st,2),flush=True)
    out.with_name(out.stem.replace('_solutions','_rank_certificates')+'.json').write_text(json.dumps(rankcert,sort_keys=True,separators=(',',':'))+'\n')
    out.write_text(json.dumps({'q':ob['q'],'h':ob['h'],'solutions':res},sort_keys=True,separators=(',',':'))+'\n')
if __name__=='__main__':main(Path(sys.argv[1]),Path(sys.argv[2]))
