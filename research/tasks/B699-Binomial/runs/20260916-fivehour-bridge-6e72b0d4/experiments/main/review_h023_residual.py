"""Parent reconstruction of the H023 finite certificate, no worker imports.

The full-row-rank computation is separately source-reviewed; this script checks
the delivered kernels, all local conditions, resultant quotient, and root test.
"""
from collections import defaultdict
from fractions import Fraction
from math import comb, isqrt
from pathlib import Path
import hashlib
import json
import numpy as np

ROOT=Path(__file__).resolve().parent
GEO=ROOT.parent/'geometry'
P=32749


def trim(a):
    while a and not a[-1]:
        a.pop()
    return a


def remainder(f,g):
    f=f[:]
    inv=pow(g[-1],-1,P)
    while len(f)>=len(g):
        d=len(f)-len(g)
        c=f[-1]*inv%P
        for i,v in enumerate(g):
            f[i+d]=(f[i+d]-c*v)%P
        trim(f)
    return f


def resultant(f,g):
    f,g=trim(f[:]),trim(g[:])
    acc=1
    while len(g)>1:
        m,n=len(f)-1,len(g)-1
        r=remainder(f,g)
        if not r:
            return 0
        acc=acc*pow(g[-1],m-len(r)+1,P)*(-1 if m*n%2 else 1)%P
        f,g=g,r
    return acc*pow(g[0],len(f)-1,P)%P


def evaluate(f,x):
    z=0
    for a in reversed(f):
        z=(z*x+a)%P
    return z


def residue(f):
    return f.numerator*pow(f.denominator,-1,P)%P


def translate_matrix(a):
    return np.array([[comb(i,d)*pow(a,i-d,P)%P if i>=d else 0
                      for i in range(122)] for d in range(122)],dtype=np.int64)


def main():
    assert all(P%d for d in range(2,isqrt(P)+1))
    kernel_path=GEO/'projective_d246_kernel.npz'
    k=np.load(kernel_path)
    exps=k['exponents'].astype(np.int64)
    coeff=k['coefficients'].astype(np.int64)
    assert exps.tolist()==[[a,b] for a in range(122) for b in range(a+1)]
    assert k['free'].tolist()==[7500,7502]
    assert coeff[k['free']].tolist()==[[1,0],[0,1]]
    forms=[]
    for col in range(2):
        f=np.zeros((122,122),dtype=np.int64)
        for (a,b),c in zip(exps,coeff[:,col]):
            f[a,b]=c
            f[b,a]=c
        assert np.array_equal(f,f.T)
        forms.append(f)
    assert [int(f[121,121]) for f in forms]==[0,1]
    # Every int64 matrix product has absolute sum <= 122*(P-1)^2 < 2^63.
    assert 122*(P-1)**2<2**63
    source=defaultdict(int)
    relations=0
    points=[]
    for row,weight in [(4,49),(5,41),(6,34)]:
        for b in range(row+1):
            c=row-b
            m=weight-sum(b==a for a in (0,1))-sum(c==a for a in (0,1))
            a0,a1=Fraction(b,row-1),Fraction(c,row-1)
            t0,t1=translate_matrix(residue(a0)),translate_matrix(residue(a1))
            for f in forms:
                shifted=((t0@f)%P@t1.T)%P
                for du in range(m):
                    for dv in range(m-du):
                        assert shifted[du,dv]==0,(row,b,du,dv)
                        relations+=1
            extra=1 if (row,b)==(4,2) else 0
            source[a1]+=m*m+extra
            points.append([str(a0),str(a1),m,m*m+extra])
    assert relations==29920
    assert sum(source.values())==29204
    assert 2*121**2-sum(source.values())==78
    receipt=json.loads((GEO/'d246_residual_resultant.json').read_text())
    rpoly=receipt['coefficients_increasing']
    assert len(rpoly)==79 and rpoly[-1]
    # Use new consecutive samples, reconstructed source factors, and our own
    # Euclidean resultant; no reliance on saved interpolation samples.
    checked=[]
    for v in range(1001,1130):
        if v in [residue(q) for q in source]:
            continue
        vp=np.array([pow(v,b,P) for b in range(122)],dtype=np.int64)
        fs=[(f@vp%P).tolist() for f in forms]
        if not all(f[-1] for f in fs):
            continue
        dv=1
        for q,e in source.items():
            dv=dv*pow((v-residue(q))%P,e,P)%P
        assert dv
        got=resultant(*fs)*pow(dv,-1,P)%P
        assert got==evaluate(rpoly,v),(v,got,evaluate(rpoly,v))
        checked.append(v)
    assert len(checked)>=79
    roots=[v for v in range(P) if evaluate(rpoly,v)==0]
    assert not roots
    # A nonzero resultant specialization at full u degree also checks coprimality.
    assert any(evaluate(rpoly,v) for v in checked)
    result={"result":"PASS","prime":P,"kernel_sha256":hashlib.sha256(kernel_path.read_bytes()).hexdigest(),
            "full_row_rank":"worker elimination source reviewed; not recomputed by this script",
            "integer_Taylor_relations":relations,"source_points":points,
            "source_factor_degree":sum(source.values()),"residual_degree":78,
            "independent_full_degree_samples":checked,"Fp_roots":roots,"P1_root_at_infinity":False,
            "height_exponent":247+738+6571276,
            "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    out=ROOT/'review_h023_residual.json'
    out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({"result":"PASS","Taylor_relations":relations,"resultant_samples":len(checked),
                      "residual_degree":78,"P1_roots":0,"output":str(out)}))


if __name__=='__main__':
    main()
