"""Exact receiver for NEW obligations only. Python standard library; no old heavy replay.

This validates finite certificates and regression identities. It is NOT a Lean
verification of the accompanying infinite mathematical arguments.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from math import gcd, comb, prod
from zipfile import ZipFile
import argparse, copy, hashlib, json, time

ROOT=Path(__file__).resolve().parents[1]
LOCS=[(1,2),(2,1),(1,3),(3,1),(1,4),(4,1),(2,3),(3,2)]
PTS=[(r,b,r-b) for r in range(1,9) for b in range(r+1)]
ALLPTS=[(0,0,0)]+PTS

class Rejected(ValueError): pass

def require(ok: bool, message: str) -> None:
    if not ok: raise Rejected(message)

def load(name: str): return json.loads((ROOT/name).read_text(encoding='utf-8'))
def frac(x): return F(str(x))
def sha_file(p: Path) -> str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda:f.read(1<<20),b''): h.update(block)
    return h.hexdigest()

def source_integrity() -> dict:
    info=load('SOURCE_INPUT.json'); p=ROOT/info['copied_original_bytes']
    require(p.stat().st_size==info['bytes'],'input size')
    require(sha_file(p)==info['sha256'],'input SHA256')
    n=0
    with ZipFile(p) as z:
        for name in z.namelist():
            if name.endswith('/') or name.endswith('.zip'): continue
            require(name.startswith(info['archive_root']),'input archive prefix')
            rel=name[len(info['archive_root']):]
            target=ROOT/'frozen58'/rel
            require(target.is_file(),'missing frozen file '+rel)
            require(target.read_bytes()==z.read(name),'frozen copy mismatch '+rel)
            n+=1
    return {'status':'PASS_INPUT_BYTES_AND_FROZEN_COPIES','sha256':info['sha256'],'frozen_files':n,'old_heavy_replayed':False}

def ln_ratio(n: int, d: int, terms: int=64) -> tuple[F,F]:
    """For n>d>0, ln(n/d)=2 sum z^(2k+1)/(2k+1), rigorous positive tail."""
    require(n>d>0,'log domain')
    z=F(n-d,n+d); zz=z*z; t=z; s=F(0)
    for k in range(terms):
        s+=t/F(2*k+1); t*=zz
    lo=2*s
    hi=lo+2*t/(F(2*terms+1)*(1-zz))
    return lo,hi

def log_intervals(method: int) -> tuple[tuple[F,F],tuple[F,F]]:
    if method==1: l2=ln_ratio(2,1,64)
    elif method==2:
        a=ln_ratio(3,2,57); b=ln_ratio(4,3,73)
        l2=(a[0]+b[0],a[1]+b[1])
    else: raise ValueError('unknown log method')
    q=ln_ratio(5,4,61 if method==1 else 67)
    l5=(2*l2[0]+q[0],2*l2[1]+q[1])
    return l2,l5

def arithmetic(cert: dict, cuts_data: dict) -> dict:
    B=cert['B']; C=cert['C']
    require(B==14000001 and C==840,'frozen threshold or deletion constant')
    require(C==8*3*5*7 and C<2**10,'deletion constant bound')
    require(cert['rows']==list(range(1,9)),'row zero cannot be normalized; full row cover')
    require(cert['endpoint_weight']==6,'endpoint exponent')
    require(cert['interior_weights']=={str(h):6-h for h in range(1,6)},'interior weights')
    require(sum(cert['interior_weights'].values())==15,'right degree')
    cells=cert['weight_cells']
    require([(x['r'],x['b'],x['c']) for x in cells]==PTS,'44-cell complete cover')
    for x in cells:
        r,b,c=x['r'],x['b'],x['c']
        require(x['lhs']==12-r and x['rhs']==max(6-b,0)+max(6-c,0),'weight identity')
        require(x['rhs']>=x['lhs']>0,'local full-power weight deficit')
    require([(x['r3'],x['r7']) for x in cert['positions']]==LOCS,'eight-position complete cover')
    require(cuts_data['denominator']==10000,'frozen cut denominator')
    expected={0:{3:3200,2:900},4:{5:2000,7:3200},5:{3:2847,2:3231},7:{5:3915,7:2644}}
    require(cert['frozen_cut_ids']==list(expected),'cut dependency IDs')
    for i,weights in expected.items():
        c=cuts_data['cuts'][i]
        require({c['p']:c['wp'],c['q']:c['wq']}==weights,'cut orientation/weight mismatch')
    cap=frac(cert['coarse_cofactor_cap']); c2=frac(cert['coarse_two']); c5=frac(cert['coarse_five'])
    require(cap==F(expected[0][3],10000)==F(expected[4][7],10000),'coarse forced-branch cap')
    require(c2==F(expected[0][2],10000) and c5==F(expected[4][5],10000),'coarse alternate endpoints')
    require(cap>F(3,10) and (cap-F(3,10))*B>75+cap,'coarse half-axis strict margin')
    slopes={name:[] for name in ['five_direct','five_via_three','two_direct','two_via_seven']}
    branch_margins=[]
    for x in cert['positions']:
        r,s=x['r3'],x['r7']; k=r+s; u=12-r;v=12-s
        rough=[a for a in range(1,9) if a not in (r,s)]
        W=sum(12-a for a in rough)
        require(len(rough)==6 and W==36+k,'six rough-row cover')
        require((x['k'],x['u'],x['v'],x['W'],x['height_n_power'],x['two_power_lhs'])==(k,u,v,W,W-30,42-W),'height algebra')
        require(W+u+v==60 and 3<=k<=5,'constant exponent')
        require(F(6-k,u)<=F(3,10) and F(6-k,v)<=F(3,10) and min(u,v)>=8,'coarse bound positions')
        H=F(W-30,12)
        cases={
            'five_direct':(H-1+F(expected[5][2],10000),52+F(expected[5][2],10000)),
            'five_via_three':(H-1+F(u,12)*F(expected[5][3],10000)+c2,52+F(u,12)*F(expected[5][3],10000)+c2),
            'two_direct':(H-1+F(expected[7][5],10000),52+F(expected[7][5],10000)),
            'two_via_seven':(H-1+F(v,12)*F(expected[7][7],10000)+c5,52+F(v,12)*F(expected[7][7],10000)+c5)}
        require([c['case'] for c in x['cases']]==list(cases),'complete cut disjunction')
        for y in x['cases']:
            name=y['case']; slope,cost=cases[name]
            require(frac(y['slope'])==slope and frac(y['constant_loss'])==cost,'branch coefficient or half-scale cost')
            require(cost<cert['common_constant_loss'],'common constant loss')
            target=frac(cert['target_component_exponents']['five' if name.startswith('five') else 'two'])
            require(slope>target and (slope-target)*B>cost,'positive slope and full half-axis branch margin')
            slopes[name].append(slope)
            branch_margins.append(str((slope-target)*B-cost))
    for name,vals in slopes.items(): require(min(vals)==frac(cert['fine_slope_minima'][name]),'exact branch minimum '+name)
    require(cert['common_constant_loss']==53,'claimed uniform loss')
    require(frac(cert['target_component_exponents']['two'])==F(7,50) and frac(cert['target_component_exponents']['five'])==F(7,100),'integer consumer exponents')
    amin=cert['necessary_exponent_minima']['a'];bmin=cert['necessary_exponent_minima']['b']
    require(50*(amin-1)<=7*B<50*amin,'sharp integer a threshold')
    log_results=[]
    for method in (1,2):
        l2,l5=log_intervals(method); ratio=(l5[0]/l2[1],l5[1]/l2[0])
        require((B-1)*l2[0]>9500000,'old cut effective threshold enters at n>=2^B')
        require(100*(bmin-1)*ratio[1]<7*B<100*bmin*ratio[0],'b threshold rigorous log interval')
        log_results.append({'method':method,'cut_margin_lower':str((B-1)*l2[0]-9500000),'b_minus_one_margin_lower':str(7*B-100*(bmin-1)*ratio[1]),'b_margin_lower':str(100*bmin*ratio[0]-7*B),'ratio_lower':str(ratio[0]),'ratio_upper':str(ratio[1])})
    ca=cert['corridor']['b_lt_multiple_a'];cb=cert['corridor']['a_lt_multiple_b']
    require(ca==3 and cb==31 and 5**(7*ca)>2**43 and 2**(7*cb)>5**93,'integer exponent corridor')
    return {'status':'PASS_NEW_RATIONAL_ARITHMETIC','weight_cells':len(cells),'positions':8,'cut_consumer_cases':len(branch_margins),'used_frozen_cuts':list(expected),'strict_case_margins':branch_margins,'log_implementations':log_results}

def factor(n: int) -> list[tuple[int,int]]:
    out=[];p=2
    while p*p<=n:
        e=0
        while n%p==0: n//=p;e+=1
        if e: out.append((p,e))
        p+=1 if p==2 else 2
    if n>1: out.append((n,1))
    return out

def normalized_rhs(n: int,j: int) -> int:
    g=gcd(n,j);beta=j//g;gamma=(n-j)//g
    return (beta*gamma)**6*prod(((j-h)*(n-j-h))**(6-h) for h in range(1,6))

def vp_choose(n: int,j: int,p: int) -> int:
    q=p;v=0
    while q<=n:
        v+=n//q-j//q-(n-j)//q;q*=p
    return v

def regressions(cert: dict) -> dict:
    maxn=cert['regression_n_max']; require(maxn==512,'fixed declared regression range')
    facts={x:factor(x) for x in range(12,maxn+1)}
    count=full=avoided=endpoint=0
    for n in range(20,maxn+1):
        for j in range(10,n//2+1):
            choose=comb(n,j);g=gcd(n,j);beta=j//g;gamma=(n-j)//g
            lhs=1; seen=set()
            for r in range(1,9):
                D=1
                for p,e in facts[n-r]:
                    if p<11 or choose%p==0: continue
                    require(p not in seen,'prime assigned to two nonzero rows');seen.add(p)
                    q=p**e;D*=q;avoided+=1;full+=int(e>1)
                    b=j%q;c=(n-j)%q
                    require(b+c==r and gcd(g,q)==1,'full-power residual/coprimality regression')
                    require((choose%p!=0)==(vp_choose(n,j,p)==0),'independent binomial/carry agreement')
                    if b==0: require(beta%q==0,'normalized beta');endpoint+=1
                    if c==0: require(gamma%q==0,'normalized gamma');endpoint+=1
                lhs*=D**(12-r)
            require(normalized_rhs(n,j)%lhs==0,'new avoided-part divisibility regression')
            count+=1
    qcases=high=0
    primes=cert['full_power_probe_primes'];E=cert['full_power_probe_max_exponent']
    require(primes==[11,13,17,19] and E==8,'declared full-power scope')
    for p in primes:
        require(factor(p)==[(p,1)],'probe primality')
        for e in range(1,E+1):
            q=p**e
            for mul in (2,3):
                for r in range(1,9):
                    n=mul*q+r
                    for b in range(r+1):
                        j=q+b
                        if not 10<=j<=n//2: continue
                        require(vp_choose(n,j,p)==0,'constructed no-carry layer')
                        require((n-r)%q==0 and (n-r)%(p*q)!=0,'complete e, not radical')
                        require(normalized_rhs(n,j)%(q**(12-r))==0,'high-power local divisibility')
                        require((j%q,(n-j)%q)==(b,r-b),'constructed residual')
                        qcases+=1;high+=int(e>1)
    # These refute overstrong auxiliary statements, NOT B699.
    require(comb(22,11)%11!=0 and normalized_rhs(22,11)%11!=0,'row-zero counterexample')
    require(vp_choose(34,12,11)==0 and (12-1)%11==0 and (12//gcd(34,12)-1)%11!=0,'false interior normalization counterexample')
    return {'status':'PASS_FINITE_DIAGNOSTICS_NOT_INFINITE_PROOF','n_range':[20,maxn],'all_legal_pairs':count,'avoided_prime_power_occurrences':avoided,'exponent_gt_one_occurrences':full,'normalized_endpoint_occurrences':endpoint,'constructed_full_power_cases':qcases,'constructed_exponent_gt_one_cases':high,'largest_test_exponent':E,'invalid_auxiliary_lemma_witnesses':[{'n':22,'j':11,'failed':'include row zero'},{'n':34,'j':12,'failed':'normalize j-h to beta-h'}]}

def relaxation(w: dict,cuts_data: dict) -> dict:
    require(w['status']=='EXACT_FEASIBLE_POINT_OF_SPECIFIED_RELAXATION_NOT_INTEGER_COUNTEREXAMPLE','relaxation scope label')
    require([(x['r'],x['b'],x['c']) for x in w['cells']]==ALLPTS,'relaxation node cover')
    mass=[frac(x['mass']) for x in w['cells']]; require(all(x>=0 for x in mass),'negative mass')
    xp={int(p):frac(v) for p,v in w['cofactor_exponents'].items()}
    require(w['positions']=={'3':1,'7':2},'relaxation occupied positions')
    rows=[F(0),xp[3],xp[7]]+[F(1)]*6
    for r in range(9): require(sum(mass[i] for i,t in enumerate(ALLPTS) if t[0]==r)==rows[r],'relaxation row mass')
    for dim in (1,2):
        for b in range(9): require(sum(mass[i] for i,t in enumerate(ALLPTS) if t[dim]==b)<=1,'marginal capacity')
    for c in cuts_data['cuts']:
        require(xp[c['p']]>=F(c['wp'],10000) or xp[c['q']]>=F(c['wq'],10000),'frozen cut violated by relaxation')
    alpha=frac(w['alpha_exponent']);g=frac(w['g_exponent']);a=frac(w['alpha_2_exponent']);b=frac(w['alpha_5_exponent'])
    require(alpha+g==1 and a+b==alpha and a<=1-xp[2] and b<=1-xp[5],'alpha/g/power growth consistency')
    require(3*g<=alpha and 9+11*xp[3]+10*xp[7]<=12*alpha,'new normalized height in relaxation')
    require(a>F(7,50) and b>F(7,100),'new component lower powers')
    require(frac(w['beta_exponent'])==frac(w['gamma_exponent'])==alpha and 1<=2*frac(w['beta_exponent']),'normalized numerator growth')
    for dim in (1,2):
        require(sum(mass[i] for i,t in enumerate(ALLPTS) if t[0]>=1 and t[dim]==0)<=alpha,'new normalized endpoint capacity')
    require(sum(1-xp[p] for p in [2,3,5,7])>=F(27,10) and (1-xp[2])+(1-xp[5])<=1,'frozen scalar / colocation')
    polys=w['polynomials'];require(len(polys)==w['polynomial_count']==1360,'chosen-polynomial scope')
    seen=set();maxcoeff=0
    for p in polys:
        c=tuple(p['coefficients']); require(len(c)==6 and all(type(x) is int for x in c),'integer polynomial coefficients')
        require(gcd(*c)==1 and next(x for x in c if x)>0,'primitive polynomial normalization')
        require(c not in seen,'duplicate polynomial');seen.add(c);maxcoeff=max(maxcoeff,max(map(abs,c)))
        deg=2 if any(c[:3]) else 1
        require(p['degree']==deg,'polynomial degree')
        zeros=[i for i,(r,b,_) in enumerate(ALLPTS) if c[0]*r*r+c[1]*r*b+c[2]*b*b+c[3]*r+c[4]*b+c[5]==0]
        require(zeros==p['zeros'],'exact polynomial root set')
        require(sum(mass[i] for i in zeros)<=deg,'specified polynomial degree capacity')
    return {'status':'PASS_EXACT_SPECIFIED_RELAXATION_NOT_COUNTEREXAMPLE','cells':45,'chosen_polynomials':len(polys),'max_coefficient':maxcoeff,'cuts':len(cuts_data['cuts']),'new_normalized_constraints':True,'integer_n_j_produced':False,'nonvanishing_for_real_inputs_proved':False}

def ray_optimality(data: dict) -> dict:
    rays=sorted({(r//gcd(r,b),b//gcd(r,b)) for r,b,c in PTS})
    names=[['ray',u,v] for u,v in rays]+[['column',dim,b] for dim in (1,2) for b in range(1,9)]
    require(data['constraints']==names,'all primitive-ray and internal-column constraints')
    A=[];B=[]
    for name in names:
        if name[0]=='ray':
            u,v=name[1:]; A.append([F(u*b==v*r) for r,b,c in PTS]+[F(-1)]); B.append(F(0))
        else:
            dim,b=name[1:]; A.append([F(t[dim]==b) for t in PTS]+[F(0)]);B.append(F(1))
    require([(x['r3'],x['r7']) for x in data['positions']]==LOCS,'ray optimality positions')
    vals=[]
    for x in data['positions']:
        r,s=x['r3'],x['r7']; U=[a for a in range(1,9) if a not in (r,s)]
        require(x['rough_rows']==U,'ray rough-row domain')
        E=[[F(t[0]==a) for t in PTS]+[F(0)] for a in U]
        primal=list(map(frac,x['primal']));ye=list(map(frac,x['row_dual']));yi=list(map(frac,x['constraint_dual']))
        require(len(primal)==45 and len(ye)==6 and len(yi)==len(A),'LP dimensions')
        require(all(z>=0 for z in primal) and all(z<=0 for z in yi),'primal/dual sign')
        require(all(sum(a*b for a,b in zip(row,primal))==1 for row in E),'LP primal row equality')
        require(all(sum(a*b for a,b in zip(row,primal))<=rhs for row,rhs in zip(A,B)),'LP primal ray inequality')
        for col in range(45):
            d=sum(ye[i]*E[i][col] for i in range(6))+sum(yi[i]*A[i][col] for i in range(len(A)))
            require(d<=int(col==44),'LP exact dual inequality')
        dual=sum(ye)+sum(a*b for a,b in zip(yi,B))
        require(primal[-1]==dual==frac(x['minimal_t'])==F(6+r+s,12),'LP exact primal-dual optimum')
        vals.append(str(dual))
    return {'status':'PASS_EXACT_PRIMAL_DUAL_FOR_SPECIFIED_RAY_MODEL','positions':8,'rays':len(rays),'constraints':len(A),'optima':vals,'scope':'mass model; no claim of global arithmetic optimality'}

def negative_tests(cert: dict,cuts: dict,w: dict,ray: dict) -> dict:
    results=[]
    def reject(name,fun):
        try: fun()
        except (Rejected,ValueError,KeyError,IndexError,ZeroDivisionError): results.append({'name':name,'status':'REJECTED'});return
        raise Rejected('damaged certificate accepted: '+name)
    def ar(name,mut):
        c=copy.deepcopy(cert);mut(c);reject(name,lambda:arithmetic(c,cuts))
    ar('include forbidden row zero',lambda c:c['rows'].insert(0,0))
    ar('omit a weight cell',lambda c:c['weight_cells'].pop())
    ar('overclaim local divisibility weight',lambda c:c['weight_cells'][0].__setitem__('lhs',99))
    ar('omit a residual placement',lambda c:c['positions'].pop())
    ar('raise n height exponent without degree',lambda c:c['positions'][0].__setitem__('height_n_power',10))
    ar('drop half-scale constant loss',lambda c:c['positions'][0]['cases'][0].__setitem__('constant_loss','52'))
    ar('false uniform cost 52',lambda c:c.__setitem__('common_constant_loss',52))
    ar('overclaim component exponent 3/20',lambda c:c['target_component_exponents'].__setitem__('two','3/20'))
    ar('overclaim component exponent 3/40',lambda c:c['target_component_exponents'].__setitem__('five','3/40'))
    ar('advance integer b minimum',lambda c:c['necessary_exponent_minima'].__setitem__('b',422065))
    ar('advance integer a minimum',lambda c:c['necessary_exponent_minima'].__setitem__('a',1960002))
    ar('unsupported narrower exponent corridor',lambda c:c['corridor'].__setitem__('b_lt_multiple_a',2))
    bad=copy.deepcopy(cuts);bad['cuts'][5]['wp'],bad['cuts'][5]['wq']=bad['cuts'][5]['wq'],bad['cuts'][5]['wp']
    reject('swap frozen cut endpoints',lambda:arithmetic(cert,bad))
    def wi(name,mut):
        x=copy.deepcopy(w);mut(x);reject(name,lambda:relaxation(x,cuts))
    wi('rational row mass changed',lambda x:x['cells'][1].__setitem__('mass','1/9'))
    wi('false polynomial zero mask',lambda x:x['polynomials'][0]['zeros'].pop())
    wi('false polynomial degree',lambda x:x['polynomials'][0].__setitem__('degree',2))
    wi('model mislabeled integer counterexample',lambda x:x.__setitem__('status','INTEGER_COUNTEREXAMPLE'))
    b=copy.deepcopy(ray);b['positions'][0]['minimal_t']='4/5';reject('unsupported stronger ray-model optimum',lambda:ray_optimality(b))
    return {'status':'PASS_ALL_SEMANTIC_CORRUPTION_TESTS','count':len(results),'tests':results}

def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('--log-dir',default='logs/receiving');args=ap.parse_args()
    dst=ROOT/args.log_dir;dst.mkdir(parents=True,exist_ok=True)
    start=time.perf_counter();stages={}
    cert=load('evidence/new_certificate.json'); cuts=load('frozen58/evidence/selected_cuts.json');w=load('evidence/stronger_relaxation_witness.json');ray=load('evidence/primitive_ray_discovery.json')
    tasks=[('source',source_integrity),('arithmetic',lambda:arithmetic(cert,cuts)),('diagnostics',lambda:regressions(cert)),('relaxation',lambda:relaxation(w,cuts)),('ray_optimality',lambda:ray_optimality(ray)),('negative_tests',lambda:negative_tests(cert,cuts,w,ray))]
    for name,fun in tasks:
        t=time.perf_counter();result=fun();result['seconds']=time.perf_counter()-t
        (dst/(name+'.json')).write_text(json.dumps(result,indent=2)+'\n');stages[name]={'status':result['status'],'seconds':result['seconds']}
        print(name,result['status'],f"{result['seconds']:.3f}s",flush=True)
    final={'status':'PASS_NEW_DOUBLE_HIGH_FIBRE_OBLIGATIONS','seconds':time.perf_counter()-start,'stages':stages,'old_heavy_replayed':False,'Lean':'NOT_RUN','infinite_symbolic_proof':'paper argument, not mechanically formalized','R7':[3,4,5,6,7,8,9],'families':58,'absolute_outer_exponent_bound':False}
    (dst/'acceptance.json').write_text(json.dumps(final,indent=2)+'\n');print(final['status'],f"{final['seconds']:.3f}s")

if __name__=='__main__': main()
