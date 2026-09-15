"""Semantic corruptions: their rejection is not a substitute for proof."""
from pathlib import Path
from copy import deepcopy
import json,time,argparse
from receive import receive_certificate,receive_consumer,receive_resonance,receive_giant
ROOT=Path(__file__).resolve().parents[1]
def run():
    t=time.perf_counter();c=json.loads((ROOT/'evidence/certificate.json').read_text());r=json.loads((ROOT/'evidence/resonance_obstruction.json').read_text());g=json.loads((ROOT/'evidence/giant_row.json').read_text());cases=[]
    def cert_case(name,key,value,part='resonance'):
        cc=deepcopy(c);cc[part][key]=value
        cases.append((name,lambda cc=cc:(receive_certificate(cc),receive_consumer(cc),receive_resonance(cc,r))))
    for name,key,value in [('e22 wrongly claimed sufficient','all_gap_e_min',22),('e26 wrongly claimed in separated theorem','separated_e_min',26),('h9 wrongly in long gap','separated_h_min',9),('missing short h9','short_h_max',8),('wrong strict integer endpoint','gap_offset',73),('invalid logarithm comparison','gap_p_constant',65),('extra resonant delta','near_delta_max',14),('unjustified coefficient degree26','near_coefficient_degree',26),('missing finite u15','small_u_max',14),('invalid infinite threshold15','large_u_min',15),('wrong pair total','small_pair_count',70),('wrong R lower','positive_lower',50264),('wrong R upper','upper_constant',3500),('missing h equality range','case_partition',['h<e','h>=e+14']),('missing h1..9','all_gap_partition',['h>=10'])]:cert_case(name,key,value)
    db=deepcopy(c['resonance']['old_two_coefficient_contract']);db['denominator_power']=7;cert_case('weaken old denominator power','old_two_coefficient_contract',db)
    cert_case('e15 insufficient for the balanced join','consumer_long_e_min',15)
    cert_case('drop coupled constant','coupled_direct_constant',212)
    cert_case('wrong 251 exponent join','join_constant',250)
    rr=deepcopy(c['resonance']['R']);rr[1][2]+=1;cert_case('corrupted R coefficient','R',rr)
    for name,key,value in [('high entrance too small','high_log2',512),('uncovered low-high gap','high_log2',4097),('incorrect phi size','phi_bound_degree',9),('second order gap too small','second_gap_offset',13)]:cert_case(name,key,value,'new')
    for name,key,value in [('wrong global closure','global_closure',True),('unjustified highest digit2','highest_digit',2),('drop400 condition','main_n_divisor',16),('false reduced family count','families',57)]:cert_case(name,key,value,'scope')
    for kind in ['missing','duplicate','bad_divisor','zero_divisor','above_p_bound','wrong_quotient']:
        tt=deepcopy(r)
        if kind=='missing':tt['pairs'].pop()
        elif kind=='duplicate':tt['pairs'][-1]=deepcopy(tt['pairs'][0])
        elif kind=='bad_divisor':tt['pairs'][0]['small_divisor']=2
        elif kind=='zero_divisor':tt['pairs'][0]['small_divisor']=1
        elif kind=='above_p_bound':tt['pairs'][0]['small_divisor']=tt['pairs'][0]['limit']+1
        elif kind=='wrong_quotient':tt['pairs'][0]['quotient']+=1
        cases.append(('resonance '+kind,lambda tt=tt:receive_resonance(c,tt)))
    for kind in ['missing_mask','duplicate_mask','bad_witness','wrong_residue','wrong_bits']:
        gg=deepcopy(g)
        if kind=='missing_mask':gg['witnesses'][0]['masks'].pop()
        elif kind=='duplicate_mask':gg['witnesses'][0]['masks'].append(gg['witnesses'][0]['masks'][0])
        elif kind=='bad_witness':gg['witnesses'][0]['prime']=9
        elif kind=='wrong_residue':gg['witnesses'][0]['n_residue']+=1
        elif kind=='wrong_bits':gg['n_bits']+=1
        cases.append(('whole-row '+kind,lambda gg=gg:receive_giant(gg)))
    rejected=[]
    for name,fn in cases:
        try:fn()
        except (ValueError,AssertionError) as exc:rejected.append({'name':name,'reason':str(exc)})
        else:raise AssertionError('MUTATION ACCEPTED: '+name)
    positive=[]
    cc=deepcopy(c);cc['second_terms'].reverse();cc['cyclotomic_F'].reverse();cc['resonance']['R'].reverse();receive_certificate(cc);receive_consumer(cc);receive_resonance(cc,r);positive.append('equivalent polynomial and summand order')
    tt=deepcopy(r);tt['pairs'].reverse();receive_resonance(c,tt);positive.append('equivalent 71-pair order')
    tt=deepcopy(r);tt['pairs'][0]['small_divisor']=9;receive_resonance(c,tt);positive.append('composite divisor9 is valid; no primality assumption')
    gg=deepcopy(g);gg['witnesses'].reverse()
    for a in gg['witnesses']:a['masks'].reverse()
    receive_giant(gg);positive.append('equivalent witness/mask order')
    return {'status':'PASS_ALL_NEW_SEMANTIC_MUTATIONS_REJECTED','rejected_count':len(rejected),'rejected':rejected,'positive_count':len(positive),'positive':positive,'seconds':time.perf_counter()-t}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'logs/negative_tests.json'));a=ap.parse_args();out=run();Path(a.output).parent.mkdir(parents=True,exist_ok=True);Path(a.output).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k not in ['rejected','positive']}))
