from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from recover_exception import recover_exception
from original_pair_audit import audit
checks=0

def ck(x):
    global checks
    assert x;checks+=1

ck('zero coefficient' in recover_exception(3,4)['reason'])
ck('r=0' in recover_exception(-2,4)['reason'])
r=recover_exception(2,2,original_pair=(20,5))
ck(r['input']['r']=='3/80')
ck('curve' in r['reason'])
ck(r['unchanged_original_pair']=={'n':'20','j':'5'})
ck(r['original_pair_to_chart_link_verified'] is False)
ck('Outside adopted' in recover_exception(0,2)['reason'])
a=audit(20,5,[[2,3,2]])
ck(a['common_prime_witnesses']==[3])
ck(a['sources'][0]['status']=='FULL_SOURCE_POWER_VERIFIED')
ck(a['sources'][0]['actual_full_exponent']==2)
ck(a['p_equals_i_retained'] and not a['NC3_certified'])
ck(a['unchanged_original_pair']=={'n':'20','j':'5'})
ck(audit(20,5,[[2,3,1]])['sources'][0]['status']=='REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER')
ck(audit(12,4,[[0,3,1]])['sources'][0]['actual_full_exponent']==0)
ck(audit(20,5,[[2,9,1]])['sources'][0]['status']=='REJECT_NONPRIME')
ck(audit(20,5,[[2,1000003,1]])['sources'][0]['status']=='UNVERIFIED_PRIME_LIMIT')
try:audit(20,11,[])
except ValueError:checks+=1
else:raise AssertionError('illegal original pair was accepted')
print({'status':'PASS','consumer_guard_assertions':checks,'no_survivor_is_promoted_to_NC3':True})
