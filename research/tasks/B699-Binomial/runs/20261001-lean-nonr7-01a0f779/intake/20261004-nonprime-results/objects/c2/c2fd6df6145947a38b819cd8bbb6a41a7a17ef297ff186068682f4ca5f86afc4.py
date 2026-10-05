#!/usr/bin/env python3
"""Deterministic byte, syntax-token and integer checks; does not run Lean."""
from pathlib import Path
import ast, hashlib, json, re
R = Path(__file__).resolve().parents[1]
def need(condition, message):
    if not condition:
        raise RuntimeError(message)
def sha(b):
    return hashlib.sha256(b).hexdigest()
def blob(b):
    return hashlib.sha1(b'blob ' + str(len(b)).encode() + b'\0' + b).hexdigest()
def read(name):
    return (R / name).read_text(encoding='utf-8')
checks=[]
original=R/'input/original'
count=0
for line in (original/'SHA256SUMS.txt').read_text().splitlines():
    if not line.strip(): continue
    digest, name = line.split(maxsplit=1)
    name=name.lstrip('*')
    need(sha((original/name).read_bytes())==digest, 'input hash: '+name)
    count+=1
checks.append({'name':'original_member_hashes','count':count,'passed':True})
b=(original/'reference/Prime-Defs.lean').read_bytes()
lf=b.replace(b'\r\n',b'\n')
need(blob(lf)=='5a4bb9cd22784d65a0ade53b88c3641f38c19f85','pinned Prime.Defs Git blob after explicit CRLF normalization')
need('def Prime (p : ℕ) :=\n  Irreducible p' in lf.decode(),'actual Prime definition')
need('Prime p ↔ 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p' in lf.decode(),'prime_def statement')
checks.append({'name':'Prime_Defs_pin_binding','raw_bytes':len(b),'crlf_count':b.count(b'\r\n'),'raw_sha256':sha(b),'raw_git_blob':blob(b),'lf_git_blob':blob(lf),'passed':True})
prod=read('NonprimeCertificates.lean'); core=read('CoreOnlyDivisorCertificates.lean'); bridge=read('CoreToNatPrimeBridge.lean'); direct=read('DefsOnlyDirectCertificates.lean')
prev=(R/'input/previous/NonprimeCertificates.lean').read_bytes()
need(sha(prev)=='4e4f649567aa6e82ce3153058a4c6fb4d2172440aaaa443239205c00cac588ea','baseline binding')
need(prod==prev.decode().replace('Nat.not_prime_of_mul_eq','Nat.not_prime_mul').replace(' rfl\n','\n'),'only five product-root substitutions')
need(prod.count('Nat.not_prime_mul')==5,'five roots')
need('Nat.Prime' not in core and 'namespace Nat' not in core,'no masquerading/redefinition of Nat.Prime')
need([l for l in core.splitlines() if l.startswith('import ')]==['import Init'],'core import boundary')
need('Prime.Basic' not in direct+bridge+core,'optional alternatives do not import Basic directly')
need('h.isUnit_or_isUnit' in direct and 'Nat.prime_def' not in direct,'direct definition route')
need(read('AuditCoreOnly.lean')==core+read('audit/CoreCommands.lean.inc'),'core audit binding')
need(read('AuditNonprimeCertificates.lean')==prod+read('audit/RecommendedCommands.lean.inc'),'recommended audit binding')
need(read('AuditDefsOnlyDirect.lean')==direct+read('audit/DefsDirectCommands.lean.inc'),'direct audit binding')
expected='import CoreToNatPrimeBridge\n'+read('audit/BridgeCommands.lean.inc')
need(read('AuditCoreBridge.lean')==expected,'bridge audit imports actual compiled bridge; no re-elaboration of core under Mathlib')
new_lean=list(R.glob('*.lean'))+list((R/'probes').glob('*.lean'))
for p in new_lean:
    text=p.read_text()
    need(not re.search(r'\b(by|sorry|admit|axiom|native_decide|decide)\b',text),'forbidden authored token: '+p.name)
checks.append({'name':'authored_source_and_audit_shape','files':len(new_lean),'passed':True,'scope':'authored Lean sources only; not imported library sources or original input'})
rows=json.loads(read('verification/CERTIFICATES.json'))
need([(x['n'],x['d'],x['k']) for x in rows]==[(4884,2,2442),(4885,5,977),(4886,2,2443),(4887,3,1629),(4888,2,2444)],'factor row identity')
for row in rows:
    n,d,k=row['n'],row['d'],row['k']
    need(d*k==n and divmod(n,d)==(k,0),'multiplication and division cross-check')
    need(2<=d<n and k>=2 and d!=1 and k!=1,'proper factors')
    need((d+1)+(n-d-1)==n and (d-2)+2==d and (k-2)+2==k,'numeric conversion offsets')
    need(f'⟨{k}, rfl⟩' in core,'explicit core witness')
    need(f'Nat.le_add_right {d+1} {n-d-1}' in core,'upper-bound witness')
    for ns,src in [('B699NonprimeCertificates',prod),('B699DefsDirect',direct),('B699CoreBridge',bridge)]:
        need(f'theorem not_prime_{n} : ¬ Nat.Prime {n} :=' in src,'exact type '+ns)
checks.append({'name':'integer_factor_and_type_checks','rows':5,'passed':True,'note':'Arithmetic and text checks only, not Lean typechecking.'})
metrics=json.loads(read('verification/SOURCE_METRICS.json'))
texts={'previous_mul_eq':prev.decode(),'recommended_mul':prod,'core_alternative':core,'mathlib_bridge':bridge,'defs_only_direct':direct}
for label,txt in texts.items():
    m=metrics[label]
    need(m['whole_file_utf8_bytes']==len(txt.encode()),'whole-file metric')
    pairs=re.findall(r'theorem (\w+) : [^\n]+ :=\n(.*?)(?=\n\ntheorem|\n\nend)',txt,re.S)
    bs=[' '.join(body.split()) for _,body in pairs]
    need(len(bs)==5,'body count')
    need(sum(len(x.encode()) for x in bs)==m['total_normalized_body_utf8_bytes'],'body metric')
checks.append({'name':'source_text_metrics','passed':True,'not_measured':['Lean Expr size','Lean compilation','kernel checking','import closure size']})
for p in (R/'scripts').glob('*.py'):
    ast.parse(p.read_text(),filename=str(p))
checks.append({'name':'python_script_parse','passed':True})
print(json.dumps({'status':'STATIC_CHECKS_PASSED','lean_executed':False,'checks':checks},ensure_ascii=False,indent=2))
