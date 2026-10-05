"""Read-only author checks of new exact colon identities and the N=0 component."""
from pathlib import Path
import sys,json,time,hashlib
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;st=time.monotonic()
def dec2(ts):return rs.R.from_dict({tuple(e)+(0,):rs.QQ(c) for e,c in ts})
def dec3(ts):return rs.R.from_dict({tuple(e):rs.QQ(c) for e,c in ts})
def coeff(F,k):return rs.R.from_dict({(a,b,0):c for (a,b,j),c in F.items() if j==k})
comp=json.loads((out/'Nzero-component.json').read_text());B9=dec2(comp['polynomials']['B9']);a=dec2(comp['polynomials']['N1']);b=dec2(comp['polynomials']['N0']);H2=dec2(comp['polynomials']['H2']);assert gs['N']==a*r+b
pa=[rs.R.one];pb=[rs.R.one]
for i in range(1,10):pa.append(pa[-1]*a);pb.append(pb[-1]*(-b))
def clear(F,d):return sum((coeff(F,k)*pb[k]*pa[d-k] for k in range(d+1)),rs.R.zero)
assert -clear(gs['K'],3)==-48*u*u*y*y*(u-1)**4*H2*B9
for name,F in fs.items():
 q=json.loads((out/('Nzero-'+name+'-quotient.json')).read_text());assert clear(F,q['d'])==B9*dec2(q['quotient'])
n=json.loads((out/'one-step-N-colon.json').read_text());W=dec3(n['W']);C0=dec2(n['C0']);C1=dec2(n['C1']);assert gs['N']*W==(u-1)*(2*C0*fs['V1']-y*(u-1)*(y-1)**2*C1*fs['V0'])
rj=json.loads((out/'one-step-r-colon.json').read_text());Wr=dec3(rj['Wr']);J=dec2(rj['J']);A=dec2(rj['A']);C=dec2(rj['C']);assert r*Wr==J*fs['V0']+108*(u-1)**3*(y-1)**4*A*C*fs['P5']
F0=dec2(rj['F0']);Wr0=coeff(Wr,0);q,rem=Wr0.div(F0);assert not rem
p=101;ev=lambda F:sum(int(c)*pow(9,e[0],p)*pow(4,e[1],p)*pow(97,e[2],p) for e,c in F.items())%p
assert ev(B9)==ev(gs['N'])==ev(gs['K'])==0 and ev(a)==46 and ev(W)==40 and all(ev(F)==0 for F in fs.values())
scans=[]
for path in sorted(out.glob('scan-*.json')):
 z=json.loads(path.read_text());pp=z['prime'];assert z['base_points']==(pp-2)*(pp-3) and z['common_count']==len(z['common_fibres']);assert z['allowed_count']==sum(len(t['saturated'])>1 for t in z['common_fibres']);scans.append({'prime':pp,'base_points':z['base_points'],'common_fibres':z['common_count'],'allowed':z['allowed_count']})
print(json.dumps({'status':'AUTHOR_EXACT_IDENTITIES_PASS','source_files':6,'KN_resultant_identity':True,'Nzero_quotient_identities':6,'global_N_colon_identity':True,'global_r_colon_identity':True,'r_colon_does_not_remove_F0_curve':True,'modular_nondivisibility_witness_rechecked':True,'scan_metadata_only':scans,'total_base_points':sum(z['base_points'] for z in scans),'total_common_fibres':sum(z['common_fibres'] for z in scans),'seconds':time.monotonic()-st},ensure_ascii=False))
