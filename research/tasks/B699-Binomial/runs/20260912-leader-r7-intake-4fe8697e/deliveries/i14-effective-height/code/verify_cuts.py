"""Exact numerical obligations for separately homogenized three-degree Padé cuts.
Publication dependencies are checked against a frozen literal table; new content
claims require the corresponding completed finite and infinite certificates.
All acceptance comparisons below are rational, including the common threshold.
"""
from pathlib import Path
from fractions import Fraction as F
import json,sys,math
R=Path(__file__).resolve().parents[1];sys.path.insert(0,str(R/'code/vendor'))
from rational_intervals import I,logq,logI,sqrtq,decimal_outer
TABLE={(9,8):(11742,25),(8,7):(11951,28),(7,6):(12219,53),(6,5):(12581,35),(5,4):(13098,50),(9,7):(13317,15),(7,5):(14135,74),(4,3):(14170,153),(3,2):(15395,138),(8,5):(15407,53),(5,3):(15454,86),(3,1):(15498,260),(25,17):(15540,582),(7,4):(16219,60),(8,3):(16560,149),(9,5):(16636,79),(5,2):(17017,231),(7,3):(17282,161),(9,4):(17666,87),(2,1):(19377,150)}
QDEN=10000

def exact_rates(row):
 p,q,k,l,a,b,e,d,f=[row[x] for x in ['p','q','k0','l0','a','b','e','d','f']]
 assert p!=q and all(isinstance(v,int) and v>=1 for v in [p,q,k,l,a,b,e,d,f])
 assert all(all(v%j for j in range(2,math.isqrt(v)+1)) for v in [p,q])
 P=p**k;Q=q**l;D=a*P-b*Q;assert 0<D<a*P and D==row['D0']
 z=F(D,a*P);h=1-z;N=e+d+f;c=d+f
 alpha=N*logq(F(N))-e*logq(F(e))-d*logq(F(d))-f*logq(F(f))
 bq=f*(1+h)+d+e*h;tq=(2*f/(I.point(bq)+sqrtq(bq*bq-4*h*N*f))).rounded()
 be=e*(1+z)+d+f*z;te=(2*e/(I.point(be)+sqrtq(be*be-4*z*N*e))).rounded()
 assert 0<tq.lo<tq.hi<1 and 0<te.lo<te.hi<1
 lq=alpha+f*logI(tq)+d*logI(1-tq)+e*logI(1-h*tq)
 le=alpha+e*logI(te)+d*logI(1-te)+f*logI(1-z*te)
 if row['content_source']=='BFT_5_1':
  assert e==d
  L,m0=TABLE[(c,d)];assert F(row['L'])==F(L,10000) and row['m0']==m0
  g=d*logq(F(L,10000))
 elif row['content_source']=='new_permutation_content':
  triple=tuple(sorted((e,d,f)))
  assert row['content_canonical']==list(triple)
  fc=json.loads((R/('evidence/accepted_content_family_'+'_'.join(map(str,triple))+'.json')).read_text())
  tc=next(x for x in json.loads((R/'evidence/content_tail.json').read_text())['rows'] if tuple(x[k] for k in ['e','d','f'])==triple)
  assert F(row['g'])==F(fc['g'])==F(tc['g']) and row['m0']==fc['m0'] and fc['M']==tc['M']
  assert fc['all_permutations'] and fc['status']=='ACCEPTED_PAPER_PLUS_EXACT_CERTIFICATE_UNLEANED'
  g=I.point(F(row['g']))
 else:raise ValueError('Unknown content dependency')
 O=f*logq(F(P))-max(e,d)*logq(F(a))-c*logq(F(b))-lq+g
 T=e*logq(F(P))+c*logq(F(Q))-(c-min(e,d))*logq(F(a))-(e+d)*logq(F(D))-le+g
 wp,wq=row['wp'],row['wq'];assert 0<wp<QDEN and 0<wq<QDEN
 ap=(e+f)*logq(F(P));aq=c*logq(F(Q));assert ap.lo>1 and aq.lo>1
 beta=min(F(QDEN-wp,QDEN)/ap.hi,F(QDEN-wq,QDEN)/aq.hi)
 return dict(O=O,T=T,beta=beta,d1=beta*T.lo-1,d2=beta*O.lo,K0=(1<<N)*max(f,e*d),m0=row['m0'],log_Q=lq,log_E=le,tQ=tq,tE=te)

def obligations(row,H,D=9):
 r=exact_rates(row);x=F(H,2);b=r['beta'];T=r['T'];O=r['O'];d1=r['d1'];d2=r['d2'];K=r['K0']
 assert d1>0 and d2>0
 margins=dict(content_start=b*x-1-r['m0'],tail1=d1*x-logq(x).hi-T.hi-logq(F(8*K)).hi,tail2=d2*x-logq(x).hi-O.hi-logq(F(4*D*K)).hi,monotone1=d1*x-1,monotone2=d2*x-1)
 return dict(passed=all(v>0 for v in margins.values()),H=H,D=D,margins={k:str(v) for k,v in margins.items()},beta=str(b),O=O.json(),T=T.json(),d1=str(d1),d2=str(d2),K0=K,m0=r['m0'],display=dict(O=decimal_outer(O),T=decimal_outer(T)))

def make_inputs():
 design=json.loads((R/'input/selected_cut_design.json').read_text())
 selected=[]
 for row in design['cuts']:
  keep={'p','q','k0','l0','a','b','D0','e','d','f','wp','wq','content_source','L','m0','g','content_canonical'}
  rr={k:v for k,v in row.items() if k in keep}
  if rr['content_source']=='NEW_UNPROVED_G':
   triple=tuple(sorted(rr[k] for k in ['e','d','f']))
   fc=json.loads((R/('evidence/accepted_content_family_'+'_'.join(map(str,triple))+'.json')).read_text())
   assert F(rr['g'])==F(fc['g'])
   rr.update(content_source='new_permutation_content',content_canonical=list(triple),m0=fc['m0'])
  # Finite search only chooses a threshold; each accepted threshold is fully checked.
  for bits in range(12,42):
   out=obligations(rr,1<<bits,13)
   if out['passed']:break
  assert out['passed'], 'No threshold accepted in the implemented design range'
  selected.append(dict(input=rr,certificate=out))
  print('CUT',len(selected),rr['p'],rr['q'],(rr['e'],rr['d'],rr['f']),'Y bits',out['H'],flush=True)
 common=max(t['certificate']['H'] for t in selected)
 inp=dict(denominator=QDEN,height_Y_bits=common,D=13,Y_domain='real Y >= 2^height_Y_bits',cuts=[t['input'] for t in selected])
 (R/'input/cuts.json').write_text(json.dumps(inp,indent=2)+'\n')
 verify_inputs()
def verify_inputs():
 inp=json.loads((R/'input/cuts.json').read_text());H=inp['height_Y_bits'];D=inp['D'];assert inp['denominator']==QDEN and D==13 and isinstance(H,int) and H>=2
 selected=[]
 for row in inp['cuts']:
  out=obligations(row,H,D);assert out['passed'];selected.append(dict(input=row,certificate=out))
 assert len(selected)==45
 result=dict(status='PASS_RATIONAL_NUMERICAL_OBLIGATIONS',denominator=QDEN,H=H,D=D,cuts=selected)
 (R/'evidence/cuts_check.json').write_text(json.dumps(result,indent=2)+'\n')
 print('PASS',len(selected),'exact cuts; all real Y >= 2^',H,flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 if '--generate' in sys.argv:make_inputs()
 else:verify_inputs()
