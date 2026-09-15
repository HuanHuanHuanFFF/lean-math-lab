import os
import copy,json,time
from pathlib import Path
from receive import verify
from arithmetic import profile
R=Path(__file__).resolve().parents[1]
OUT=Path(os.environ.get('B699_RUN_OUTPUT',str(R))).resolve();(OUT/'logs').mkdir(parents=True,exist_ok=True);(OUT/'evidence').mkdir(parents=True,exist_ok=True)
base=json.loads((R/'evidence/certificate.json').read_text())
mutations=[]
def add(name,change):mutations.append((name,change))
add('density gap corruption',lambda c:c['density'].__setitem__('gap',3039))
add('height endpoint one too small',lambda c:c['density'].__setitem__('height',2875))
add('right-side exponent missing a factor',lambda c:c['density'].__setitem__('rhs_power',8735000))
add('unsupported source inequality',lambda c:c['frozen'].__setitem__('U_power',4964))
add('upper base exponent too small',lambda c:c['base'].__setitem__('upper_num',20))
add('lower base exponent too large',lambda c:c['base'].__setitem__('lower_num',20))
add('drop m=4 exception',lambda c:c['cyclotomic'].__setitem__('exceptional',[1,2]))
add('drop full 5 part',lambda c:c['cyclotomic'].__setitem__('possible_smooth_good',[1,2]))
add('weaken good bound without changing elimination',lambda c:c['cyclotomic'].__setitem__('good_smooth_fourth_bound',3))
add('unearned good-degree weight',lambda c:c['budget'].__setitem__('good_degree_weight',552))
add('undercharge exception weight',lambda c:c['budget'].__setitem__('exceptional_weight',209))
add('drop constant coefficient contribution',lambda c:c['budget'].__setitem__('constant',199))
add('incorrect normalization exponent',lambda c:c['budget'].__setitem__('intermediate_Y_power',30))
add('drop remaining position 3,1',lambda c:c['position'].__setitem__('remaining',[[1,2],[2,1],[1,3]]))
add('swap adopted T1 for a surviving position',lambda c:c['position']['QX'].__setitem__(0,[1,2]))
add('omit one residue of full NC position image',lambda c:c['position'].__setitem__('mod21',[8,10,16]))
add('claim unresolved exponent h=2 closed',lambda c:c['adjacent_plus'][2].__setitem__('closed',True))
add('erase a real mod7 root',lambda c:c['adjacent_plus'][2].__setitem__('roots_mod7_for_one',[]))
add('drop exponent class from cover',lambda c:c['adjacent_plus'].pop())
add('incorrect minus-family exponent',lambda c:c.__setitem__('adjacent_minus_closed',[1,2,5]))
add('wrong common-eleven target residue',lambda c:c['boundary'].__setitem__('j_mod11',0))
add('wrong boundary numerator',lambda c:c['boundary'].__setitem__('beta_terms',[[14,1],[11,-1],[0,31]]))
add('wrong boundary exponent progression',lambda c:c['boundary'].__setitem__('T_mod42',30))
rejected=[]
for name,change in mutations:
    c=copy.deepcopy(base);change(c)
    try:verify(c)
    except (ValueError,AssertionError,KeyError,IndexError,TypeError) as ex:
        rejected.append({'name':name,'reason':str(ex)})
    else:raise AssertionError('mutation escaped: '+name)
positive=[]
for name,change in [('reorder complete positions',lambda c:c['position']['remaining'].reverse()),('reorder exponent classes',lambda c:c['adjacent_plus'].reverse())]:
    c=copy.deepcopy(base);change(c);verify(c);positive.append(name)
out={'status':'PASS_NEW_CERTIFICATE_MUTATIONS','rejected_count':len(rejected),'rejected':rejected,'positive_count':len(positive),'positive':positive,'meaning':'Tests of the new receiver and certificate, not an independent proof of the infinite theorems.'}
(OUT/'logs/negative_tests.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k not in ('rejected','meaning')}))
