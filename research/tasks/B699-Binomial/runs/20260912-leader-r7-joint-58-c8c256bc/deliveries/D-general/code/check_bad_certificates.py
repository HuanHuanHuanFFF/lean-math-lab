from pathlib import Path
import copy,json
from check_pell_primary import verify as pell
from check_allocation import verify as alloc
ROOT=Path(__file__).resolve().parents[1]

def run():
 p=json.loads((ROOT/'outputs/pell-certificate.json').read_text());a=json.loads((ROOT/'outputs/allocation-certificate.json').read_text())
 tests=[]
 def reject(label,obj,f,mutate):
    v=copy.deepcopy(obj);mutate(v)
    try:f(v)
    except (AssertionError,KeyError,ValueError,ZeroDivisionError,TypeError):tests.append(label);return
    raise AssertionError('bad certificate accepted: '+label)
 reject('missing-seed-case',p,pell,lambda x:x['cases'][0]['seeds'].pop())
 reject('missing-log-record',p,pell,lambda x:x['log_certificates'].pop())
 reject('duplicate-log-record',p,pell,lambda x:x['log_certificates'].append(x['log_certificates'][0]))
 reject('changed-seed-coordinate',p,pell,lambda x:x['log_certificates'][0]['seed'].__setitem__(0,17))
 reject('changed-unit',p,pell,lambda x:x['cases'][0]['unit'].__setitem__(0,15))
 reject('changed-norm',p,pell,lambda x:x['cases'][0].__setitem__('E',62))
 reject('changed-p',p,pell,lambda x:x['log_certificates'][0].__setitem__('p',x['log_certificates'][0]['p']+1))
 reject('changed-q',p,pell,lambda x:x['log_certificates'][0].__setitem__('q',x['log_certificates'][0]['q']+1))
 reject('changed-nearest-integer',p,pell,lambda x:x['log_certificates'][0].__setitem__('nearest_mu',x['log_certificates'][0]['nearest_mu']+1))
 reject('exaggerated-log-margin',p,pell,lambda x:x['log_certificates'][0]['checked_margin'].__setitem__('delta_lower_1e6',999999))
 reject('reduced-initial-height',p,pell,lambda x:x.__setitem__('M',10**20))
 reject('omitted-terminal-tail',p,pell,lambda x:x.__setitem__('V',127))
 reject('changed-terminal-range',p,pell,lambda x:x['terminal'][0].__setitem__('v_max',126))
 reject('deleted-terminal-equation',p,pell,lambda x:x['terminal'].pop())
 reject('deleted-residue-class',a,alloc,lambda x:x['records'][0]['residues'].pop())
 reject('deleted-surviving-family',a,alloc,lambda x:x['records'].pop())
 reject('incorrect-period',a,alloc,lambda x:x.__setitem__('period',1260))
 reject('omitted-modulus',a,alloc,lambda x:x['moduli'].pop())
 return {'status':'PASS','rejected_count':len(tests),'rejected_tests':tests,'note':'Both checkers and mutations were implemented within one research session; this is not independent human review.'}
if __name__=='__main__':
 o=run();(ROOT/'outputs/bad-certificate-check.json').write_text(json.dumps(o,indent=2)+'\n');print(json.dumps(o))
