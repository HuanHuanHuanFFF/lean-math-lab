#!/usr/bin/env python3
from fractions import Fraction as F
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from consume import audit,read,ts3
from original_pair_audit import audit as pair_audit
import ipoly as P
checks=[]
def check(n,b):
    if not b:raise AssertionError(n)
    checks.append(n)
for v in [(0,2,1),(1,2,1),(2,0,1),(2,1,1),(2,2,0)]:check('basic gate '+str(v),audit(*v)['status']=='REJECT_BASIC_ZERO_GATE')
check('D=0 never divide',audit(2,2,F(3,64))['status']=='REJECT_ZERO_D')
g=read('inputs/generic.json');N=ts3(g['N']);n0=P.evaluate(N,[F(2),F(2),F(0)]);n1=P.evaluate(N,[F(2),F(2),F(1)])-n0
rr=-n0/n1;check('N=0 never invert',audit(2,2,rr)['status']=='REJECT_ZERO_N')
for x in [2.0,True,complex(2,0)]:
    try:audit(x,2,1)
    except TypeError:ok=True
    else:ok=False
    check('inexact type rejection '+repr(x),ok)
for v in [(2,2,1),(-3,2,2),(F(3,2),F(4,3),F(5,7)),(2,2,F(1,32003))]:
    out=audit(*v);check('no NC claim '+str(v),not out['NC3_certified'] and not out['original_nj_recovered'] and not out['complete_source_powers_verified'])
    if out['status']=='REJECT_NONZERO_NECESSARY_RESIDUAL':
        old={'P5':ts3(g['B5']),**{f'G{i}':ts3(g['low'][str(i)]['stripped']) for i in range(4,-1,-1)}}
        check('all six preserved '+str(v),len(out['new_residuals'])==6 and any(P.evaluate(p,list(map(F,v))) for p in old.values()))
a=pair_audit(36,4,[[0,3,2]]);check('p=i full 3^2 retained',a['sources'][0]['actual_full_exponent']==2 and a['sources'][0]['status']=='FULL_SOURCE_POWER_VERIFIED')
a=pair_audit(36,4,[[0,3,1]]);check('truncated prime power rejected',a['sources'][0]['status']=='REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER')
check('source audit never pretends complete NC coverage',not a['NC3_certified'] and not a['complete_source_coverage'])
print(json.dumps({'status':'PASS','checks':len(checks),'checks_detail':checks,'finite_regressions_not_infinite_proofs':True},ensure_ascii=False,indent=2))
