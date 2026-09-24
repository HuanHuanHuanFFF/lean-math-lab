#!/usr/bin/env python3
from pathlib import Path
import subprocess, sys, json, copy, tempfile
ROOT=Path(__file__).resolve().parents[1]
CERT=ROOT/'certificates'/'round9.json'
def run(script, cert, expect=True):
    p=subprocess.run([sys.executable,str(ROOT/'src'/script),str(cert)],capture_output=True,text=True)
    ok=p.returncode==0
    if ok!=expect: raise SystemExit(f'{script} unexpected result: rc={p.returncode}\n{p.stdout}\n{p.stderr}')
    return {'script':script,'rc':p.returncode,'stdout':p.stdout.strip(),'stderr':p.stderr.strip()}
def main():
    rep={'good':[],'bad':[]}
    for s in ['check_a.py','check_b.py']: rep['good'].append(run(s,CERT,True))
    base=json.loads(CERT.read_text())
    mutations=[]
    x=copy.deepcopy(base); x['F5_coeff_ascending'][4]+=1; mutations.append(('bad_F',x))
    x=copy.deepcopy(base); x['upper_gap_coeff_ascending'][0]-=1; mutations.append(('bad_gap',x))
    x=copy.deepcopy(base); x['residual_exponent']['offset']=7493; mutations.append(('bad_exp',x))
    x=copy.deepcopy(base); x['lower_gap_coeff_ascending'][0]=0; mutations.append(('bad_positive',x))
    with tempfile.TemporaryDirectory() as td:
        for name,obj in mutations:
            p=Path(td)/f'{name}.json'; p.write_text(json.dumps(obj))
            outcomes=[]
            for s in ['check_a.py','check_b.py']:
                q=subprocess.run([sys.executable,str(ROOT/'src'/s),str(p)],capture_output=True,text=True)
                outcomes.append(q.returncode!=0)
            if not all(outcomes): raise SystemExit(f'bad certificate not rejected by both: {name} {outcomes}')
            rep['bad'].append({'name':name,'rejected_by_both':True})
    out=ROOT/'outputs'/'replay.json'; out.write_text(json.dumps(rep,indent=2)+'\n')
    print('PASS replay; 4 bad certificates rejected by both checkers')
if __name__=='__main__': main()
