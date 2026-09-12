from __future__ import annotations
from datetime import datetime,timezone
from fractions import Fraction as F
from math import gcd
from pathlib import Path
import hashlib,importlib.util,itertools,json,re,sys,time

OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
OLD=RUN/'experiments/huan-G-rational-weight-test-5e2d13bb/check_rational_weights.py'
assert hashlib.sha256(OLD.read_bytes()).hexdigest()=='5f2eac5c29b99045eac779143b8526e387e2e78217ab7bf66a03781c74947efc'
spec=importlib.util.spec_from_file_location('frozen_weight_consumers',OLD)
old=importlib.util.module_from_spec(spec);sys.modules[spec.name]=old;spec.loader.exec_module(old)
ri=old.ri;I,logq,logI,sqrtq=ri.I,ri.logq,ri.logI,ri.sqrtq


def sk(r):return tuple(r[k] for k in ('p','q','k0','l0','a','b','D0'))
def intersects(a,b):return max(a.lo,b.lo)<=min(a.hi,b.hi)
def readI(o):return I(F(o['lo']),F(o['hi']))


def prepared_seed(key):
    p,q,k,l,a,b,D=key;P,Q=p**k,q**l
    assert a*P-b*Q==D>0
    return {'key':key,'P':P,'Q':Q,'a':a,'b':b,'D':D,'z':F(D,a*P),
            'lp':logq(P),'lq':logq(Q),'la':logq(a),'lb':logq(b),'lD':logq(D),
            'lap':logq(a*P),'lmin':logq(min(P,Q)),'lmax':logq(max(P,Q))}


def eval_caps(seed,c,d,H,g):
    t=F(d,c);z=seed['z']
    disc=z*z+4*t*t*(1-z)
    assert (2-z)**2-4*(1+t)*(1-t)*(1-z)==disc
    assert (2*t+z)**2-4*t*(1+t)*z==disc
    assert disc/(t*t)==(1/t)**2*z*z+4-4*z
    R=sqrtq(disc,bits=160)
    xQ=2*(1-t)/(2-z+R);xE=2*t/(2*t+z+R)
    assert 0<xQ.lo<=xQ.hi<1 and 0<xE.lo<=xE.hi<1
    qcost=(H+(1-t)*logI(xQ)+t*logI(1-xQ)+t*logI(1-(1-z)*xQ)).rounded()
    ecost=(H+t*logI(xE)+t*logI(1-xE)+(1-t)*logI(1-z*xE)).rounded()
    e3base=((1-t)*seed['lp']-t*seed['la']-seed['lb']-qcost).rounded()
    e4base=(seed['lmin']-(1-t)*seed['lap']-2*t*seed['lD']-ecost).rounded()
    outputs=[]
    for mode,growth in [('G1',I.point(0)),('D',g)]:
        e3=(e3base+growth).rounded();e4=(e4base+growth).rounded()
        rate=(seed['lmax']+e4).rounded()
        out={'mode':mode,'c':c,'d':d,'gamma_log_G_per_m':(c*growth).json(),
             'effective_log_L':(growth/t).json(),'ell3_per_c':e3.json(),'ell4_per_c':e4.json(),
             'height_rate_per_c':rate.json(),'upper_caps':[0,0],'candidate':None}
        if e3.hi<0 or e4.hi<0:
            out['status']='negative necessary exponent'
        else:
            assert rate.lo>0
            upper=[1000*(1*x-rate.lo*0) for x in []]  # empty; bounds below use their correct common rate
            upper=[1000*(1-ell.lo/rate.hi) for ell in (seed['lp'],seed['lq'])]
            lower=[1000*(1-ell.hi/rate.lo) for ell in (seed['lp'],seed['lq'])]
            out['upper_caps']=[max(0,ri.ceilq(x)) for x in upper]
            assert max(out['upper_caps'])<999
            out['weight_upper']=[str(x) for x in upper]
            out['status']='optimistic common-rate rectangle'
            if e3.lo>0 and e4.lo>0 and min(lower)>=0:
                weights=[max(0,ri.ceilq(x)-1) for x in lower]
                beta=min((F(1000-weights[0],1000)/seed['lp']).lo,
                         (F(1000-weights[1],1000)/seed['lq']).lo)
                margin=beta*rate.lo-1
                assert margin>0
                out['candidate']={'weights':weights,'height_leading_margin_lower':str(margin),
                                  'ell3_per_c_lower':str(e3.lo),'ell4_per_c_lower':str(e4.lo)}
        outputs.append(out)
    zero,new=outputs
    assert all(b>=a for a,b in zip(zero['upper_caps'],new['upper_caps']))
    if zero['candidate'] is not None:
        assert new['candidate'] is not None
        assert all(b>=a for a,b in zip(zero['candidate']['weights'],new['candidate']['weights']))
    gamma=c*g
    assert readI(new['effective_log_L'])*d==gamma
    for name in ('ell3_per_c','ell4_per_c','height_rate_per_c'):
        assert intersects(c*(readI(new[name])-readI(zero[name])),gamma)
    return outputs


def optimize_structure(i,t,S):return old.structure_options(i,t,S)


def evaluate_consumers(i18,profiles,chosen):
    def convert(rows):
        return [dict(r,search_caps=chosen[sk(r)]) for r in rows]
    rows18=convert(i18);primes=[2,3,5,7,11,13,17]
    corners18=list(old.corners(primes,rows18,'search_caps'))
    distinct=[]
    # Same descending w_a=2s-a family; s=12 reconstructs the frozen formula.
    for s in range(9,18):
        val,mask,x=min((sum(w*y for w,y in zip(range(2*s,2*s-7,-1),sorted(x))),mask,x) for mask,x in corners18)
        total=2*s*18-18*17//2;top=2*s*7-7*6//2;large=s*(s+1)
        threshold=1000*(large+top-total)
        assert threshold==1000*(s*s-21*s+132)
        distinct.append({'s':s,'minimum':val,'threshold':threshold,'margin':val-threshold,
                         'witness':{'mask':mask,'x':dict(zip(primes,x))}})
    best_distinct=max(distinct,key=lambda r:r['margin'])
    collision=[]
    for p,q in itertools.combinations(range(7),2):
        sigma,mask,x=min((sum(x)+max(0,1000-x[p]-x[q]),mask,x) for mask,x in corners18)
        collision.append({'pair':[primes[p],primes[q]],'sigma':sigma,
                          'witness':{'mask':mask,'x':dict(zip(primes,x))}})
    worst=min(collision,key=lambda r:r['sigma'])
    collision_structure=optimize_structure(18,7,worst['sigma'])
    i18result={'i':18,'orientations':1024,'distinct_parameters':distinct,
               'best_distinct':best_distinct,'collision_records':collision,
               'minimum_collision_sigma':worst['sigma'],'blocking_collision_pair':worst['pair'],
               'uniform_collision_structure':collision_structure,
               'complete_leading_margin':best_distinct['margin']>0 and collision_structure['Delta']>0}
    results=[]
    for profile in profiles:
        rows=convert(profile['cuts'])
        cs=list(old.corners(profile['primes'],rows,'search_caps'))
        S,mask,x=min((sum(x),mask,x) for mask,x in cs)
        best=optimize_structure(profile['i'],profile['t'],S)
        results.append({'i':profile['i'],'orientations':len(cs),'S':S,'best_structure':best,
                        'witness':{'mask':mask,'x':dict(zip(profile['primes'],x))},
                        'complete_leading_margin':best['Delta']>0})
    return {'i18':i18result,'profiles':results,
            'complete_indices':([18] if i18result['complete_leading_margin'] else [])+
                               [p['i'] for p in results if p['complete_leading_margin']],
            'orientation_vectors':1024+sum(r['orientations'] for r in results)}


def main():
    start=time.perf_counter()
    i18=[]
    pattern=r'^\|(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+),(\d+)\|(\d+),(\d+)\|(\d+),(\d+)\|'
    for vals in re.findall(pattern,old.I18.read_text(encoding='utf-8-sig'),re.M):
        i18.append(dict(zip(('p','q','k0','l0','a','b','D0','c','d','wp','wq'),map(int,vals))))
    profiles=json.loads(old.PROFILES.read_text())['profiles'];assert len(i18)==10 and len(profiles)==7
    allrows=i18+[r for p in profiles for r in p['cuts']]
    keys=sorted({sk(r) for r in allrows});assert len(keys)==25
    seeds=[prepared_seed(key) for key in keys]
    fixed={sk(row['configuration'])+(row['configuration']['c'],row['configuration']['d']):row
           for row in json.loads((RUN/'experiments/huan-G-rational-weight-test-5e2d13bb/rational-weight-checks.json').read_text())['row_caps']}
    best={key:{mode:{'coordinate_caps':[0,0],'upper_winner':None,'candidate_winner':None} for mode in ('G1','D')} for key in keys}
    compact=[];ratios=[];fixed_checked=set();config_count=0
    for c in range(2,25):
        for d in range(1,c):
            if gcd(c,d)!=1:continue
            beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
            H=(logq(beta)/c).rounded()
            quotient=beta/F(4**c)
            g=(logq(quotient)/(2*c)).rounded() if quotient>1 else I.point(0)
            assert g.lo>=0
            ratios.append({'c':c,'d':d,'beta_over_4powc':str(quotient),'positive_gamma':quotient>1,
                           'gamma_per_m':(c*g).json()})
            for sid,seed in enumerate(seeds):
                outputs=eval_caps(seed,c,d,H,g);config_count+=1
                compact_row=[sid,c,d]
                for out in outputs:
                    state=best[seed['key']][out['mode']]
                    state['coordinate_caps']=[max(a,b) for a,b in zip(state['coordinate_caps'],out['upper_caps'])]
                    if out['status']!='negative necessary exponent':
                        if state['upper_winner'] is None or readI(out['height_rate_per_c']).hi>readI(state['upper_winner']['height_rate_per_c']).hi:
                            state['upper_winner']=out
                    if out['candidate'] is not None:
                        if state['candidate_winner'] is None or readI(out['height_rate_per_c']).lo>readI(state['candidate_winner']['height_rate_per_c']).lo:
                            state['candidate_winner']=out
                    compact_row+=out['upper_caps']+(out['candidate']['weights'] if out['candidate'] else [-1,-1])
                compact.append(compact_row)
                oldkey=seed['key']+(c,d)
                if oldkey in fixed:
                    expect=fixed[oldkey];current=outputs[1]
                    for newfield,oldfield in [('ell3_per_c','d_logOmega3'),('ell4_per_c','d_logOmega4'),('height_rate_per_c','T')]:
                        assert intersects(c*readI(current[newfield]),readI(expect[oldfield])),(oldkey,newfield)
                    fixed_checked.add(oldkey)
        print(json.dumps({'completed_c':c,'configurations':config_count,'seconds':round(time.perf_counter()-start,3)}),flush=True)
        if c==16 and time.perf_counter()-start>60:
            break
    completed_c=c
    assert len(fixed_checked)==sum(k[-2]<=completed_c for k in fixed)
    chosen={name:{} for name in ('G1_upper','D_upper','G1_joint','D_joint')}
    winner_records=[]
    for key in keys:
        entry={'seed':dict(zip(('p','q','k0','l0','a','b','D0'),key))}
        for mode in ('G1','D'):
            state=best[key][mode];winner=state['upper_winner'];candidate=state['candidate_winner']
            assert state['coordinate_caps']==(winner['upper_caps'] if winner else [0,0])
            chosen[mode+'_upper'][key]=state['coordinate_caps']
            chosen[mode+'_joint'][key]=candidate['candidate']['weights'] if candidate else [0,0]
            entry[mode]=state
        assert all(b>=a for a,b in zip(chosen['G1_upper'][key],chosen['D_upper'][key]))
        assert all(b>=a for a,b in zip(chosen['G1_joint'][key],chosen['D_joint'][key]))
        winner_records.append(entry)
    consumers={name:evaluate_consumers(i18,profiles,weights) for name,weights in chosen.items()}
    for kind in ('upper','joint'):
        zero,new=consumers['G1_'+kind],consumers['D_'+kind]
        assert new['i18']['best_distinct']['margin']>=zero['i18']['best_distinct']['margin']
        assert new['i18']['minimum_collision_sigma']>=zero['i18']['minimum_collision_sigma']
        for a,b in zip(zero['profiles'],new['profiles']):
            assert a['i']==b['i'] and b['S']>=a['S'] and b['best_structure']['Delta']>=a['best_structure']['Delta']
    matrix={'columns':['seed_id','c','d','G1_cap_p','G1_cap_q','G1_joint_p','G1_joint_q','D_cap_p','D_cap_q','D_joint_p','D_joint_q'],
            'seeds':[dict(zip(('p','q','k0','l0','a','b','D0'),k)) for k in keys],'rows':compact}
    (OUT/'grid-caps.json').write_text(json.dumps(matrix,separators=(',',':'))+'\n',encoding='utf-8')
    source_paths=[OLD,old.I18,old.PROFILES,old.VENDOR,RUN/'experiments/huan-G-rational-factorial-test-5e2d13bb/REPORT.md',
                  RUN/'experiments/huan-G-rational-weight-test-5e2d13bb/rational-weight-checks.json']
    result={'utc':datetime.now(timezone.utc).isoformat(),'status':'finite exact interval search; candidate weights are asymptotic only',
            'completed_c_max':completed_c,'coprime_pairs':len(ratios),'configurations':config_count,'seed_count':25,
            'growth_rate':'max(0,gamma_D)=log G/m; equivalently log L=max(0,gamma_D)/d',
            'maximizer_formula_checks':{'exact_discriminant_equalities':config_count,'root_positions_in_0_1':config_count,
                                        'matching_preexisting_fixed_configurations':len(fixed_checked)},
            'same_configuration_monotonicity_and_unit_checks':config_count,
            'coordinate_envelope_has_one_common_upper_winner_for_every_seed_and_mode':True,
            'ratios':ratios,'seed_winners':winner_records,'consumers':consumers,
            'joint_asymptotic_complete_indices':consumers['D_joint']['complete_indices'],
            'necessary_upper_complete_indices':consumers['D_upper']['complete_indices'],
            'source_hashes':{str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in source_paths},
            'matrix_sha256':hashlib.sha256((OUT/'grid-caps.json').read_bytes()).hexdigest(),
            'elapsed_seconds':time.perf_counter()-start,'worker_lean_invocations':0,'new_original_indices':[]}
    (OUT/'ratio-search-results.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'completed_c_max':completed_c,'pairs':len(ratios),'configurations':config_count,
                      'units_and_monotonicity':'PASS','fixed_source_correspondence_checks':len(fixed_checked),
                      'upper_complete':result['necessary_upper_complete_indices'],'joint_complete':result['joint_asymptotic_complete_indices'],
                      'consumers':{name:{'i18_distinct':value['i18']['best_distinct'],
                                         'i18_collision_Delta':value['i18']['uniform_collision_structure']['Delta'],
                                         'profiles':[{'i':r['i'],'S':r['S'],'Delta':r['best_structure']['Delta']} for r in value['profiles']]} for name,value in consumers.items()},
                      'seconds':result['elapsed_seconds']},ensure_ascii=False,indent=2))


if __name__=='__main__':main()
