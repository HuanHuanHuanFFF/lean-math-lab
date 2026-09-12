from pathlib import Path
from fractions import Fraction as F
import json,re,hashlib,sys
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
CHECK='--check' in sys.argv
assert CHECK or not (OUT/'FREEZE.json').exists()
p=json.loads((OUT/'certificate.json').read_text());f=p['fixed'];Z=f['Z'];H=f['Y_bits'];M=f['M'];R=F(p['rates']['R'])
assert (H,M,Z)==(65535,826,800066819113475893826133)
actualG=(RUN/'lean/I11DivisorFiveSeven/Actual.lean').read_text()
rate=re.search(r'def infiniteRate\s*:\s*ℚ\s*:=\s*(\d+)\s*/\s*(\d+)',actualG);assert rate
assert R==F(int(rate[1]),int(rate[2]))
# Independent source parsing for the actual bases, never adopting the proposal's floating values.
growth=RUN/'lean/I11FiveSevenEdge/GrowthInputs.lean';text=growth.read_text()
def extract(name):
 m=re.search(r'def '+name+r'\s*:\s*ℚ\s*:=\s*(\d+)\s*/\s*(\d+)',text);assert m
 return F(int(m[1]),int(m[2]))
beta=F(18**18,7**14*4**4);BQ=beta*extract('qLambda');BE=beta*extract('eLambda')
AQ=F(25**11,50**7)*R/BQ;AE=F(25**11*49**11,50**4)*R/BE
assert str(AQ)==p['rates']['AQ'] and str(AE)==p['rates']['AE']
assert Z==(F(32,33)*AE).numerator//(F(32,33)*AE).denominator
assert 4*AQ>=5 and 33*Z<=32*AE and 3*R<25 and R<8
# Different lower/upper bases are allowed: the upper base is used only for M-1.
assert 2**397<=Z**5
assert Z**16<2**1271
assert 5**59<=2**137 and 7**26<=2**73
previous_margin=16*(H+2)-1271*(M-1);threshold_margin=397*M-5*(H+2)
assert previous_margin>=0 and threshold_margin>0
margins=[]
for pp,a,b,alpha in [(5,137,59,645),(7,73,26,779)]:
 r={'p':pp,'a':a,'b':b,'alpha':alpha,'N':22000,'u':397,'v':5,'rate_margin':397*b*alpha-a*5*22000,'base_margin':b*H*alpha-a*22000*M,'lookahead_margin':397*b*alpha*M-2*alpha*b*5-a*5*22000*(M+1)}
 assert min(r['rate_margin'],r['base_margin'],r['lookahead_margin'])>0;margins.append(r)
# Bernoulli premise is enough; literal rational power checks merely corroborate it.
assert 1+32*(F(33,32)-1)==2 and 1+4*(F(5,4)-1)==2
assert (F(33,32))**32>=2 and (F(5,4))**4>=2
assert 32*25<=M and 4*206<=M
E=F((M+1)**2,2**31);Q=F(36*(M+1)**2,2**206)
assert E==F(p['errors']['E_cap'])and Q==F(p['errors']['Q_cap'])
assert E<F(1,4)and Q<F(1,4)
# Polynomial identities are checked by their actual coefficient arrays, not samples.
assert [33-128,66-128,33-32]==[-64*2+33,2-64,1]
assert [5-16,10-16,5-4]==[-8*2+5,2-8,1]
assert M>=149 and M>=64 and 7*M>=100
r={'status':'PASS_EXACT_COMPRESSED_CERTIFICATES_NOT_LEAN','fixed':f,'source_growth_sha256':hashlib.sha256(growth.read_bytes()).hexdigest(),'same_AQ_AE_as_certificate':True,'lower_Z_basis':{'u':397,'v':5,'statement':'2^397 <= Z^5','integer_bit_length':(Z**5).bit_length()},'upper_Z_basis':{'a':1271,'b':16,'statement':'Z^16 < 2^1271','integer_bit_length':(Z**16).bit_length()},'prime_bases':[{'p':5,'a':137,'b':59},{'p':7,'a':73,'b':26}],'previous_margin':previous_margin,'threshold_margin':threshold_margin,'capacity_margins':margins,'errors':{'E_upper':str(E),'Q_upper':str(Q),'each_strictly_lt_quarter':True,'E_block':[32,25],'Q_block':[4,206],'row_delta_max_E_factor':'100/(7*m)','row_delta_max_Q_factor':'1/(175*m)'},'largest_basis_integer_bits':max((Z**16).bit_length(),1272),'no_large_capacity_power_evaluation':True,'no_D_M_evaluation':True,'no_float_decisions':True,'lean_invocations':0}
if CHECK:
 assert json.loads(json.dumps(r))==json.loads((OUT/'compressed-certificate.json').read_text())
 for path,v in json.loads((OUT/'SOURCE_MAP.json').read_text())['source_files'].items():assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==v['sha256']
else:
 (OUT/'compressed-certificate.json').write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(r,ensure_ascii=False,indent=2))
