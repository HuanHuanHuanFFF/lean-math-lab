from middle_height_probe import profile, np, primes, lf, LB, ROOT
import json
rows=[profile(i) for i in range(185,513)]
worst=sorted(rows,key=lambda a:a['N_diagnostic'],reverse=True)[:15]
print('WORST LOW:',json.dumps(worst,indent=2))
# Fixed cutoffs certify a fixed ceiling N; floats select intervals only.
I=np.arange(185,1000001,dtype=np.int64)
T=np.searchsorted(primes,I,side='left')
R=I//3;S=3*I//4;L=I-R-1;lam=2*S-R
E=S*(S+1)+L*(L+1)//2
Delta=lam*(I-T)-E
N=100000000
# (N)_i >= N^i * exp(-i(i-1)/(2*(N-i+1)))
# exact integral/log lower bound, not claimed certified here.
margin=Delta*np.log(float(N))-lam*I*(I-1)/(2*(N-I+1))-lam*lf[I]+S*(S+1)*np.log(2)+2*LB[S]+LB[L]
normalized=margin/(I*lam)
ix=int(np.argmin(normalized))
print('FIXED N 1e8 worst',{'i':int(I[ix]),'margin/i/lam':float(normalized[ix]),'margin':float(margin[ix]),'delta':int(Delta[ix])})
print('negative',int(sum(margin<=0)))
print('all max diagnostics below 2e7 (low185..220)',max(r['N_diagnostic'] for r in rows if r['i']<=220))
with open(ROOT/'outputs'/'middle_fixed_probe.json','w') as f:json.dump({'worst_low':worst,'fixedN_worst_i':int(I[ix]),'normalized_margin_diagnostic':float(normalized[ix]),'num_negative_diagnostic':int(sum(margin<=0))},f,indent=2)
