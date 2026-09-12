from pathlib import Path
from math import gcd
from fractions import Fraction as F
import json,hashlib,sys,re
sys.path.insert(0,str(Path(__file__).resolve().parent))
from intervals import compute,iv,mul,lnf
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
src=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/input/i13_cuts.json'
assert hashlib.sha256(src.read_bytes()).hexdigest()=='195d21db772a0637f7514cb920de8b66c029cb54f2347ef50191d69eb675efe1'
rows=json.loads(src.read_text())['cuts'];summary=json.loads((OUT/'exact-summary.json').read_text());total=0
expectedPositive={2:[],3:[],4:[],9:[(11,7),(25,16)],10:[(5,4)]}
def endpoints(iv):
 lo,hi=F(iv['exact_lower']),F(iv['exact_upper']);assert F(iv['lower'])<=lo<=hi<=F(iv['upper']);return lo,hi
for idx in [2,3,4,9,10]:
 s=json.loads((OUT/f'grid-{idx:02d}.json').read_text());assert s['fixed_source_parameters']==rows[idx]
 row=rows[idx];z=F(row['D0'],row['a']*row['p']**row['k0'])
 expected=sorted([(c,d)for c in range(2,33)for d in range(1,c)if gcd(c,d)==1 and z<F(d,c)],key=lambda t:(sum(t),t[0],t[1]))
 actual=[(r['c'],r['d'])for r in s['grid']]
 assert expected==actual and len(set(actual))==len(actual)
 positives=[]
 for r in s['grid']:
  q0,q1=endpoints(r['logAQ']);e0,e1=endpoints(r['slack']);endpoints(r['gamma'])
  yes=q0>0 and e0>0
  assert yes or q1<0 or e1<0
  assert r['pass']==yes
  if yes:positives.append((r['c'],r['d']))
 assert positives==expectedPositive[idx]
 assert len(positives)==s['exact_positive_count']
 assert s['exact_legal_count']==len(expected)
 if positives:assert (s['lowest_cost']['c'],s['lowest_cost']['d'])==positives[0]
 else:assert s['lowest_cost']is None
 total+=len(expected)
assert total==summary['exact_configurations']==1561
sources=json.loads((OUT/'SOURCE_MAP.json').read_text())
for path,data in sources['source_files'].items():assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==data['sha256']
assert hashlib.sha256((OUT/'intervals.py').read_bytes()).hexdigest()==summary['interval_functions_sha256']
positive_rechecks=0
for idx in [9,10]:
 group=json.loads((OUT/f'grid-{idx:02d}.json').read_text())
 for expected in group['full_positive_certificates']:
  actual=compute(expected['parameters'])
  assert json.loads(json.dumps(actual))==expected
  positive_rechecks+=1
reuse=json.loads((OUT/'REUSE.json').read_text())
row=reuse['full_direct_D_with_accepted_lambdas']['parameters']
lam=(F(reuse['qLambda']),F(reuse['eLambda']))
assert json.loads(json.dumps(compute(row,lambdas=lam)))==reuse['full_direct_D_with_accepted_lambdas']
assert json.loads(json.dumps(compute(row,mul(iv(7),lnf(F(1303943,1000000))),lam)))==reuse['current_accepted_targetBase_with_accepted_lambdas']
print(json.dumps({'positive_arithmetic_rechecks':positive_rechecks,'existing_lambda_rechecks':2}))
print(json.dumps({'status':'PASS_INDEPENDENT_COVERAGE_AND_ENDPOINT_READER','legal_configs':total,'positive':expectedPositive,'source_hashes_checked':len(sources['source_files']),'no_missing_or_duplicate_ratio':True,'all_decimal_brackets_outward':True}))
