from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
from datetime import datetime,timezone
import json,re,hashlib
HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
PD=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
SD=RUN/'experiments/huan-i11-approximation-bridge-plan-5e2d13bb'
plan=json.loads((PD/'FINAL_PLAN.json').read_text(encoding='utf-8'))['selected_plan']['rows'][0]
qe=json.loads((PD/'qe-certificates/row-00.json').read_text(encoding='utf-8'))
short=json.loads((SD/'short-power-bases.json').read_text(encoding='utf-8'))['rows'][0]
pars=(HERE/'Parameters.lean').read_text(encoding='utf-8')
growth=(HERE/'GrowthInputs.lean').read_text(encoding='utf-8')
def natdef(name):
 return int(re.search(r'def '+name+r' : ℕ := (\d+)',pars)[1])
def fracdef(name):
 m=re.search(r'def '+name+r' : ℚ := (\d+) / (\d+)',growth)
 return F(int(m[1]),int(m[2]))
Z,M=natdef('twoFiveZ'),natdef('twoFiveM')
qL,eL=fracdef('qLambda'),fracdef('eLambda')
assert qL==F(qe['Q']['lambda']) and eL==F(qe['E']['lambda'])
assert Z==short['Z']==115572769905797 and M==short['M']==329
assert (plan['wp'],plan['wq'],plan['D_threshold_m0'])==(248,252,141)
beta=F(9**9,4**8)
g=F(plan['L_target'])**4
BQ,BE=beta*qL,beta*eL
A3=F(128**5)*g/(128**4*BQ)
W=F((128*125)**5)*g/(128*3**8*BE)
assert A3==F(plan['Omega3_power_d'])
assert W==128**5*F(plan['Omega4_power_d'])
assert W.numerator//W.denominator==Z and W>=Z and A3>=1
assert Z**(M-1)<=4*2**15359<Z**M and A3**M>48
assert A3**32>=2
initial=[]
for d in [0,1]:
 u,v=4-d,d
 z=F(3,128)
 Q=(-1)**u*sum(F(comb(2*u-j,u)*comb(v+j,j))*z**j for j in range(u+1))
 E=sum(F((-1)**j*comb(u+j,j)*comb(2*u+v+1,2*u+j+1))*z**j for j in range(v+1))
 F1=F(factorial(9-d),factorial(4-d)**2*factorial(d))
 K=2*F1/beta;CQ=2*abs(Q)/BQ;CE=2*abs(E)/BE
 cert=qe['constants'][d]
 assert K==F(cert['K']) and CQ==F(cert['CQ']) and CE==F(cert['CE'])
 assert CQ<1 and CE<1
 initial.append({'delta':d,'actualQ1':str(Q),'actualE1':str(E),'K':str(K),'CQ':str(CQ),'CE':str(CE)})
assert 2**short['u']<=Z**short['v']
for e in short['ends']:
 p,a,b,alpha=e['prime'],e['a'],e['b'],e['alpha']
 J=1000*5*e['seed_exponent']
 u,v=short['u'],short['v']
 assert p**b<=2**a
 assert u*b*alpha-a*v*J==e['rate_exponent_margin']>=0
 assert b*15359*alpha-a*J*M==e['base_exponent_margin']>=0
 assert u*b*alpha*M-2*alpha*b*v-a*v*J*(M+1)==e['lookahead_exponent_margin']>=0
fixed=(HERE/'FixedEdge.lean').read_text(encoding='utf-8')
numeric_names=['hAbase','hprevious','hrateP','hbaseP','hlookP','hrateQ','hbaseQ','hlookQ']
for name in numeric_names:assert f'({name} :' in fixed
assert '(qt :' in fixed and '(et :' in fixed
assert 'hG :' not in fixed and 'hHom :' not in fixed and 'hdet :' not in fixed
assert '128 : ℚ) * 3 ^ 8 * BE' in (HERE/'ActualRows.lean').read_text(encoding='utf-8')
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_FIXED_EXACT_DIAGNOSTICS_NOT_LEAN',
 'fixed_parameters':{'c':5,'d':4,'z':'3/128','D':3,'P':128,'Q':125,'a':1,'b':1,'M':M,'Z':Z,'m0':141,'weights':[248,252]},
 'qLambda':str(qL),'eLambda':str(eL),'qBase':str(BQ),'eBase':str(BE),'contentBase':str(g),
 'qRate':str(A3),'wRate':str(W),'qScale':128**4,'eScale':128*3**8,
 'rates_match_frozen_plan':True,'initial_delta_constants':initial,
 'numeric_preconditions':numeric_names,'ordinary_preconditions':['Y0<=Y','1<=C','Y<=2^e*A','Y<=5^f*C','5^f*C<=2Y','abs(2^e*A-5^f*C)<=24'],
 'existing_short_power_bases_rechecked':True,'maximum_basis_bits':short['maximum_basis_bits'],
 'no_large_final_capacity_powers_evaluated':True,
 'optional_qRate_short_proof':{'A3_pow32_ge_2':True,'6_times_32':192,'192_le_M':192<=M,'meaning':'Exact diagnostic only; can derive64<=A3^192<=A3^329 after Lean acceptance.'},
 'graph_weight_source':'FINAL_PLAN row0, not historical QE seed metadata','worker_lean_invocations':0,
 'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(HERE/'exact-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':result['status'],'initial_rows':len(initial),'eight_numeric_preconditions':len(numeric_names),'rates_match':True,'E_scale':result['eScale'],'max_short_basis_bits':result['maximum_basis_bits']},ensure_ascii=False))
