"""Rebuild the four round-8 modules and inspect a joint transitive axiom audit."""
from pathlib import Path
import subprocess, hashlib, json, re, os, sys, datetime, time
ROOT=Path(__file__).resolve().parents[5]
B=ROOT/'research/tasks/B686-Four/round8'
OUT=B/'main/verification';OUT.mkdir(exist_ok=True)
FILES=['lean/BigPrimeSupport.lean','main/Wheel2310.lean','independent/SqrtRoundingBoundary.lean','independent/PellCapacityBoundary.lean']
STANDARD={'propext','Classical.choice','Quot.sound'}
EXPECTED={name:STANDARD for name in ['B686Round8.common_prime_divides_cross_difference','B686Round8.large_prime_hits_block_unique','B686Round8.large_prime_power_dvd_one_factor','B686Round8.large_prime_power_divides_cross_difference','B686Round8Independent.sqrt_approx10_residual','B686Round8Independent.sqrt_approx10_squared_bracket_at_cubic_scale']}
EXPECTED.update({'B686Round8Main.wheel_certificate':set(),'B686Round8Independent.pell_pair_ratio_two':{'propext'},'B686Round8Independent.pell_pair_gap_grows':{'propext','Quot.sound'}})
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
records=[]; started=time.time()
def run(label,command,source=None):
    before=sha(source) if source else None
    t=time.time(); env=os.environ.copy();env['LEAN_PATH']=str(ROOT);env['PYTHONDONTWRITEBYTECODE']='1'
    proc=subprocess.run(command,cwd=ROOT,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=100)
    log=OUT/(label+'.log');log.write_bytes(proc.stdout)
    records.append({'label':label,'command':command,'exit_code':proc.returncode,'seconds':round(time.time()-t,2),'log':log.relative_to(ROOT).as_posix(),'log_sha256':sha(log),'source':source.relative_to(ROOT).as_posix() if source else None,'source_sha256':before})
    assert proc.returncode==0,(label,proc.stdout.decode(errors='replace'))
    if source:assert before==sha(source)
    return proc.stdout.decode(errors='replace')
run('source-policy',[sys.executable,'scripts/check-lean-policy.py','--roots','research/tasks/B686-Four/round8'])
version=run('lean-version',['pwsh','-NoProfile','-Command',"& './scripts/lake.ps1' -LakeArgs @('env','lean','--version')"])
assert '4.33.1' in version,version
for rel in FILES:
    src=B/rel;target=src.with_suffix('.olean')
    cmd="& './scripts/lake.ps1' -LakeArgs @('env','lean','-o','"+target.relative_to(ROOT).as_posix()+"','"+src.relative_to(ROOT).as_posix()+"')"
    run(src.stem,['pwsh','-NoProfile','-Command',cmd],src)
mods=['research.tasks.«B686-Four».round8.'+f.removesuffix('.lean').replace('/','.') for f in FILES]
joint=OUT/'JointAudit.lean'
joint.write_bytes(('\n'.join('import '+m for m in mods)+'\n\n'+'\n'.join('#print axioms '+n for n in EXPECTED)+'\n').encode())
output=run('joint-audit',['pwsh','-NoProfile','-Command',"& './scripts/lake.ps1' -LakeArgs @('env','lean','"+joint.relative_to(ROOT).as_posix()+"')"],joint)
actual={}
for match in re.finditer(r"'([^']+)' depends on axioms: \[([^\]]*)\]",output):
    actual[match[1]]={x.strip() for x in match[2].split(',') if x.strip()}
for match in re.finditer(r"'([^']+)' does not depend on any axioms",output): actual[match[1]]=set()
assert actual==EXPECTED,(actual,EXPECTED)
report={'success':True,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':round(time.time()-started,2),'full_displacement_bound_lean_verified':False,'formal_modules':4,'audited_declarations':9,'axioms':{k:sorted(v) for k,v in actual.items()},'records':records}
(B/'main/lean-verification.json').write_bytes((json.dumps(report,ensure_ascii=False,indent=2)+'\n').encode())
print(json.dumps({k:v for k,v in report.items() if k not in ('axioms','records')}))
