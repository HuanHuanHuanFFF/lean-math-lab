from pathlib import Path
from fractions import Fraction as F
import json,hashlib,time
OUT=Path(__file__).resolve().parent
assert not (OUT/'FREEZE.json').exists()
p=json.loads((OUT/'proposal.json').read_text());Z=p['Z'];M=p['M'];H=p['H'];R=F(p['R']);AQ=F(p['AQ']);AE=F(p['AE'])
assert(H,M,Z)==(65535,826,800066819113475893826133)
assert Z<=F(32,33)*AE and F(5,4)<=AQ
assert 3*R<25 and R<8
prime_basis={5:(137,59),7:(73,26)}
for pp,(a,b)in prime_basis.items():assert pp**b<=2**a
attempts=[];selected=None
for v in [16,32,64,128,256]:
 zv=Z**v;u=zv.bit_length()-1;A=u+1
 assert 2**u<=zv<2**A
 margins=[]
 for pp,alpha in [(5,645),(7,779)]:
  a,b=prime_basis[pp]
  margins.append({'p':pp,'alpha':alpha,'a':a,'b':b,'rate_margin':u*b*alpha-a*v*22000,'base_margin':b*H*alpha-a*22000*M,'lookahead_margin':u*b*alpha*M-2*alpha*b*v-a*v*22000*(M+1)})
 previous_margin=v*(H+2)-A*(M-1);threshold_margin=u*M-v*(H+2)
 success=previous_margin>=0 and threshold_margin>0 and all(min(r['rate_margin'],r['base_margin'],r['lookahead_margin'])>=0 for r in margins)
 attempts.append({'v':v,'u':u,'upper_A':A,'previous_margin':previous_margin,'threshold_margin':threshold_margin,'capacity_margins':margins,'pass':success,'basis_bit_length':zv.bit_length()})
 if success:selected=attempts[-1];break
assert selected is not None
# A small Bernoulli inequality proves each block, with a rational literal check as confirmation.
assert (F(33,32))**32>=2 and (F(5,4))**4>=2
Ecap=F((M+1)**2,64*2**(M//32));Qcap=F(36*(M+1)**2,2**(M//4))
assert 4*Ecap<1 and 4*Qcap<1 and 7*M>=100
assert 32*(M+2)**2<33*(M+1)**2 and 4*(M+2)**2<5*(M+1)**2
small={'E_cap':str(Ecap),'Q_cap':str(Qcap),'both_lt_quarter':True,'E_binary_block_count':M//32,'Q_binary_block_count':M//4,'E_block_exponent':32,'Q_block_exponent':4,'E_constant_bound':'3*R/1600 < 1/64','Q_constant_bound':'9*R/2 < 36','delta1_E_vs_delta0_multiplier':'100/(7*m)<=1 for m>=15','delta1_Q_vs_delta0_multiplier':'1/(175*m)<=1 for m>=1','E_monotonic_certificate':'33*(m+1)^2-32*(m+2)^2=(m-64)*(m+2)+33','Q_monotonic_certificate':'5*(m+1)^2-4*(m+2)^2=(m-8)*(m+2)+5'}
record={'status':'PASS_EXACT_SMALL_CERTIFICATES_FOR_FIXED_HEIGHT_PAPER_PLAN_NOT_LEAN','fixed':{'n_bits':65536,'Y_bits':H,'M':M,'Z':Z,'p':5,'q':7,'k0':2,'l0':2,'a':2,'b':1,'Dseed':1,'y':50,'z':'1/50','c':11,'d':7,'weights':[355,221],'capacity_alphas':[645,779],'N':22000},'rates':{'R':str(R),'AQ':str(AQ),'AE':str(AE),'qBase':p['qBase'],'eBase':p['eBase']},'selected_short_bases':selected,'precision_attempts':attempts,'errors':small,'max_primary_integer_basis_bits':max([selected['basis_bit_length']]+[(pp**b).bit_length() for pp,(a,b)in prime_basis.items()]),'no_factorial_D_M_evaluation':True,'no_direct_capacity_megapower_evaluation':True,'direct_65kbit_Z_bracket_used_in_initial_proposal_only':True,'lean_invocations':0,'no_new_heights_tested':True}
(OUT/'certificate.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False,indent=2))
