"""A specified finite existential check; stop at first exact all-point completion."""
from core import *
from pathlib import Path
from itertools import product
import json,time
O=Path(__file__).resolve().parents[1];start=time.time()
old=json.loads((O/'data/paired_lift_checks.json').read_text())['results'][3]
p=old['p'];B=old['B'];q=old['q'];M=old['M'];N=old['N'];g=old['best']['gaps']
space=math.prod(M-x for x in g);best=None;count=0
for ds in product(*(range(M-x) for x in g)):
    count+=1
    A=sorted([b+q*d for b,d in zip(B,ds)]+[b+q*(d+x) for b,d,x in zip(B,ds,g)])
    R=residual(A,N)
    if best is None or len(R)<best['residual_count']:
        best={'lower_heights':ds,'A':A,'residual_count':len(R),'residual':sorted(R)}
        print('examined',count,'best all-point holes',len(R),flush=True)
    if not R:break
assert is_sidon(best['A'])
verification=verify_maximal(best['A'],N)
out={'p':p,'q':q,'B':B,'M':M,'N':N,'gaps':g,'full_lower_height_space_size':space,
     'lower_vectors_examined_in_lexicographic_order':count,'entire_space_exhausted':count==space,
     'best':best,'independent_direct_verification':verification,'elapsed_seconds':time.time()-start}
assert best['residual']==[314,455]
T=sorted(best['A']+[314]);v=verify_maximal(T,N)
assert v['maximal'] and 2*314==455+173 and 173 in best['A']
out['one_step_completion']={'added':314,'T':T,'remaining_hole_blocked_by':{'point':455,'left_pair':[314,314],'right_pair':[455,173],'sum':628},'independent_direct_verification':v}
(O/'data/paired_lower_check.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out,indent=2),flush=True)
