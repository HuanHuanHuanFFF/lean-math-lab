"""Round certified lambda upward to a common 2^96 denominator.
Preserves the first certificates and recomputes changed scalar obligations.
"""
from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import hashlib,json,time
from generate_certificates import margins,peak_bytes

OUT=Path(__file__).resolve().parent
BITS=96
started=time.monotonic();dest=OUT/'certificates-compact';dest.mkdir(exist_ok=True)
summary=[]
for index in range(10):
    src=OUT/'certificates'/f'row-{index:02d}.json'
    data=json.loads(src.read_text(encoding='utf-8'))
    row=data['row'];nums={}
    for kind in ('Q','E'):
        old=F(data[kind]['lambda']);scaled=old*(1<<BITS)
        num=-((-scaled.numerator)//scaled.denominator);new=F(num,1<<BITS)
        assert old<=new<old+F(1,1<<BITS)
        data[kind].update(lambda_grid_bits=BITS,lambda_grid_numerator=str(num),
                         previous_lambda=str(old),**{'lambda':str(new)})
        nums[kind]=str(num)
        for leaf in data[kind]['leaves']:
            coeffs=[F(int(x),int(leaf['bernstein_denominator'])) for x in leaf['bernstein_numerators']]
            leaf['strict_gap']=str(new-max(coeffs));assert F(leaf['strict_gap'])>0
    for v in data['constants']:
        v['CQ']=str(F(v['K'])*F(v['weight_Q_moment'])/F(data['Q']['lambda']))
        v['CE']=str(F(v['K'])*F(v['weight_E_moment'])/F(data['E']['lambda']))
    cq=max(F(v['CQ']) for v in data['constants']);ce=max(F(v['CE']) for v in data['constants'])
    data['max_CQ'],data['max_CE']=str(cq),str(ce)
    data['numerics']=margins(row,F(data['Q']['lambda']),F(data['E']['lambda']),cq,ce)
    data['compact_from']={'path':'certificates/'+src.name,'sha256':hashlib.sha256(src.read_bytes()).hexdigest()}
    data['compact_lambda_rule']='lambda=ceil(previous certified lambda * 2^96)/2^96; previous certificate retained'
    path=dest/src.name;path.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    summary.append({'row':index,'p':row['p'],'q':row['q'],'c':row['c'],'d':row['d'],'z':data['z'],
                    'NQ':nums['Q'],'NE':nums['E'],'common_denominator_bits':BITS,
                    'CQ_display':float(cq),'CE_display':float(ce),
                    'height_margin_display':data['numerics']['readable_margins_not_acceptance']['height_margin'],
                    'bytes':path.stat().st_size})
peak=peak_bytes();assert peak is not None and peak<200_000_000
output={'status':'COMPACT_LAMBDAS_PREPARED_FOR_INDEPENDENT_CHECK','rows':summary,
        'seconds':time.monotonic()-started,'peak_working_set_bytes':peak,
        'finished_utc':datetime.now(timezone.utc).isoformat(),'lean_run':False}
(OUT/'compact-lambdas.json').write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in output.items() if k!='rows'},ensure_ascii=False))
for r in summary:print(json.dumps(r,ensure_ascii=False))
