"""Heuristic sizing only. Formal numerical acceptance uses exact rational intervals."""
import mpmath as mp,json,math
from pathlib import Path
from probe_explicit_bft_constants import beta,mpq
mp.mp.dps=70
ROOT=Path(__file__).resolve().parents[1]
def evalrow(r):
 p,q,k,l,a,b,c,d=r['p'],r['q'],r['k0'],r['l0'],r['a'],r['b'],r['c'],r['d'];P,Q=p**k,q**l;D0=a*P-b*Q;s=mp.mpf(c)/d;z=mp.mpf(D0)/(a*P)
 root=mp.sqrt(s*s*z*z+4-4*z);u1=(s*(2-z)-root)/(2*(1-z)*(s+1));u2=(s*z+2-root)/(2*z*(s+1));al=(s+1)**(s+1)/(s-1)**(s-1)
 V=al*u1**(s-1)*(1-u1)*(1-u1+z*u1);W=al*u2*(1-u2)*(1-z*u2)**(s-1)
 L=mp.mpf(str(r['L1']));O3=P**(s-1)*L/(a*b**s*V);O4=min(P,Q)**s*L/((a*P)**(s-1)*D0**2*W)
 T=c*mp.log(max(P,Q))+d*mp.log(O4)
 BETA=min((1-mp.mpf(r['wp'])/1000)/(c*mp.log(P)),(1-mp.mpf(r['wq'])/1000)/(c*mp.log(Q)))
 eta=BETA*T-1
 H1=(r['m0']+1)/(BETA*mp.log(2));H2=(mp.log(48)/(d*mp.log(O3))+1)/(BETA*mp.log(2));H3=(T+mp.log(4))/(eta*mp.log(2))
 return {'edge':[p,q],'target':[r['wp'],r['wq']],'s':f'{c}/{d}','logOmega3':str(mp.log(O3)),'logOmega4':str(mp.log(O4)),'beta':str(BETA),'T':str(T),'eta':str(eta),'G_threshold_bits':str(H1),'Omega3_threshold_bits':str(H2),'power_gap_threshold_bits':str(H3),'threshold_bits':str(max(H1,H2,H3))}

def main():
 rows=json.loads((ROOT/'results/selected_cut_design.json').read_text())
 for r in rows:
  if (r['p'],r['q'])==(2,13):r.update(c=3,d=2,L1=1.5395,m0=138,wp=53,wq=221)
  for k in ['ap','aq','score','logOmega3','logOmega4']:r.pop(k,None)
 out=[]
 for r in rows:
  v=evalrow(r);out.append(v)
  print(v['edge'],v['s'],v['target'],'bits',float(v['threshold_bits']), 'parts',*[round(float(v[k]),2) for k in ['G_threshold_bits','Omega3_threshold_bits','power_gap_threshold_bits']],flush=True)
 (ROOT/'results/cut_height_probe.json').write_text(json.dumps(out,indent=2)+'\n')
 (ROOT/'results/cut_inputs.json').write_text(json.dumps(rows,indent=2)+'\n')
if __name__=='__main__':main()
