from pathlib import Path
import csv,json,random,time,warnings,hashlib
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.simplefilter('ignore',SymPyDeprecationWarning)
BASE=Path(__file__).parent;P=11;Z=sp.symbols('Z');start=time.monotonic()
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39));DIAG=(0,56,0,41,0,52)
def minimums(h):return [next(v for v in range(80) if sum(max(a-v,0) for a in row)+(max(w-v,0)+1)//2<=h) for row,w in zip(OFF,DIAG)]
def rankmod(rows):
    B={}
    for aa in rows:
        a=aa[:]
        for c,b in B.items():
            if a[c]:
                f=a[c];a=[(x-f*y)%P for x,y in zip(a,b)]
        c=next((i for i,x in enumerate(a) if x),None)
        if c is not None:
            v=pow(a[c],-1,P);B[c]=[x*v%P for x in a]
    return len(B)
results=[]
for h in (152,110):
    meta=json.loads((BASE/f'initial-h{h}.json').read_text());dim=meta['dimension'];points={}
    with (BASE/f'initial-h{h}.jets.tsv').open() as f:
        for a in csv.DictReader(f,delimiter='\t'):
            a={k:int(v) for k,v in a.items()};z=a['point'];pt=points.setdefault(z,dict(r=a['r'],s=a['s'],weight=a['weight'],levels={}))
            pt['levels'].setdefault(a['order'],[]).append(dict(u=a['u'],t=a['t'],values=[a[f'v{i}'] for i in range(dim)]))
    vv=minimums(h);profile=[]
    for z,pt in points.items():
        first=min(pt['levels']);rows=pt['levels'][first];b=vv[pt['r']-3]
        assert all(not any(a['values']) for a in rows if a['u']<b)
        rank=rankmod([a['values'] for a in rows]);slots=(first-b)//pt['weight']+1
        profile.append(dict(point=z,r=pt['r'],s=pt['s'],weight=pt['weight'],source_order=first,common_vertical=b,boundary_rank=rank,ambient_slots_after_vertical=slots,full_boundary_image=rank==slots))
    rng=random.Random(20261005+h);vecs=[]
    for j in range(4):
        v=[rng.randrange(P) for _ in range(dim)];first=next(x for x in v if x);iv=pow(first,-1,P);v=[x*iv%P for x in v];vecs.append((f'random{j}',v))
    for j in (0,dim-1):v=[0]*dim;v[j]=1;vecs.append((f'basis{j}',v))
    samples=[]
    for label,v in vecs:
        if time.monotonic()-start>45:break
        caps=[]
        for z,pt in points.items():
            found=None
            for order,rows in sorted(pt['levels'].items()):
                coeff={a['t']:sum(x*y for x,y in zip(a['values'],v))%P for a in rows}
                if any(coeff.values()):found=(order,coeff);break
            if found is None:
                caps.append(dict(point=z,known_initial=False,capacity_cap7=7));continue
            order,coeff=found;f=sp.Poly.from_dict({(j,):c for j,c in coeff.items() if c},Z,modulus=P);unit,factors=sp.factor_list(f);omega=sum(int(m) for g,m in factors);degree=int(f.degree());upower=order-pt['weight']*degree;strip=vv[pt['r']-3];assert upower>=strip
            rec=sp.Poly(unit,Z,modulus=P)
            for g,m in factors:rec*=g**m
            assert rec==f
            cap=upower-strip+omega
            caps.append(dict(point=z,known_initial=True,order=order,dehomogenized_coefficients=[int(c)%P for c in reversed(f.all_coeffs())],factor_degrees_multiplicities=[[int(g.degree()),int(m)] for g,m in factors],u_power_before_strip=upower,common_vertical_removed=strip,omega_after_strip=cap,capacity_cap7=min(cap,7)))
        total=sum(c['capacity_cap7'] for c in caps);unknown=sum(not c['known_initial'] for c in caps);samples.append(dict(label=label,vector=v,sum_capped_capacity=total,unknown_sources=unknown,passes_seven_incidence_necessary_condition=total>=98,points=caps));print(json.dumps(dict(h=h,label=label,capacity=total,unknown=unknown),ensure_ascii=False),flush=True)
    results.append(dict(h=h,mod_dimension=dim,minimum_vertical=vv,boundary_profiles=profile,samples=samples))
    (BASE/'initial-capacity-probe.json').write_text(json.dumps(dict(scope='Author diagnostic only: transported boundary jet maps and finitely many explicit F11 source directions. No rational G, no complete direction coverage, no original point. Unknown initial orders receive the safe capped upper 7.',results=results,seconds=round(time.monotonic()-start,3)),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('seconds',round(time.monotonic()-start,3))
