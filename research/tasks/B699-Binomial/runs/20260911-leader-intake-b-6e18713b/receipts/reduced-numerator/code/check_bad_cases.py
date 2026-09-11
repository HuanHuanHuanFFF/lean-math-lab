import argparse,copy,json
from pathlib import Path
from check_certificate import verify,cube_floor,inverse

def run(path,out):
    original=json.loads(path.read_text());verify(original);passed=[]
    def bad(name,change):
        x=copy.deepcopy(original);change(x)
        try:verify(x)
        except (ValueError,KeyError,TypeError,IndexError):passed.append(name)
        else:raise AssertionError('accepted bad certificate: '+name)
    bad('missing_parameter_row',lambda x:x['rows'].pop())
    bad('duplicate_parameter_row',lambda x:x['rows'].append(x['rows'][0]))
    bad('altered_strict_lower_endpoint',lambda x:x['rows'][0].__setitem__(4,x['rows'][0][4]+1))
    bad('altered_inclusive_upper_endpoint',lambda x:x['rows'][0].__setitem__(5,x['rows'][0][5]-1))
    bad('wrong_B_quantifier',lambda x:x.__setitem__('B',2**20-1))
    bad('weakened_constant',lambda x:x.__setitem__('coefficient',109))
    bad('lost_c_power',lambda x:x.__setitem__('c_exponent',3))
    bad('removed_prime_power',lambda x:x['rows'][0][6].pop())
    def composite(x):
        for r in x['rows']:
            for pe in r[6]:
                if pe[1]>1:
                    pe[0]=pe[0]**pe[1];pe[1]=1;return
        raise AssertionError('no power to mutate')
    bad('composite_base_same_product',composite)
    bad('omitted_first_candidate',lambda x:x['first_candidates'].pop())
    bad('duplicated_first_candidate',lambda x:x['first_candidates'].append(x['first_candidates'][0]))
    bad('invented_terminal_survivor',lambda x:x['second_candidates'].append(x['first_candidates'][0]))
    trials=0
    for k in range(2000):
        for d in [-1,0,1]:
            n=k**3+d
            if n<0:continue
            q=cube_floor(n);assert q**3<=n<(q+1)**3;trials+=1
    for m in range(2,150):
        for a in range(1,m):
            from math import gcd
            if gcd(a,m)==1:assert a*inverse(a,m)%m==1
    data={'rejected_count':len(passed),'rejected_cases':passed,'integer_root_boundaries':trials,'status':'PASS'}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(data,sort_keys=True,indent=2)+'\n');print(json.dumps(data,sort_keys=True))
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('certificate',type=Path);a.add_argument('--out',type=Path,required=True);v=a.parse_args();run(v.certificate,v.out)
