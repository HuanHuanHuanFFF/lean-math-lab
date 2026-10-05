#!/usr/bin/env python3
"""Deliberately false claims / corrupted certificates must be rejected."""
from __future__ import annotations
import argparse,json,os,shutil,subprocess,sys,tempfile
from pathlib import Path
from exact import need,val,from_vector

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);p.add_argument('--output',type=Path,required=True);a=p.parse_args();root=a.root.resolve()
    out=[];env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
    with tempfile.TemporaryDirectory(prefix='b699-c-r8-negative-') as td:
        t=Path(td)
        # An output number changed; full regeneration must disagree.
        cp=t/'certificates';shutil.copytree(root/'certificates',cp)
        z=json.loads((cp/'RESIDUAL_TEN.json').read_text());z['q2_absolute_bound']=132
        (cp/'RESIDUAL_TEN.json').write_text(json.dumps(z))
        run=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),'--output',str(t/'gen1'),'--check',str(cp)],capture_output=True,text=True,env=env,timeout=45)
        need(run.returncode!=0 and 'JSON differs' in run.stderr,'altered q2 certificate accepted')
        out.append({'test':'tampered residual q2 bound 133 -> 132','rejected':True,'stderr_tail':run.stderr.splitlines()[-1]})
        # Change one source polynomial coefficient and keep the same claimed source points.
        fake=t/'fake';shutil.copytree(root,fake)
        q=json.loads((fake/'inputs/CUBIC_WITNESSES.json').read_text());q['records'][0]['basis_vector'][0]+=1
        (fake/'inputs/CUBIC_WITNESSES.json').write_text(json.dumps(q))
        run=subprocess.run([sys.executable,str(fake/'scripts/verify.py'),'--root',str(fake),'--output',str(t/'gen2')],capture_output=True,text=True,env=env,timeout=45)
        need(run.returncode!=0 and 'does not vanish' in run.stderr,'false source cubic accepted')
        out.append({'test':'tampered cubic coefficient / lost real source point','rejected':True,'stderr_tail':run.stderr.splitlines()[-1]})
        shutil.copy2(root/'inputs/CUBIC_WITNESSES.json',fake/'inputs/CUBIC_WITNESSES.json')
        z=json.loads((fake/'inputs/BFT_CONTRACT.json').read_text());z['lambdas']['3,5']=[1,4]
        (fake/'inputs/BFT_CONTRACT.json').write_text(json.dumps(z))
        run=subprocess.run([sys.executable,str(fake/'scripts/verify.py'),'--root',str(fake),'--output',str(t/'gen3')],capture_output=True,text=True,env=env,timeout=45)
        need(run.returncode!=0 and 'lambda contract changed' in run.stderr,'unsupported publication exponent accepted')
        out.append({'test':'unsupported BFT .216 -> .25 replacement','rejected':True,'stderr_tail':run.stderr.splitlines()[-1]})
    z=json.loads((root/'certificates/COMPLETE_POWER_AND_FAILURES.json').read_text())['radical_is_not_a_substitute']
    try:need(z['polynomial_value']%49==0,'first7 layer does not imply full49 layer')
    except AssertionError as e:out.append({'test':'radical7 substituted for actual49','rejected':True,'reason':str(e),'example':z})
    else:raise AssertionError('radical negative control did not fail')
    # Both powers are actual complete powers at n=280, but P*Q<n.
    n=280;P=8;Q=9;minimum=P*pow(P,-1,Q)
    need(n%P==0 and n%(2*P)!=0 and (n-1)%Q==0 and (n-1)%(3*Q)!=0,'CRT counterexample not complete')
    try:need(n==minimum,'minimum CRT representative loses real lifts without PQ>n')
    except AssertionError as e:out.append({'test':'discard CRT lifts before product bound','rejected':True,'reason':str(e),'n':n,'P':P,'Q':Q,'minimal_representative':minimum,'not_an_NC_claim':True})
    else:raise AssertionError('CRT negative control did not fail')
    inputs=json.loads((root/'inputs/CUBIC_WITNESSES.json').read_text())['records']
    try:need(all(r['proof']['type']!='open_zero_branch' for r in inputs),'ten zero branches remain unproved')
    except AssertionError as e:out.append({'test':'claim all 792 source cubics proved nonzero','rejected':True,'reason':str(e)})
    else:raise AssertionError('residual negative control did not fail')
    summary={'status':'PASS','actual_negative_tests':len(out),'all_rejected':all(r['rejected'] for r in out),'tests':out,
      'user_payload_modified':False,'network_used':False,'Lean_run':False,'repository_operations':False}
    text=json.dumps(summary,ensure_ascii=False,sort_keys=True,indent=2)+'\n';a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(text);print(text,end='')
if __name__=='__main__':main()
