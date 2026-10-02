from exact_minors import poly_mul,poly_add,jet
import json
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+"\n")

def local_expand(f,r,s):
 """Literal polynomial substitution, not the binomial jet evaluator."""
 v=s*(r-s);shear=s if 2*s==r else 0
 n={(0,0):r,(1,0):1};x={(0,0):v,(1,0):shear,(0,1):1}
 maxa=max(a for a,b in f);maxb=max(b for a,b in f)
 np=[{(0,0):1}];xp=[{(0,0):1}]
 for i in range(maxa):np.append(poly_mul(np[-1],n))
 for i in range(maxb):xp.append(poly_mul(xp[-1],x))
 z={}
 for(a,b),c in f.items():z=poly_add(z,{k:c*w for k,w in poly_mul(np[a],xp[b]).items()})
 return z

def source_bounds(out):
 p0={(0,0):1};W={(0,0):1}
 for a in range(4):p0=poly_mul(p0,{(0,1):1,(1,0):-a,(0,0):a*a})
 for r in range(3,9):W=poly_mul(W,{(1,0):1,(0,0):-r})
 B=poly_mul(poly_mul(W,{(1,0):1,(0,0):-3}),{(1,0):1,(0,0):-4})
 U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
 result=[]
 for r in range(3,9):
  for s in range(r//2+1):
   dg=r==2*s;upper=WU[r-3]if dg else U[r-3][s]
   if(r,s)==(5,2)or(dg and r==6):ij=(1,0);mode='nonzero lambda coefficient'
   elif dg and r==4:ij=(0,1);mode='nonzero parameter-independent coefficient'
   elif dg:ij=(0,0);mode='nonzero parameter-independent coefficient'
   else:ij=(0,upper);mode='nonzero parameter-independent coefficient'
   p,b=jet(p0,r,s,*ij),jet(B,r,s,*ij)
   assert p==local_expand(p0,r,s).get(ij,0) and b==local_expand(B,r,s).get(ij,0)
   if mode=='nonzero lambda coefficient':assert p==0 and b!=0
   else:assert p!=0 and b==0
   assert ij[0]+(2 if dg else 1)*ij[1]==upper
   result.append({'r':r,'s':s,'upper':upper,'kind':'weighted'if dg else'ordinary','jet':ij,'P0_coefficient':p,'B_coefficient':b,'reason':mode})
 dump(out/'S5_uniform_source_bounds.json',{'lambda':'arbitrary nonzero rational','P0':[[*k,v]for k,v in sorted(p0.items())],'B':[[*k,v]for k,v in sorted(B.items())],'bounds':result,'all_21_literal_substitutions_match_binomial_jets':True})
 return result

