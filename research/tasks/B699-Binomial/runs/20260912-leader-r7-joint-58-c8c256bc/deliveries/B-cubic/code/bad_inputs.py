"""Fail-closed checks. Countermodels never described as original counterexamples."""
import argparse,copy,json
from pathlib import Path
from residuals import verify
from independent import check_families,testrow
from exact import canonical

def run(root):
    rejected=[]
    def rejects(name,fn):
        try:fn()
        except (ValueError,AssertionError,KeyError):rejected.append(name)
        else:raise AssertionError('bad input accepted: '+name)
    cert=json.loads((root/'residuals.json').read_text())['certificate']
    for name,modify in [
        ('omit odd-R branch',lambda c:c['general_cases'].pop(0)),
        ('weaken v residue',lambda c:c['excluded_minimum'].__setitem__('v_mod3',0)),
        ('drop mu restriction',lambda c:c['excluded_minimum'].__setitem__('mu',3)),
        ('change row coefficient',lambda c:c.__setitem__('constants',[128,512,1024])),
        ('drop U mod3 branch',lambda c:c['div9_cases'].__setitem__(2,['even g, U=11 mod12',1,1,1]))]:
        c=copy.deepcopy(cert);modify(c);rejects(name,lambda c=c:verify(c))
    f=json.loads((root/'families.json').read_text())
    for name,modify in [
        ('alter a family integer',lambda c:c['examples'][0].__setitem__('n',c['examples'][0]['n']+4)),
        ('delete factor witness',lambda c:c['AP_nonempty_factor_witness']['K_primes'].pop()),
        ('replace prime by composite',lambda c:c['mixed_examples'][0].__setitem__('common_prime',121)),
        ('false carry count',lambda c:c['mixed_examples'][0]['valuations'].__setitem__(0,0))]:
        c=copy.deepcopy(f);modify(c);rejects(name,lambda c=c:check_families(c))
    rejects('apply R256 with wrong v',lambda:testrow(12,256))
    rejects('apply R256 with mu=3',lambda:testrow(80,256))
    rejects('apply R512 without 9|n',lambda:testrow(16,512))
    rejects('reduce full 3^3 to 3^2',lambda:canonical(56,11))
    rejects('remove 3 when v3(n-1)=2',lambda:canonical(496,210))
    return {'status':'PASS','rejected_count':len(rejected),'rejected':rejected}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--dir',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run(a.dir);a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: %d altered or out-of-domain inputs rejected'%r['rejected_count'])
