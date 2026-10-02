#!/usr/bin/env python3
"""C Round9: exact double-origin / complete-power certificates.
Standard library only. No Lean, CAS, network, repository or previous-round execution.
Historical unit-window results and BFT Theorem 2.1 are explicitly ADOPTED.
"""
from __future__ import annotations
import argparse,csv,hashlib,io,json,math,sys,zipfile
from fractions import Fraction as Fr
from pathlib import Path
from exact import (require,add,mul,scale,power,value,compose,poly,rows,fraction,
                   nullspace,primitive,sylvester,resultant,bareiss,N,J,ONE,prod)
TARGET=(352,425,776,1026,1377,1450)
Q2S=(7,13,19,29,133)
NBOUND=2**43
HASHES={'R7':'98aef16bd397d0260a67e111b157c117706cef312f51a7b3e86453d82933fa4c',
        'R8':'e6bd9528a72796e27647f149cc55a5d77ed121495e082702b80721aa11ac60b0'}
ROOTS={'R7':'B699-C-R7-PAIRCONIC012-20261002/',
       'R8':'B699-C-R8-SOURCE01-CUBIC012-20261002/'}

def encode(obj):return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def rough(n):
    if n==0:return 0
    n=abs(n)
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def split_a(n):
    require(n>0,'positive small-part input')
    q=rough(n);return n//q,q

def split_b(n):
    require(n>0,'positive small-part input')
    q=n
    while (d:=math.gcd(q,30))>1:q//=d
    return n//q,q

def vp(n,p):
    require(n!=0,'infinite valuation not requested')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e

def threshold(p):return 3 if p==2 else 2

def bind(root):
    copied={};archives={}
    mappings={'R7':{'R7_PROOFS.md':'PROOFS.md','R7_HANDOFF.md':'HANDOFF.md'},
      'R8':{'R8_PROOFS.md':'PROOFS.md','R8_HANDOFF.md':'HANDOFF.md',
      'R8_RESIDUAL_TEN.json':'certificates/RESIDUAL_TEN.json',
      'R8_SOURCE_BINDING.json':'certificates/SOURCE_BINDING.json',
      'R8_ORIGINAL_TERMINAL.json':'certificates/ORIGINAL_TERMINAL.json',
      'ACTUAL_SMALLPARTS_42.csv':'dependencies/ACTUAL_SMALLPARTS_42.csv'}}
    for tag in ('R7','R8'):
        data=(root/'dependencies'/(tag+'_FROZEN.zip')).read_bytes()
        require(sha(data)==HASHES[tag],tag+' archive identity mismatch')
        with zipfile.ZipFile(io.BytesIO(data)) as z:
            lines=z.read(ROOTS[tag]+'MANIFEST.sha256').decode().splitlines();names=[]
            for line in lines:
                h,name=line.split(None,1);name=name.strip().lstrip('*');names.append(name)
                require(sha(z.read(ROOTS[tag]+name))==h,tag+' member hash mismatch: '+name)
            for dst,src in mappings[tag].items():
                b=(root/'dependencies'/dst).read_bytes()
                require(b==z.read(ROOTS[tag]+src),'dependency copy mismatch: '+dst)
                copied[dst]=sha(b)
        rec=json.loads((root/'dependencies'/(tag+'_LOCAL_REPLAY_RECEIPT.json')).read_text())
        require(rec['status']=='PASS' and rec['archive_sha256']==HASHES[tag],tag+' saved replay not bound')
        archives[tag]={'sha256':sha(data),'manifest_members_checked':len(names),
                      'saved_local_replay_status':rec['status']}
    table=list(csv.DictReader((root/'dependencies/ACTUAL_SMALLPARTS_42.csv').read_text().splitlines()))
    classes=[]
    for a in TARGET:
        r=next(x for x in table if int(x['a'])==a)
        ps=[next(p for p in (2,3,5) if int(r['r'+str(p)])==h) for h in range(3)]
        ks=[int(r['kappa'+str(h)]) for h in range(6)]
        require([r['H_at_'+str(h)] for h in (3,4,5)]==['1']*3,'nonfixed tail cost')
        classes.append({'a':a,'p':ps,'kappa':ks,'sigma':math.prod(ks[3:])})
    require(max(c['sigma'] for c in classes)==120,'sigma changed')
    residual=json.loads((root/'dependencies/R8_RESIDUAL_TEN.json').read_text())['records']
    require(len(residual)==10,'expected ten adopted residual equations')
    return {'requested_baseline':'R7/PAIRCONIC012','explicit_supplement':'R8/SOURCE01-CUBIC012',
      'archives':archives,'copied_sha256':copied,'classes':classes,
      'old_Overview_original_sha_verified':False,'previous_programs_executed_by_this_verifier':False,
      'historical_paper_proofs_independently_audited':False},classes,residual

def kernels(root,residual):
    seeds=json.loads((root/'inputs/KERNEL_SEEDS.json').read_text());require(len(seeds)==10,'kernel seed count')
    basis=[power(N,2),mul(N,J),power(J,2),power(N,3),mul(power(N,2),J),mul(N,power(J,2)),power(J,3)]
    krecs=[];rrecs=[];objects=[]
    for idx,(r,seed) in enumerate(zip(residual,seeds),1):
        label=f'Z{idx:02}';require(seed['id']==label,'unordered kernel seeds')
        f=poly(r['polynomial']);points=[(h,b) for h,pair in zip((3,4,5),r['pairs']) for b in pair]
        matrix=[[value(m,*p) for m in basis] for p in points]
        rank,space=nullspace(matrix)
        require(rank==6 and len(space)==1,'double-origin kernel dimension is not one')
        vector=primitive(space[0]);require(vector==seed['G_basis'],'kernel seed disagrees with exact nullspace')
        h={}
        for c,b in zip(vector,basis):h=add(h,scale(b,c))
        require(min(sum(e) for e in h)==2 and max(sum(e) for e in h)==3,'wrong origin order/degree')
        require(all(value(h,*p)==0 for p in points),'complete source point missing')
        require(all(value(f,*p)==0 for p in points),'adopted equation missing specified point')
        q2values=[value(f,2,b) for b in range(3)]
        require(all(q2values),'unhandled zero source2 value')
        R2=rough(prod(q2values));divs=[d for d in range(7,R2+1) if R2%d==0]
        require(divs==r['possible_q2_values'],'complete q2 divisor set differs')
        require(R2==r['complete_q2_divides'],'source2 content changed')
        C=sum(Fr(abs(c),2**b*352**(3-a-b)) for (a,b),c in h.items())
        require(C<450,'coefficient norm insufficient')
        det=resultant(f,h);factor,A,B=seed['resultant_factor']
        x={(1,):1};expected={(0,):factor}
        for c in (0,3,4,5):expected=mul(expected,power(add(x,{(0,):-c}),2))
        expected=mul(expected,{(1,):A,(0,):B})
        require(det==expected,'symbolic Sylvester determinant factorization failed')
        require(A>0 and A*352+B>0 and factor!=0,'unhandled legal common zero')
        mat=sylvester(f,h)
        # Entries have N degree <=3. Degree <=18, hence these 19 exact values
        # are also a complete independent interpolation check of the determinant.
        evals=[]
        for t in range(19):
            v=bareiss([[value(p,t) for p in row] for row in mat])
            require(v==value(det,t),'independent Bareiss determinant differs')
            evals.append([t,v])
        krecs.append({'id':label,'pairs':r['pairs'],'F':rows(f),'G':rows(h),'G_basis':vector,
            'tail_source_points':[list(p) for p in points],'source_values':[value(h,*p) for p in points],
            'origin_order':2,'degree':3,'matrix_rank':rank,'nullspace_dimension':len(space),
            'norm_C':fraction(C),'norm_C_lt_450':True,'source2_values':q2values,
            'complete_q2_divides':R2,'complete_q2_possible':divs})
        rrecs.append({'id':label,'resultant_polynomial':[[e[0],c] for e,c in sorted(det.items())],
            'factorization_c_A_B':[factor,A,B],'factors_squared':[0,3,4,5],
            'linear_at_352':A*352+B,'extra_root':fraction(Fr(-B,A)),
            'resultant_degree':max(e[0] for e in det),'independent_determinant_degree_bound':18,
            'independent_Bareiss_values':evals,'legal_common_zero_possible':False})
        objects.append((f,h,C))
    return {'count':10,'ordinary_slot_assignment_unchanged':True,'records':krecs},\
           {'count':10,'identity_method':'Sylvester determinant in Z[N], independent integer Bareiss interpolation',
            'legal_n_minimum':352,'records':rrecs},objects

def heights(root,classes,objects):
    recs=[]
    for z,(_,_,C) in enumerate(objects,1):
        for c in classes:
            bound=Fr(88,85)*C*c['sigma']
            gmax=math.isqrt(bound.numerator//bound.denominator)
            while gmax*gmax>=bound:gmax-=1
            require(gmax*gmax<bound<=(gmax+1)**2,'integer square bound')
            recs.append({'id':f'Z{z:02}','a':c['a'],'sigma':c['sigma'],
                         'strict_g_squared_bound':fraction(bound),'g_max':gmax})
    require(max(r['g_max'] for r in recs)==234,'uniform g bound changed')
    contract=json.loads((root/'inputs/BFT_CONTRACT.json').read_text())
    require(contract['used_actual_distance']==2 and contract['small_value_bound']==1000 and contract['distance_limit']==100,'BFT application contract mismatch')
    require(contract['lambdas']=={'2,3':[57,200],'2,5':[129,500],'3,5':[27,125]},'BFT exact exponents mismatch')
    pairs=contract['exception_pairs'];require(len(pairs)==40,'BFT exception count')
    require(all(abs(a-b)!=2 for a,b in pairs),'actual distance2 BFT exception exists')
    require(468**125 < 2**(42*27),'dyadic n height not certified')
    require(468**125 >= 2**(41*27),'minimal uniform dyadic comparison unexpectedly changed')
    return {'conditional_g_bounds':recs,'g_uniform_max':234,'q2_allowed':list(Q2S),
      'q2_uniform_max':133,'max_origin_cofactor':468,'max_source2_cofactor':266,
      'BFT':{'theorem':'Bennett-Filaseta-Trifonov Theorem2.1','adopted_not_reproved':True,
        'input_contract_sha256':sha((root/'inputs/BFT_CONTRACT.json').read_bytes()),
        'original_values':['n','n-2'],'distance':2,'n_start':1003,'exception_count':len(pairs),
        'matching_exceptions':[],'minimum_lambda':[27,125],
        'exact_comparison':{'lhs':468**125,'rhs':2**(42*27),'strict':True}},
      'uniform_n_strict_bound':NBOUND,'dyadic_exponent':43,'small_n_exit_included':True,
      'no_epsilon_cutoff':True,'g_bound_only_under_residual_zero_equation':True}

def forward(classes):
    records=[];accepted=[]
    for c in classes:
        a=c['a'];p=c['p'][2];k=c['kappa'][2]
        for q2 in Q2S:
            e=threshold(p);P=p**e
            while (n:=2+k*P*q2)<NBOUND:
                rec={'a':a,'p2':p,'e2':e,'P2':P,'q2':q2,'n':n}
                if n%1800!=a:rec['exit']='outside_original_residue'
                else:
                    s2,actual=split_a(n-2);s0,q0=split_a(n)
                    rec.update({'actual_s2':s2,'actual_q2':actual,'actual_s0':s0,'actual_q0':q0})
                    if (s2,actual)!=(k*P,q2):rec['exit']='actual_complete_power_mismatch'
                    elif not 7<=q0<=234:rec['exit']='q0_outside_proved_interval'
                    else:
                        rec['exit']='accepted_original_n';accepted.append([a,n,q0,q2])
                records.append(rec);e+=1;P*=p
    return {'direction':'actual source2 ascending full powers','raw_count':len(records),
            'records':records,'accepted_original_rows':sorted(accepted),
            'distinct_n':sorted({r[1] for r in accepted}),'CRT_minimum_used':False}

def reverse(classes):
    records=[];accepted=[]
    for c in reversed(classes):
        a=c['a'];p=c['p'][0];k0=c['kappa'][0];p2=c['p'][2];k2=c['kappa'][2]
        for q0 in range(234,6,-1):
            if math.gcd(q0,30)!=1:continue
            powers=[];e=threshold(p);P=p**e
            while k0*P*q0<NBOUND:powers.append((P,e,k0*P*q0));P*=p;e+=1
            for P,e,n in reversed(powers):
                rec={'a':a,'p0':p,'e0':e,'P0':P,'q0':q0,'n':n}
                if not all(n%m==a%m for m in (8,9,25)):rec['exit']='outside_three_CRT_components'
                else:
                    s0,aq0=split_b(n);s2,aq2=split_b(n-2)
                    rec.update({'actual_s0':s0,'actual_q0':aq0,'actual_s2':s2,'actual_q2':aq2})
                    require((s0,aq0)==(k0*P,q0),'reverse source0 not actual full power')
                    if aq2 not in Q2S:rec['exit']='q2_not_in_proved_set'
                    elif s2%k2:rec['exit']='incorrect_source2_small_coefficient'
                    else:
                        u=s2//k2;e2=0
                        while u%p2==0:u//=p2;e2+=1
                        rec['recovered_e2']=e2
                        if u!=1 or e2<threshold(p2):rec['exit']='incorrect_actual_source2_power'
                        else:rec['exit']='accepted_original_n';accepted.append([a,n,q0,aq2])
                records.append(rec)
    return {'direction':'actual source0 descending full powers and rough cofactors',
            'raw_count':len(records),'records':records,'accepted_original_rows':sorted(accepted),
            'distinct_n':sorted({r[1] for r in accepted}),'CRT_minimum_used':False}

def terminal(root,A,B):
    require(A['raw_count']==733 and B['raw_count']==8574,'complete-power recovery counts differ')
    require(A['accepted_original_rows']==B['accepted_original_rows']==[[352,352,11,7]],'original recovery sets differ')
    n=352;p=349;jmin=7;jmax=n//2
    trials=[[d,p%d] for d in range(2,math.isqrt(p)+1)]
    require(all(r for d,r in trials),'terminal witness not prime')
    require(n-3==p and p*p>n and jmin>3 and jmax<p and n-jmin<p,'terminal interval carry failed')
    # Consume, but do not re-enumerate or recalculate, the already delivered R8 list.
    old=json.loads((root/'dependencies/R8_ORIGINAL_TERMINAL.json').read_text())
    adopted=[r for r in old['combined_witness_records'] if r[0]==n]
    require(len(adopted)==170,'adopted row352 witness count')
    require(all(r[2:]==[349,1,1] for r in adopted),'adopted row352 witness fields')
    return {'recovered_n_rows':[352],'already_closed_in':'C Round8',
      'witness_prime':p,'primality_trial_remainders':trials,'source_position':3,'complete_source_exponent':1,
      'j_interval':[jmin,jmax],'k_interval':[n-jmax,n-jmin],
      'p_adic_binomial_valuations':[1,1],'proof':'j and k both below349, n in[349,698); exactly one carry',
      'adopted_original_witness_count':170,'adopted_record_sha256':sha(encode(adopted)),
      'new_original_j_enumeration_count':0,'NC_survivors':[],
      'no_repeat_of_old_425_489_4096_terminal':True}

def controls(objects,residual):
    full=[]
    for idx,(_,h,_) in enumerate(objects,1):
        # Local Taylor lifts: arbitrary exponent is proved in PROOFS; these test the implementation.
        pairs=residual[idx-1]['pairs']
        for r,ab in zip((3,4,5),pairs):
            for b in ab:
                for p in (7,11,13):
                    for e in (1,2,3):
                        Q=p**e;nv=r+Q*17;jv=b+Q*5
                        require(value(h,nv,jv)%Q==0,'full source lift failed')
                        full.append([idx,r,b,p,e])
    # A first-layer-only input does not justify a complete square-power charge.
    bad=None
    for idx,(_,h,_) in enumerate(objects,1):
        for r,ab in zip((3,4,5),residual[idx-1]['pairs']):
            for jv in range(7,27):
                nv=r+49
                if jv>nv//2:continue
                v=value(h,nv,jv)
                if jv%7 in ab and jv%49 not in ab and v%7==0 and v%49:
                    bad=[idx,nv,jv,v,v%49];break
            if bad:break
        if bad:break
    require(bad is not None,'radical negative example missing')
    # Explicit infinite actual family refutes G-nonzero without the actual F=0 hypothesis.
    f,h,_=objects[3]
    tN={(0,0):425,(1,0):95400};tJ={(0,0):85,(1,0):19080}
    hsub=compose(h,[tN,tJ]);fsub=compose(f,[tN,tJ])
    expected=scale(mul(mul(tJ,add(tJ,scale(ONE,-1))),add(tJ,scale(ONE,19))),5)
    require(not hsub and fsub==expected,'weak family identity incorrect')
    examples=[]
    for m in (0,1,2,10):
        n=value(tN,m,0);j=value(tJ,m,0);g=math.gcd(n,j);s0,q0=split_a(n)
        require(n%1800==425 and g==j and n//g==5 and s0%5==0 and g%q0==0,'actual weak recovery failed')
        require(n%53==1 and j%53==32,'missing original source1 rejection')
        examples.append({'m':m,'n':n,'j':j,'g':g,'alpha':5,'q0':q0,
          'G04':value(h,n,j),'F04':value(f,n,j),'p':53,'n_mod_p':1,'j_mod_p':32})
    return {'local_full_power_tests':len(full),'tested_lifts':full,
       'radical_is_insufficient_example':{'id':f'Z{bad[0]:02}','n':bad[1],'j':bad[2],'G_value':bad[3],
         'G_mod49':bad[4],'first7_layer_only_not_NC':True},
       'G04_zero_family':{'n':'425+95400m','j':'85+19080m','m':'all integers m>=0',
          'G04_identically_zero':True,'F04':'5j(j-1)(j+19)>0','source1_always_rejected_by':53,
          'examples':examples,'not_an_NC_model':True,'not_a_counterexample':True},
       'partial_blocks':{'under_actual_F_zero':'g^2 < (88/85) C_i sigma R3 R4 R5',
           'does_not_bound_any_R':True,'does_not_bound_epsilon':True,
           'if_F_nonzero':'previous g*q1 bound also loses R3R4R5; zero-equation reduction not automatic'}}

def generate(root):
    binding,classes,residual=bind(root)
    K,R,objects=kernels(root,residual)
    H=heights(root,classes,objects)
    A=forward(classes);B=reverse(classes);T=terminal(root,A,B);C=controls(objects,residual)
    coverage={'requested_baseline':'R7','supplement_used':'R8',
       'R7_remaining_restricted_signatures':792,'already_closed_by_R8':782,
       'newly_closed_R8_zero_signatures':10,'remaining_in_full_two_slot_subdomain':0,
       'original_900_pair_signature_menu_after_adoptions':0,
       'at_least_one_tail_source_has_at_least_three_ordinary_slots':True,
       'each_tail_source_has_at_least_two_ordinary_slots':'adopted R6',
       'minimum_total_rough_prime_support_in_012_NC':10,
       'max_omega_tail_le_2_is_row_consumer':True,
       'complete_mod1800_classes':'42 -> 42','complete_indices_added':0,
       'global_R7':[3,4,5,6,7,8,9],'certified_historical_net_difference':0,
       'positive_historical_set_difference_certified':False,'epsilon_absolute_bound_obtained':False,
       'first_phase_central_corridor_fully_closed':False,
       'all_012_rows_closed':False,'all_42_classes_closed':False,
       'remaining_minimal_slot_count_envelope':[[3,2,2],[2,3,2],[2,2,3]],
       'remaining_envelope_is_not_claimed_realizable':True,'new_n_bound_only_in_ten_zero_branches':NBOUND,
       'new_ROW02_general_consumer':'012, q0<=234, q2 in {7,13,19,29,133} -> Common6 entire row',
       'infinite_actual_difference_family_not_claimed':True,
       'Lean_run':False,'repository_operations':False,'network_used_by_verifier':False}
    return {'SOURCE_BINDING.json':binding,'DOUBLE_ORIGIN_CUBICS.json':K,
       'RESULTANT_CERTIFICATES.json':R,'GCD_AND_HEIGHT.json':H,
       'SOURCE2_FORWARD.json':A,'SOURCE0_REVERSE.json':B,'TERMINAL_ROW352.json':T,
       'FAILURE_CONTROLS.json':C,'COVERAGE.json':coverage}

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parent.parent)
    p.add_argument('--output',type=Path,required=True);p.add_argument('--check',type=Path)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True)
    data=generate(a.root.resolve());hashes={}
    for name,obj in data.items():
        b=encode(obj);(a.output/name).write_bytes(b);hashes[name]=sha(b)
        if a.check:
            frozen=(a.check/name).read_bytes()
            require(json.loads(frozen)==obj,'JSON certificate differs: '+name)
            require(frozen==b,'certificate bytes differ: '+name)
    if a.check:require(set(x.name for x in a.check.iterdir() if x.is_file())==set(data),'certificate file set differs')
    out={'status':'PASS','certificate_count':len(data),'certificate_sha256':hashes,
      'new_zero_branches_closed':10,'remaining_two_slot_signatures':0,'manifest_verification_done_by_wrapper':False,
      'full_power_forward_records':data['SOURCE2_FORWARD.json']['raw_count'],
      'full_power_reverse_records':data['SOURCE0_REVERSE.json']['raw_count'],
      'recovered_original_n':[352],'adopted_old_row352_witnesses':170,'new_j_enumeration_count':0,
      'local_full_power_tests':data['FAILURE_CONTROLS.json']['local_full_power_tests'],
      'complete_mod1800_classes':'42 -> 42','certified_historical_net_difference':0,
      'Lean_run':False,'repository_operations':False,'network_used':False,'previous_round_programs_run':False}
    print(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
