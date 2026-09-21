"""Developer regeneration tool; runtime replay does not invoke this writer."""
import json,time
from pathlib import Path
from kernel_crt import jobs,crt_record,recover,verify
root=Path(__file__).resolve().parents[1]
t0=time.monotonic();out=[];raw=[]
for j in jobs():
    r=crt_record(j['coeff']);out.append(dict(parameters=j,crt=r))
    raw.extend(recover(j,z) for z in r['integer_roots'])
c=dict(schema='B699_MAXIMAL_ORDER5_V1',jobs=out,raw_roots=raw)
verify(c)
(root/'certificates/endpoint.json').write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n')
summary=dict(job_count=len(out),regime_count=len({(r['parameters']['d'],r['parameters']['t'],r['parameters']['den']) for r in out}),max_root_bound=max(r['crt']['bound'] for r in out),max_abs_m=max(abs(r['parameters']['m']) for r in out),max_modulus=max(r['crt']['modulus'] for r in out),raw_roots=raw,elapsed_seconds=round(time.monotonic()-t0,4))
(root/'outputs/generation.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
