import sympy as s,json,math
from pathlib import Path
N,J=s.symbols('N J')
records=json.loads(Path('/mnt/data/c_next_work/R8/B699-C-R8-SOURCE01-CUBIC012-20261002/certificates/RESIDUAL_TEN.json').read_text())['records']
base=[N**2,N*J,J**2,N**3,N**2*J,N*J**2,J**3]
out=[]
for i,r in enumerate(records,1):
 f=sum(c*N**a*J**b for a,b,c in r['polynomial'])
 mat=s.Matrix([[b.subs({N:h,J:j}) for b in base] for h,pair in zip((3,4,5),r['pairs']) for j in pair])
 ker=mat.nullspace();print('\nZ%02d'%i,'rank',mat.rank(),'dim',len(ker))
 for v in ker:
  den=s.ilcm(*[x.q for x in v]);vv=[int(x*den) for x in v];gg=math.gcd(*vv);vv=[x//gg for x in vv]
  H=s.expand(sum(x*b for x,b in zip(vv,base)))
  print('G',s.factor(H))
  res=s.factor(s.resultant(f,H,J));print('RES',res)
  nonzero=list(s.Poly(H,N,J).terms());C=sum(s.Rational(abs(c),2**bj * 352**(3-a-bj)) for (a,bj),c in nonzero)
  print('C bound',C,float(C),'gmax sigma120',math.isqrt(int(C*120*88/85)))
  out.append({'Z':i,'F':r['polynomial'],'pairs':r['pairs'],'G':[[a,b,int(c)] for (a,b),c in s.Poly(H,N,J).terms()], 'G_basis':vv,'norm':str(C),'resultant':str(res),'q2':r['possible_q2_values']})
Path('/mnt/data/c_next_work/double_origin_probe.json').write_text(json.dumps(out,indent=2))
