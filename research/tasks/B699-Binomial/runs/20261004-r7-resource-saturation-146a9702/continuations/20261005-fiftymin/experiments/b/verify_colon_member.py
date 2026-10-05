"""Read-only minimal check of the complete new characteristic-zero N-colon identity."""
from pathlib import Path
import sys,json,hashlib,time
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
st=time.monotonic();rs,fs,gs,provenance=source();u,y,r=rs.u,rs.y,rs.r;p=Path(__file__).parent/'one-step-N-colon.json';raw=p.read_bytes();assert hashlib.sha256(raw).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';d=json.loads(raw)
def decode(ts,n):
 assert all(len(e)==n and all(isinstance(k,int) and k>=0 for k in e) and rs.QQ(c).denominator==1 for e,c in ts)
 assert len({tuple(e) for e,c in ts})==len(ts)
 return rs.R.from_dict({tuple(e)+((0,) if n==2 else ()):rs.QQ(c) for e,c in ts})
W=decode(d['W'],3);C0=decode(d['C0'],2);C1=decode(d['C1'],2)
assert len(W)==11536 and len(C0)==541 and len(C1)==604
lhs=gs['N']*W;rhs=(u-1)*(2*C0*fs['V1']-y*(u-1)*(y-1)**2*C1*fs['V0']);assert lhs==rhs
print(json.dumps({'status':'AUTHOR_EXACT_MEMBER_IDENTITY_PASS','identity':'N*W=(u-1)*(2*C0*V1-y*(u-1)*(y-1)^2*C1*V0)','certificate_sha256':hashlib.sha256(raw).hexdigest(),'source_provenance':provenance,'W_stats':rs.stats(W),'full_monomial_identity':True,'all_coefficients_integral':True,'elapsed_seconds':time.monotonic()-st},ensure_ascii=False))
