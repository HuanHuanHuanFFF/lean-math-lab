import copy,json,sys
from pathlib import Path
from check import check
out=Path(sys.argv[1]);base=json.loads((out/'certificate.json').read_text());results=[]

def expect(name,mut):
 x=copy.deepcopy(base);mut(x)
 try:check(x)
 except (AssertionError,KeyError,ValueError,IndexError,ZeroDivisionError):results.append(name);return
 raise RuntimeError('Invalid certificate accepted: '+name)
expect('wrong coverage period',lambda x:x.update(period=359))
expect('missing exponent state',lambda x:x['mapping'].pop())
expect('duplicate exponent state',lambda x:x['mapping'].append(x['mapping'][0]))
expect('wrong claimed count',lambda x:x['counts'].update(states=479))
expect('fabricated polynomial image',lambda x:x['rows'][0]['image'].__setitem__(0,0))
expect('wrong odd root part',lambda x:x['rows'][0].update(m=3))
expect('invalid residual h',lambda x:x['rows'][0].update(h=0))
expect('out of range root residue',lambda x:x['rows'][0].update(x_residue=9))
expect('empty witnesses',lambda x:x.update(rows=[]))
expect('modulus must not include factor two',lambda x:x['rows'][0].update(modulus=2))
# Explicit prime-3 cancellation counterexample; retain full numerator power then truncate to choose3.
from math import gcd
C=28*27*26//6;E=27//gcd(27,5*4)
assert E==27 and C%E!=0 and gcd(C,E)==9
res={'status':'PASS','rejected':results,'count':len(results),
     'prime_three_boundary':{'n':28,'j':5,'uncancelled_E1':E,'choose3':C,'correct_common_divisor_part':gcd(C,E)}}
(out/'bad-inputs.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n');print(json.dumps({'rejected':len(results)}))
