from pathlib import Path
from copy import deepcopy
from fractions import Fraction
import json,hashlib,time
from datetime import datetime,timezone
out=Path(__file__).resolve().parent
run=out.parent.parent
expected={'M':213,'H':15359,'Y0_base':2,'Z':5726930071079973414170,'A3_numerator':1694801261684299070333536458252484608,'A3_denominator':1476369155193264712520030439541015625,'p':5,'q':3,'p_seed_exponent':4,'q_seed_exponent':7,'c':5,'d':3,'p_weight':354,'q_weight':228,'p_alpha':646,'q_alpha':772,'p_N':20000,'q_N':35000}
class Rejected(Exception):pass
def require(cond,why):
 if not cond:raise Rejected(why)
def check(d):
 require(d['fixed']==expected,'fixed source parameters changed')
 f,b=d['fixed'],d['basis'];Z,N,D=f['Z'],f['A3_numerator'],f['A3_denominator']
 require(D>0,'denominator not positive');require(N>=D,'A3 below one')
 entries=[]
 def le(name,lhs,rhs):
  require(lhs<=rhs,name+' false')
  entries.append({'name':name,'lhs':lhs,'rhs':rhs})
 le('five short basis',5**b['five']['exponent'],2**b['five']['upper_binary_exponent'])
 le('three short basis',3**b['three']['exponent'],2**b['three']['upper_binary_exponent'])
 le('Z lower basis',2**b['Z_lower']['binary_exponent'],Z**b['Z_lower']['exponent'])
 le('Z upper basis',Z**b['Z_upper']['exponent'],2**b['Z_upper']['binary_exponent'])
 power=b['A3_power']
 le('A3 short integer power',power['lower_factor']*D**power['exponent'],N**power['exponent'])
 require(power['exponent']*power['outer_power']==power['intermediate_exponent'],'A3 exponent multiplication mismatch')
 require(48<power['lower_factor']**power['outer_power'],'A3 short lower bound does not exceed 48')
 require(power['intermediate_exponent']<=f['M'],'A3 monotonicity exponent exceeds original M')
 margins={}
 u,v=b['Z_lower']['binary_exponent'],b['Z_lower']['exponent']
 require(v>0,'Z basis exponent must be positive')
 for side,prime,name in [('p',5,'five'),('q',3,'three')]:
  a,bb=b[name]['upper_binary_exponent'],b[name]['exponent']
  require(bb>0,'prime basis exponent must be positive')
  nn,alpha,M,H=f[side+'_N'],f[side+'_alpha'],f['M'],f['H']
  require(alpha==1000-f[side+'_weight'],'weight complement mismatch')
  require(nn==1000*f['c']*f[side+'_seed_exponent'],'actual extraction exponent mismatch')
  comparisons={'rate':(a*v*nn,u*bb*alpha),'base':(a*nn*M,bb*H*alpha),'lookahead':(2*alpha*bb*v+a*v*nn*(M+1),u*bb*alpha*M)}
  for kind,(lhs,rhs) in comparisons.items():
   le(side+' '+kind+' exponent comparison',lhs,rhs);margins[side+'_'+kind]=rhs-lhs
 aa,bb=b['Z_upper']['binary_exponent'],b['Z_upper']['exponent']
 require(bb>0,'Z upper basis exponent must be positive')
 lhs,rhs=aa*(f['M']-1),bb*(f['H']+2)
 le('predecessor exponent comparison',lhs,rhs);margins['predecessor']=rhs-lhs
 require(margins==d['margins'],'recorded exponent margins do not match recomputation')
 for src in d['sources']:
  require(hashlib.sha256((run/src['path']).read_bytes()).hexdigest()==src['sha256'],'source SHA mismatch: '+src['path'])
 raw=json.loads((run/'experiments/huan-i11-five-three-scaled-bounds-5e2d13bb/bounded-check-results.json').read_text(encoding='utf-8-sig'))
 require(Fraction(raw['A3'])==Fraction(N,D),'A3 is not original exact rate')
 return entries,margins
start=time.perf_counter();d=json.loads((out/'certificate.json').read_text(encoding='utf-8-sig'));entries,margins=check(d)
def numeric(n):return {'decimal':str(n),'hexadecimal':hex(n),'bit_length':n.bit_length()}
ledger={'fixed_constants':{k:numeric(v) for k,v in d['fixed'].items()},'evaluated_comparisons':[{'name':x['name'],'lhs':numeric(x['lhs']),'rhs':numeric(x['rhs'])} for x in entries],'max_explicit_integer_bits':max(max(x['lhs'].bit_length(),x['rhs'].bit_length()) for x in entries),'margins':margins}
(out/'decimal-hex-ledger.json').write_text(json.dumps(ledger,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
mutations=[('five RHS exponent too small',lambda x:x['basis']['five'].__setitem__('upper_binary_exponent',1188)),('three RHS exponent too small',lambda x:x['basis']['three'].__setitem__('upper_binary_exponent',202)),('Z lower exponent too large',lambda x:x['basis']['Z_lower'].__setitem__('binary_exponent',290)),('Z upper exponent too small',lambda x:x['basis']['Z_upper'].__setitem__('binary_exponent',578)),('false A3 short lower factor',lambda x:x['basis']['A3_power'].__setitem__('lower_factor',3)),('original M changed',lambda x:x['fixed'].__setitem__('M',214)),('original numerator changed',lambda x:x['fixed'].__setitem__('A3_numerator',x['fixed']['A3_numerator']+1)),('recorded margin altered',lambda x:x['margins'].__setitem__('p_rate',0))]
rejections=[]
for name,mutate in mutations:
 altered=deepcopy(d);mutate(altered)
 try:check(altered)
 except Rejected as e:rejections.append({'mutation':name,'rejected':True,'reason':str(e)})
 else:raise AssertionError('tamper accepted: '+name)
results={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded integer derivation checks; not Lean acceptance','all_original_checks_pass':True,'max_explicit_integer_bits':ledger['max_explicit_integer_bits'],'target_big_powers_evaluated':False,'short_comparison_count':len(entries),'tamper_rejections':rejections,'source_count':len(d['sources']),'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0}
(out/'bounded-check-results.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'max_bits':results['max_explicit_integer_bits'],'comparisons':len(entries),'tamper_rejections':len(rejections),'seconds':results['elapsed_seconds'],'all_pass':True}))
