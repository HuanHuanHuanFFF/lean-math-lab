"""Recover every large original row through the exact fixed cell/offset events."""
from pathlib import Path
from math import prod
from datetime import datetime,timezone
import argparse,hashlib,json,time
from i8_threehigh_engine import valuation

def main():
    p=argparse.ArgumentParser();p.add_argument('--extra-h8',action='store_true');args=p.parse_args()
    here=Path(__file__).resolve().parent;run=here.parents[1]
    suffix='h8' if args.extra_h8 else 'h0_7'
    cellpath=run/('reviews/geometry/i8-unit-route-h8-optional.json' if args.extra_h8 else 'reviews/geometry/i8-unit-route-three-high-cells.json')
    cells=json.loads(cellpath.read_text())['cells']
    esource=here/'i8_threehigh_extended18.json';edata=json.loads(esource.read_text())
    byq={c['q']:c for c in edata['cases']}
    records=[];survivors=[];visited=0;began=time.perf_counter()
    for cell in cells:
        q,delta,h=(cell[n] for n in ('missing_prime','low_exponent','shift'))
        bases=cell['high_primes'];threshold=cell['high_thresholds'];assert bases==byq[q]['bases']
        expected=[]
        for r in range(6):
            rho=r-h
            if not rho or valuation(rho,q)!=delta:continue
            rem=abs(rho)//q**delta;subs=[]
            for pp in bases:
                v=valuation(rem,pp);subs.append(v);rem//=pp**v
            assert rem==1 and all(t>u for t,u in zip(threshold,subs))
            expected.append((r,rho,1 if rho>0 else -1,tuple(subs)))
        actual=[(e['source_position'],e['offset_rho'],e['sign'],tuple(e['high_exponent_subtractions'])) for e in cell['source_events']]
        assert sorted(expected)==sorted(actual)
        for v,a,b,c in byq[q]['vectors']:
            normalized=(a,b,c)
            unit=prod(pp**aa for pp,aa in zip(bases,normalized))
            vp={1:valuation(unit-1,q),-1:valuation(unit+1,q)}
            for r,rho,sign,subtractions in expected:
                exponents=[aa+u for aa,u in zip(normalized,subtractions)]
                H=sum(exponents)
                if H<32 or H>=6+4*(delta+v) or any(aa<t for aa,t in zip(exponents,threshold)):continue
                if vp[sign]!=v:continue
                original={q:delta,**dict(zip(bases,exponents))}
                core=prod(pp**original[pp] for pp in (2,3,5,7));n=core+h
                assert n>=1800 and valuation(n-r,q)==delta+v
                Cq=max(valuation(n-s,q) for s in range(6))
                assert Cq==delta+v
                small=[prod(pp**valuation(n-s,pp) for pp in (2,3,5,7)) for s in range(6)]
                T=prod(small);assert T<=120*n*q**Cq
                left=T**4*(3*n*n-20*n+24);right=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
                rec={'missing':q,'low':delta,'shift':h,'source_position':r,'v':v,'sign':sign,
                     'normalized':list(normalized),'exponents':[original[pp] for pp in (2,3,5,7)],
                     'H':H,'n':n,'small_parts':small,'SIXG_left':left,'SIXG_right':right,'SIXG_pass':left<right}
                records.append(rec)
                if not rec['SIXG_pass']:survivors.append(rec)
        visited+=len(expected)
    output={'status':'PASS' if not survivors else 'OPEN_FINITE_END','utc':datetime.now(timezone.utc).isoformat(),
            'scope':f'Complete H>=32 high-region recovery for {suffix}; small H<32 belongs to geometry fixed bottom.',
            'cells':len(cells),'source_events':visited,'representations':records,'representation_count':len(records),
            'different_n':len({r['n'] for r in records}),'survivors':survivors,
            'cells_source':str(cellpath),'cells_sha256':hashlib.sha256(cellpath.read_bytes()).hexdigest(),
            'enumeration_source_sha256':hashlib.sha256(esource.read_bytes()).hexdigest(),
            'elapsed_seconds':round(time.perf_counter()-began,6),'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    dest=here/f'i8_threehigh_consumer_{suffix}.json';assert not dest.exists()
    dest.write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in output.items() if k in ('status','cells','source_events','representation_count','different_n','elapsed_seconds')}),flush=True)
    if survivors:print(json.dumps({'survivors':survivors}),flush=True)

if __name__=='__main__':main()
