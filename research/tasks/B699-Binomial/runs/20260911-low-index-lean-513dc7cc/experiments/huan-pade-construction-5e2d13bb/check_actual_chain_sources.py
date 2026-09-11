from pathlib import Path
from hashlib import sha256
from datetime import datetime,timezone
import re,json
REPO=Path.cwd()
ROOT=Path(__file__).resolve().parent
entry=ROOT/'ActualDeterminantCheckpoint.lean'
mathlib=Path('D:/CodingProject/Math/.lake/packages/mathlib')

def module_path(m):
    return Path(*[p.strip('«»') for p in re.findall(r'«[^»]+»|[^.]+',m)]).with_suffix('.lean')

seen={};libraries=set();pending=[entry]
while pending:
    p=pending.pop().resolve()
    if p in seen:continue
    data=p.read_bytes();s=data.decode('utf-8-sig')
    active=re.sub(r'/-.*?-/', '', s, flags=re.S)
    active=re.sub(r'--[^\n]*','',active)
    assert not re.search(r'^\s*(axiom|sorry|admit)\b',active,re.M),str(p)
    assert 'native_decide' not in active and 'ofReduceBool' not in active,str(p)
    imports=re.findall(r'^import\s+(\S+)',s,re.M)
    seen[p]={'path':p.relative_to(REPO).as_posix(),'bytes':len(data),'sha256':sha256(data).hexdigest(),'imports':imports}
    for m in imports:
        if m.startswith('Mathlib.'):
            libpath=module_path(m)
            assert (mathlib/libpath).exists(),m
            libraries.add(m)
        else:
            dep=REPO/module_path(m)
            assert dep.exists(),m
            pending.append(dep)
for row in seen.values():
    assert not any(x in row['path'] for x in ['IntegralIdentity.lean','AdjacentIntegerBridge.lean','AdjacentDeterminantData.lean'])
for m in ['FREEZE_INTEGER_V1.json','FREEZE_AUXILIARIES_V1.json','FREEZE_CONTENT_V1.json','FREEZE_ADJACENT_V1.json','FREEZE_COEFFICIENT_MULTIPLICATION_V1.json']:
    d=json.loads((ROOT/m).read_text(encoding='utf-8-sig'))
    for row in d.get('sources',[d]):
        data=(ROOT/row['source']).read_bytes()
        assert len(data)==row['bytes'] and sha256(data).hexdigest()==row['sha256']
for fn,name in [('ActualMagnitudeRecurrence.lean','q_magnitude_recurrence'),('ActualMagnitudeRecurrence.lean','p_magnitude_recurrence'),('ActualPolynomialRecurrence.lean','qPolynomial_recurrence'),('ActualPolynomialRecurrence.lean','pPolynomial_recurrence'),('ActualRawDeterminant.lean','rawPolynomialDeterminant_formula'),('ActualNormalizedRows.lean','actual_bft_integer_gap')]:
    src=(ROOT/fn).read_text(encoding='utf-8-sig')
    header=src.split('theorem '+name,1)[1].split(':= by',1)[0]
    assert not any(w in header for w in ['hraw','hpoly','HeightValid','PadeIdentity'])
cache=[]
for m in sorted(libraries):
    p=(mathlib/'.lake/build/lib/lean'/module_path(m)).with_suffix('.olean')
    cache.append({'module':m,'olean_exists':p.exists()})
record={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS','scope':'static import/source/hash checks only; no Lean invocation or kernel/axiom acceptance','entry':entry.relative_to(REPO).as_posix(),'project_source_count':len(seen),'project_sources':list(seen.values()),'direct_mathlib_cache_inventory':cache,'missing_direct_mathlib_oleans':[x['module'] for x in cache if not x['olean_exists']],'old_nine_frozen_sources_unchanged':True,'no_old_conditional_det_or_analysis_project_imports':True,'final_source_headers_have_no_raw_or_pade_hypothesis':True,'script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
(ROOT/'actual-chain-source-check.json').write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in record.items() if k not in ['project_sources','direct_mathlib_cache_inventory']}))
