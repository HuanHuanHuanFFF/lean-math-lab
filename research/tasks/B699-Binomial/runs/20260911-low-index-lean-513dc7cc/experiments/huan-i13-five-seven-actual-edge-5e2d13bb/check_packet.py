from pathlib import Path
from fractions import Fraction as F
from math import factorial
import json,re,hashlib
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
source=json.loads((OUT/'SOURCE_MAP.json').read_text())
for name,v in source['sources'].items():assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==v['sha256']
roots=json.loads((OUT/'AUDIT_ROOTS.json').read_text());seen=[]
for mod in roots['modules']:
 s=(OUT/mod['source']).read_text()
 plain=re.sub(r'/\-.*?\-/','',s,flags=re.S)
 assert not re.search(r'\b(?:sorry|native_decide)\b|^\s*axiom\b',plain,re.M)
 ns=re.search(r'^namespace (\S+)',s,re.M)[1]
 names=[ns+'.'+n for n in re.findall(r'^(?:noncomputable )?(?:def|abbrev|theorem)\s+(\w+)',s,re.M)]
 assert names==mod['public_roots']
 audit=(OUT/mod['audit']).read_text()
 for n in names:assert f'#check @{n}'in audit and f'#print axioms {n}'in audit
 seen+=names
 assert 'I13C311'not in s
assert len(set(seen))==len(seen)==73
assert set(seen)=={r['name']for r in roots['roots']}
full=(OUT/'AFinal.lean').read_text();assert 'Y ^ 355 ≤ A ^ 1000 ∨ Y ^ 221 ≤ B ^ 1000'in full
old=RUN/'experiments/huan-i13-five-seven-height-probe-5e2d13bb';frozen=json.loads((old/'FREEZE.json').read_text())
assert all(hashlib.sha256((old/n).read_bytes()).hexdigest()==d['sha256']for n,d in frozen['files'].items())
c=json.loads((old/'certificate.json').read_text());R=F(c['rates']['R']);BQ=F(c['rates']['qBase']);BE=F(c['rates']['eBase']);Z=c['fixed']['Z']
qr=F(50**7,25**11)*BQ/R;er=F(Z*50**4,25**11*49**11)*BE/R
assert 0<qr<=F(4,5)and 0<er<=F(32,33)
for m in range(1,17):
 S=(m+1)**2;L=F(16,3)*R**(m-1)/S
 assert 24*(50**7*BQ)**m/L/25**(11*m)==F(9,2)*R*S*qr**m
 assert F(Z**m,2)*(50**(4*m-1)*BE**m/L)/(25**(11*m)*49**(11*m))==F(3,1600)*R*S*er**m
 D0=F(factorial(9*m-1)*factorial(2*m-1),factorial(7*m)*factorial(4*m-1))
 D1=F(factorial(9*m-1)*factorial(2*m),factorial(7*m-1)*factorial(4*m))
 assert L<=D0 and D1==F(7*m,2)*D0
 if m>=15:assert 50*L<=D1
assert 2**397<=Z**5 and Z**16<=2**1271 and 5**59<=2**137 and 7**26<=2**73
if (OUT/'FREEZE.json').exists():
 f=json.loads((OUT/'FREEZE.json').read_text())
 assert all(hashlib.sha256((OUT/n).read_bytes()).hexdigest()==v['sha256']for n,v in f['files'].items())
print(json.dumps({'status':'PASS_STATIC_AND_EXACT_SMALL_CHECKS_NOT_LEAN','modules':len(roots['modules']),'public_roots':len(seen),'theorems':roots['theorem_count'],'identity_m_range':[1,16],'short_basis_bits':1272,'source_hashes_checked':len(source['sources']),'lean_invocations':0}))
