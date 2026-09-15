from pathlib import Path
from copy import deepcopy
import json,time
from receive import accept, Rejected
ROOT=Path(__file__).resolve().parents[1]

def main():
    t=time.perf_counter();base=json.loads((ROOT/'evidence/certificate.json').read_text());tests=[]
    def trial(name,modify):
        c=deepcopy(base);modify(c)
        try:accept(c)
        except (Rejected,ValueError,KeyError,IndexError) as e:
            tests.append({'name':name,'status':'REJECTED','reason':str(e)});return
        raise AssertionError('mutation incorrectly accepted: '+name)
    trial('missing analytic minus',lambda c:c['source'].__setitem__('lower_bound_sign',1))
    trial('remove H in normalized logarithm',lambda c:c['source'].__setitem__('height_normalization','H*logstar(Nv*h(xi))'))
    trial('omit rank-one lambda 12',lambda c:c['source'].__setitem__('rank1_lambda',1))
    trial('use radical instead of full powers',lambda c:c.__setitem__('rough_kind','radical'))
    trial('discard low 2^3',lambda c:c['low_caps'].__setitem__('2',4))
    trial('understate exact scalar constant',lambda c:c.__setitem__('scalar_R',Rminus(c)))
    trial('omit coefficient slot',lambda c:c['slots'].pop())
    trial('duplicate coefficient slot',lambda c:c['slots'].append(deepcopy(c['slots'][0])))
    trial('omit high profile',lambda c:c['profiles'].pop())
    trial('wrong q-adic cancellation',lambda c:c['slots'][0].__setitem__('t',99))
    trial('general exponent too small',lambda c:c['claims'].__setitem__('general_k',72))
    trial('double-high exponent too small',lambda c:c['claims'].__setitem__('high_2_5_k',71))
    trial('single-high exponent too small',lambda c:c['claims'].__setitem__('single_high_k',59))
    trial('low cofactor height not included',lambda c:c['profiles'][0].__setitem__('height_multiplier',1))
    trial('negative inverse margin',lambda c:c['profiles'][0].__setitem__('inverse_margin',[-1,1]))
    trial('wrong remaining-position modulus',lambda c:c['family'].__setitem__('congruence_modulus',49))
    positive=[]
    c=deepcopy(base);c['profiles'].reverse();c['slots'].reverse();accept(c);positive.append('reordered complete coverage')
    c=deepcopy(base);c['claims']['general_k']=74;accept(c);positive.append('weaker uniform exponent')
    out={'status':'PASS_NEW_MUTATION_TESTS','rejected':len(tests),'positive_controls':positive,'tests':tests,'seconds':time.perf_counter()-t}
    (ROOT/'logs/negative_tests.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='tests'}))
def Rminus(c):return c['scalar_R']-1
if __name__=='__main__':main()
