"""Root independent complete recovery of the frozen three-high parameter cells."""
from pathlib import Path
from math import prod
import hashlib
import json
import time
from review_i8_threehigh import norms, vp, sixg


def main():
    start=time.perf_counter();run=Path(__file__).resolve().parents[2];bindings={}
    def read(rel):
        p=run/rel;bindings[rel]=hashlib.sha256(p.read_bytes()).hexdigest()
        return json.loads(p.read_text())
    extended=read('experiments/cubic/i8_threehigh_extended18.json');vectors={};counts={}
    # The complete original tower arithmetic has a separate root certificate.
    prior=read('experiments/main/review_i8_threehigh.json')
    for item in extended['cases']:
        q=item['q'];rel=f'experiments/cubic/i8_threehigh_tower_q{q}.json';tower=read(rel)
        assert prior['source_hashes'][rel]==bindings[rel]
        stop=item['local_stop_v'];bound=18+4*(tower['global_stop_v']-1)-1
        assert item['finite_sum_cap']==bound
        row=next(z for z in tower['levels'] if z['v']==stop)
        assert min(norms(row['basis']))>bound**2
        got=set()
        for row in tower['levels']:
            v=row['v']
            if v>=stop:break
            upper=18+4*v;L,K,M=(row[k] for k in ('L','K','order'))
            for a in range(1,upper-2):
                for b in range(1,upper-a-1):
                    z=a+L*b
                    for c in range(1,upper-a-b):
                        if (z+K*c)%M==0:got.add((v,a,b,c))
        assert got=={tuple(z) for z in item['vectors']} and len(got)==len(item['vectors'])
        vectors[q]=got;counts[q]=len(got)
    reports=[]
    for tag,cellfile,threshold,shifts in [
        ('h0_7','reviews/geometry/i8-unit-route-three-high-cells.json',(3,2,2,2),range(8)),
        ('h8','reviews/geometry/i8-unit-route-h8-optional.json',(4,2,2,2),(8,))]:
        cells=read(cellfile);consumer=read(f'experiments/cubic/i8_threehigh_consumer_{tag}.json')
        assert consumer['cells_sha256']==bindings[cellfile]
        assert consumer['enumeration_source_sha256']==bindings['experiments/cubic/i8_threehigh_extended18.json']
        P=(2,3,5,7);TH=dict(zip(P,threshold))
        expected_cells={(q,d,h) for q in P for d in range(TH[q]) for h in shifts}
        assert expected_cells=={(z['missing_prime'],z['low_exponent'],z['shift']) for z in cells['cells']}
        recovered=set();event_count=0;small_count=0
        for cell in cells['cells']:
            q,d,h=(cell[k] for k in ('missing_prime','low_exponent','shift'))
            high=tuple(p for p in P if p!=q)
            if tag=='h8':
                assert not cell['survivors']
                count=0
                for A in range(TH[high[0]],32-TH[high[1]]-TH[high[2]]):
                    for B in range(TH[high[1]],32-A-TH[high[2]]):
                        for C in range(TH[high[2]],32-A-B):
                            n=q**d*prod(p**e for p,e in zip(high,(A,B,C)))+h
                            assert sixg(n);count+=1
                assert count==cell['bottom_count'];small_count+=count
            expected_events=[]
            for r in range(6):
                rho=r-h
                if rho==0 or vp(rho,q)!=d:continue
                unit=abs(rho)//q**d;sub=tuple(vp(unit,p) for p in high)
                assert prod(p**e for p,e in zip(high,sub))==unit
                expected_events.append((r,rho,sub))
            actual={(e['source_position'],e['offset_rho'],tuple(e['high_exponent_subtractions'])) for e in cell['source_events']}
            assert actual==set(expected_events);event_count+=len(actual)
            for r,rho,sub in expected_events:
                for v,a,b,c in vectors[q]:
                    power=tuple(x+y for x,y in zip((a,b,c),sub))
                    if any(e<TH[p] for p,e in zip(high,power)):continue
                    H=sum(power)
                    if H<32 or H>=6+4*(d+v):continue
                    exponents=tuple(d if p==q else power[high.index(p)] for p in P)
                    n=prod(p**e for p,e in zip(P,exponents))+h
                    if vp(n-r,q)!=d+v:continue
                    assert max(vp(n-s,q) for s in range(6))==d+v
                    assert sixg(n)
                    recovered.add((q,d,h,r,v,exponents))
        claimed={(z['missing'],z['low'],z['shift'],z['source_position'],z['v'],tuple(z['exponents'])) for z in consumer['representations']}
        assert claimed==recovered and len(claimed)==consumer['representation_count']==len(consumer['representations'])
        assert not consumer['survivors'] and event_count==consumer['source_events']
        # Also bind every stored integer row and strict scalar comparison, not just its key.
        for z in consumer['representations']:
            n=prod(p**e for p,e in zip(P,z['exponents']))+z['shift'];assert n==z['n']
            small=[prod(p**vp(n-r,p) for p in P) for r in range(6)]
            left=prod(small)**4*(3*n*n-20*n+24)
            right=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
            assert small==z['small_parts'] and left==z['SIXG_left'] and right==z['SIXG_right'] and left<right
        reports.append({'range':tag,'cells':len(expected_cells),'events':event_count,
                        'large_representations':len(recovered),'h8_small_representations':small_count})
    assert sum(counts.values())==18717 and reports[0]['large_representations']==3818 and reports[1]['large_representations']==900
    assert reports[1]['h8_small_representations']==28704
    output={'status':'PASS','source_hashes':bindings,'intercept18_vector_counts':counts,
            'consumers':reports,'seconds':round(time.perf_counter()-start,6),
            'scope':'Independent complete positive-simplex enumeration and exact same-input restoration for all 82 three-high cells, including h8 bottom. No Lean.'}
    Path(__file__).with_suffix('.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in output.items() if k not in ('source_hashes','scope')}))


if __name__=='__main__':main()
