"""Optional certificate emitter. Needs SymPy; the receiver does not import it."""
from pathlib import Path
import json
from math import gcd, prod
import sympy as s
ROOT=Path(__file__).resolve().parents[1]
n,u,x,a=s.symbols('n u x a')
P=4*(n-3)*(n-4)-9*n*u+27*u*u
H=16*(n-3)*(n-4)-36*(n-3)*u+27*u*u
T=8*(n-5)*(n-4)*(n-3)-(u-1)*H
K=10*n*n-36*n*u-34*n+27*u*u+81*u+12

def terms(f,vs):
    ans=[]
    for e,c in sorted(s.Poly(s.expand(f),*vs).terms()):
        ans.append([*e,int(s.numer(c)),int(s.denom(c))])
    return ans

algebra={
    'P':terms(P,(n,u)), 'T':terms(T,(n,u)), 'H7':terms(H,(n,u)), 'K':terms(K,(n,u)),
    'centre_P_3':terms(3*P.subs({n:x+4,u:(2*x+12-a)/9}),(x,a)),
    'centre_T_27':terms(27*T.subs({n:x+4,u:(2*x+12-a)/9}),(x,a)),
    'contacts':{},
}
for key,ns,us,order in [
    ('E3',3+x,a*x,(1,2)),('I3',3+x,1+a*x,(1,1)),
    ('E4',4+x,a*x,(1,1)),('C',4+x,(2*x+12-a*x*x)/9,(2,2))]:
    pp=s.Poly(s.expand(P.subs({n:ns,u:us})),x)
    tt=s.Poly(s.expand(T.subs({n:ns,u:us})),x)
    algebra['contacts'][key]={
        'P_order':order[0], 'T_order':order[1],
        'P_initial':terms(pp.coeff_monomial(x**order[0]),(a,)),
        'T_initial':terms(tt.coeff_monomial(x**order[1]),(a,)),
    }
(ROOT/'evidence/algebra.json').write_text(json.dumps(algebra,indent=2)+'\n')

B=7*11*13*17; coefficient=13938
N0=2*B*19**7+4; J0=coefficient*19**7+2
mods=[9000,37,19,1399,349,47,2099,11,13]
rem=[37,0,1,145,0,0,37,1,6]
w=int(s.ntheory.modular.crt(mods,rem)[0])
NA=70*(701**2*w*w-10); JA=70*701*w*w

def rough(v):
    for p in (2,3,5):
        while v%p==0:v//=p
    return v

def stats(n,j):
    k=n-j; q=[rough(n-r) for r in range(6)]; g=gcd(n,j)
    z={'n':n,'j':j,'g':g,'E3':gcd(q[3],j*k),'E4':gcd(q[4],j*k),
       'A4':gcd(q[4],(j-1)*(k-1)),'C':gcd(q[4],j-2),
       'Q50':gcd(q[5],j*k),'Q51':gcd(q[5],(j-1)*(k-1))}
    z['old_mass']=g**4*z['Q50']**2*z['Q51']**4
    z['source_defects']={str(r):q[r]//gcd(q[r],prod(j-b for b in range(r+1))) for r in (1,3,4,5)}
    return z
witnesses={
  'all_five_slots_family':{'B':B,'j_coefficient':coefficient,'exponent_base':7,'exponent_step':4200,
    'slots':{'7':0,'11':4,'13':3,'17':1,'19':2},'persistent_outside_prime':29,
    'base':stats(N0,J0),'base_witness_prime':41,
    'uniform_old_mass_bound':(4*(B-coefficient))**4*((coefficient+4*B)*(6*B-coefficient))**2*((coefficient+2*B)*(4*B-coefficient))**4,
    'comparison_exponent':847},
  'first_row_amplification_example':{'w':w,'moduli':mods,'residues':rem,'square_root_mod_1399':145,
      'data':stats(NA,JA),'Y':70*(NA-1)*w,'alpha_bad_prime':13,'witness_prime':7},
  'scalar_gap_diagnostic':{'g':190,'C':7,'L3':11,'d':1,'v':1,'r':1,'ell6':1,'eta':1,'q5':41,'E_base':21,'E_step':18}
}
eb=468; qb=403*(7*19*23)**eb; nb=2*qb+4
rb=int(s.ntheory.modular.crt([7**eb,13,19**eb,23**eb,31],[0,1,2,4,3])[0])
jb=rb if rb%2==0 else (4-rb)%qb
witnesses['balanced_all_five_example']={
    'exponent':eb,'exponent_step':700,'fixed_nearside':403,
    'prime_powers':[[7,eb],[13,1],[19,eb],[23,eb],[31,1]],
    'slots':[0,1,2,4,3], 'g':gcd(nb,jb),
    'Q50':gcd(rough(nb-5),jb*(nb-jb)),
    'Q51':gcd(rough(nb-5),(jb-1)*(nb-jb-1)),
    'common_prime':73,'prime_source_row':1,'source_exponent':1,
    'target_valuation':sum(nb//(73**h)-jb//(73**h)-(nb-jb)//(73**h) for h in range(1,nb.bit_length()+1) if 73**h<=nb),
    'note':'all five q4 slots; every old q4 affine/R^3 gate fails; this is not an NC model',
}
z=witnesses['scalar_gap_diagnostic'];z['A4']=z['C']+45*z['g']**3*z['L3']//4
z['E3']=z['A4']*z['q5']+z['g']*z['C']*z['L3']
(ROOT/'evidence/witnesses.json').write_text(json.dumps(witnesses,indent=2)+'\n')
claims={
 'scope':'native i6; n mod 1800 in {1280,1530}; 7<=j<=floor(n/2)',
 'centre_consumer':'j even and C>=A4',
 'tail_small_parts':{'1280':[1,1,4], '1530':[1,3,2]},
 'old_mass_constants':{'1280':9,'1530':125},
 'even_multipliers':{'1280':256,'1530':1152},
 'RES10_nearside_inequality':{'left_coefficient':4608,'right_coefficient':5},
 'factorization':'F20=g^4*N^10*q3^5*q4^4*Q50^2*Q51^4*zeta^2*nu^3*LP*L6',
 'support_expansion':False,'absolute_global_bound':False,'finite_bottom':None,
}
(ROOT/'evidence/claims.json').write_text(json.dumps(claims,indent=2)+'\n')
print('Built exact algebra, claim data, and original-input diagnostics; no infinite-domain scan.')
