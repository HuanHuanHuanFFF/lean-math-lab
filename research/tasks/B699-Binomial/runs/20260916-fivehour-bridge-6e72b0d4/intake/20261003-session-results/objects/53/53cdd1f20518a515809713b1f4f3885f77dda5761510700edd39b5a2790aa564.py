#!/usr/bin/env python3
"""Optional certificate rediscovery using SymPy and an installed Singular.
This is not needed by the independent standard-library replay.
All generated files are kept outside the immutable evidence package.
"""
from pathlib import Path
import argparse,json,os,shutil,subprocess,sys,tempfile,zipfile
ROOT=Path(__file__).resolve().parents[1]
def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--work-dir',type=Path,required=True)
    ap.add_argument('--singular',required=True,help='path to an installed Singular executable')
    ap.add_argument('--timeout',type=int,default=600)
    args=ap.parse_args();W=args.work_dir.resolve()
    if W==ROOT or ROOT in W.parents:raise ValueError('work directory must be outside the package')
    W.mkdir(parents=True,exist_ok=True);env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',REG3_WORK_DIR=str(W))
    with zipfile.ZipFile(ROOT/'inputs/R6_EVIDENCE.zip')as z:
        for name in z.namelist():
            if Path(name).is_absolute()or'..'in Path(name).parts:raise ValueError('unsafe member')
        z.extractall(W/'input_r6')
    for name in ['paramH.py','H_terminal.py','assemble_certs.py']:
        text=(ROOT/'discovery'/name).read_text().replace("W=Path('/mnt/data/r7_work')","W=Path(__import__('os').environ['REG3_WORK_DIR'])")
        (W/name).write_text(text)
    text=(ROOT/'discovery/Hresult.sing').read_text().replace('/mnt/data/r7_work',str(W))
    (W/'Hresult.sing').write_text(text)
    def run(cmd,label):
        q=subprocess.run(cmd,cwd=W,env=env,capture_output=True,text=True,timeout=args.timeout)
        (W/(label+'.stdout')).write_text(q.stdout);(W/(label+'.stderr')).write_text(q.stderr)
        if q.returncode:raise RuntimeError(label+' failed; inspect logs')
    run([sys.executable,'-B',str(W/'paramH.py')],'parameterize')
    run([args.singular,'-q','-t',str(W/'Hresult.sing')],'resultants')
    for n in ['H_E4.txt','H_E0.txt','H_gcd.txt']:
        if not (W/n).is_file()or(W/n).stat().st_size<10:raise RuntimeError('missing resultant output '+n)
    run([sys.executable,'-B',str(W/'H_terminal.py')],'residue_lifts')
    run([sys.executable,'-B',str(W/'assemble_certs.py')],'assemble')
    with tempfile.TemporaryDirectory(prefix='reg3-regeneration-verify-')as td:
        tmp=Path(td)/ROOT.name;shutil.copytree(ROOT,tmp)
        for n in ['H_data.json','H_lifted_2.json','H_lifted_4.json']:shutil.copy2(W/n,tmp/'certificates'/n)
        q=subprocess.run([sys.executable,'-B',str(tmp/'code/verify.py')],cwd=tmp,env=env,capture_output=True,text=True,timeout=args.timeout)
        if q.returncode:raise RuntimeError('regenerated exact identities failed: '+q.stderr)
        d=json.loads(q.stdout)
        if d.get('status')!='PASS':raise RuntimeError('regeneration not verified')
        (W/'REGENERATION_VERIFY.json').write_text(q.stdout)
    print(json.dumps({'status':'PASS','claim':'regenerated branch certificates verified; no global UNIT','work_directory':str(W)},indent=2))
if __name__=='__main__':main()
