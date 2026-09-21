"""Replay exact certificates with two separately implemented algorithms. No network, no Lean."""
import argparse,json,copy,hashlib,subprocess,sys,tempfile,time
from pathlib import Path
import check_a,check_b
ROOT=Path(__file__).resolve().parents[1]

def mutations(c):
    tests=[]
    def put(name,path,value):
        q=copy.deepcopy(c);z=q
        for p in path[:-1]:z=z[p]
        z[path[-1]]=value;tests.append((name,q))
    put('missing_ode_case',['ode_cases'],c['ode_cases'][:2])
    put('wrong_remainder_coefficient',['ode_cases',0,'remainder_0','constant',0],'46')
    put('wrong_eliminant_scalar',['ode_cases',1,'eliminant','scalar'],'65')
    put('extra_unproved_ratio',['ode_cases',2,'ratio'],'-5/4')
    put('zero_quotient',['ode_cases',0,'ell_value'],'0')
    put('wrong_canonical_map',['ode_cases',2,'canonical_affine',0],'1/15')
    put('wrong_template_factor',['ode_cases',0,'V',0],'1')
    put('wrong_shift_sign',['canonical_shift_minus_one',2],'12')
    put('lowered_quartic_threshold',['statements','quartic_exponent'],11)
    put('necessary_as_sufficient',['statements','NC3_sufficiency'],True)
    put('composite_working_base',['applications',0,'p'],9)
    put('truncated_full_3_power',['applications',0,'source_exponent'],52)
    put('wrong_n_recovery',['applications',0,'n'],str(int(c['applications'][0]['n'])+1))
    put('negative_digit',['applications',1,'coefficients',1],-1)
    put('wrong_constant',['applications',2,'coefficients',0],1)
    put('missing_leading_degree',['applications',3,'coefficients',4],0)
    put('mislabel_old_parity_exit',['applications',5,'parity_exit'],False)
    put('wrong_boundary_factor',['applications',7,'extra','V',4],4)
    put('wrong_source_carry_layer',['cubic_carries',0,'layers'],[1,2,3])
    put('weak_model_as_NC3',['weak_model','NC3'],True)
    put('wrong_actual_witness',['weak_model','common_valuations',1],0)
    return tests

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--output-dir',required=True);pa.add_argument('--regenerate',action='store_true');args=pa.parse_args();out=Path(args.output_dir)
    if out.exists():raise SystemExit('Choose a new output directory; frozen outputs are never overwritten.')
    out.mkdir(parents=True);cert=ROOT/'certificates/round7.json';c=json.loads(cert.read_text());start=time.monotonic();result={'A':check_a.verify(c),'B':check_b.verify(c)}
    rejection=[]
    for name,bad in mutations(c):
        item={'test':name}
        for tag,checker in [('A',check_a),('B',check_b)]:
            try:checker.verify(bad)
            except (ValueError,KeyError,TypeError,ZeroDivisionError) as e:item[tag]={'rejected':True,'reason':str(e)}
            else:raise RuntimeError(tag+' accepted bad certificate: '+name)
        rejection.append(item)
    result['bad_certificate_rejections']=rejection
    result['certificate_sha256']=hashlib.sha256(cert.read_bytes()).hexdigest()
    if args.regenerate:
        regenerated=out/'regenerated.json'
        subprocess.run([sys.executable,str(ROOT/'src/generate.py'),'--output',str(regenerated)],check=True,capture_output=True,text=True)
        if regenerated.read_bytes()!=cert.read_bytes():raise RuntimeError('regenerated certificate differs')
        result['regeneration']='BYTE_IDENTICAL'
    result['elapsed_seconds']=round(time.monotonic()-start,3)
    (out/'replay.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'A':result['A'],'B':result['B'],'bad_certificates_rejected_by_both':len(rejection),'regeneration':result.get('regeneration','not requested'),'certificate_sha256':result['certificate_sha256'],'elapsed_seconds':result['elapsed_seconds']},indent=2))
if __name__=='__main__':main()
