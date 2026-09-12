from pathlib import Path
import ast,json,hashlib,math
O=Path(__file__).resolve().parent
R=O.parent.parent
source=R/'experiments/huan-i13-fixed-seed-ratio-probe-5e2d13bb/screen.py'
tree=ast.parse(source.read_text())
fn=next(n for n in tree.body if isinstance(n,ast.FunctionDef)and n.name=='screen')
ns={'sqrt':math.sqrt,'log':math.log}
exec(compile(ast.Module(body=[fn],type_ignores=[]),str(source),'exec'),ns)
route=json.loads((O/'route.json').read_text())
row={**route['fixed_new_seed'],**route['thresholds']}
vals=[ns['screen'](row,c,d)for c in range(2,33)for d in range(1,c)if math.gcd(c,d)==1 and row['D0']*c<row['a']*row['p']**row['k0']*d]
prior=json.loads((O/'screen.json').read_text())
assert len(vals)==prior['legal_configs']==298
for x,y in zip(vals,prior['grid']):
 assert (x['c'],x['d'])==(y['c'],y['d'])
 assert abs(x['logAQ']-y['logAQ'])<1e-12 and abs(x['slack']-y['slack'])<1e-12
 assert x['screen_pass']==y['screen_pass']
assert not any(x['screen_pass']for x in vals)
assert row['a']*row['p']**row['k0']-row['b']*row['q']**row['l0']==1
print(json.dumps({'status':'FLOAT_SCREEN_REPRODUCED_NOT_PROOF','configs':len(vals),'positive':0,'original_screen_source_sha256':hashlib.sha256(source.read_bytes()).hexdigest()}))

