#!/usr/bin/env python3
"""Clean replay for the C-R13 package; Python standard library only.
The receipt records byte integrity and actual execution, not formal proof acceptance.
"""
from __future__ import annotations
import argparse
import copy
import datetime as dt
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import time

sys.dont_write_bytecode = True
ROOT=Path(__file__).resolve().parents[1]

def sha(path:Path)->str:
    h=hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda:f.read(1<<20),b''):h.update(block)
    return h.hexdigest()

def check_manifest(name:str)->dict:
    p=ROOT/name
    if not p.exists():raise RuntimeError('missing manifest '+name)
    count=0
    for line in p.read_text(encoding='utf-8').splitlines():
        if not line:continue
        expected,rel=line.split('  ',1)
        q=(ROOT/rel).resolve()
        if not q.is_relative_to(ROOT):raise ValueError('unsafe manifest path')
        if sha(q)!=expected:raise AssertionError('hash mismatch: '+rel)
        count+=1
    return {'file':name,'entries_verified':count,'sha256':sha(p),'status':'PASS'}

def load_module(name:str,path:Path):
    spec=importlib.util.spec_from_file_location(name,path)
    if spec is None or spec.loader is None:raise RuntimeError('cannot load module')
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod);return mod

def run()->dict:
    start=dt.datetime.now(dt.timezone.utc).isoformat();tic=time.perf_counter()
    checks=[check_manifest('SHA256SUMS.txt')]
    if (ROOT/'FINAL_SHA256SUMS.txt').exists():checks.append(check_manifest('FINAL_SHA256SUMS.txt'))
    names=sorted(x.name for x in (ROOT/'certificates').iterdir() if x.is_file())
    if len(names)!=9:raise AssertionError('expected nine primary certificate files')
    original={n:(ROOT/'certificates'/n).read_bytes() for n in names}
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    commands=[]
    with tempfile.TemporaryDirectory(prefix='b699-c-r13-replay-') as tmp:
        base=Path(tmp)
        for script,sub in [('discover.py','producer'),('accept.py','receiver')]:
            cmd=[sys.executable,str(ROOT/'scripts'/script),'--out',str(base/sub)]
            if script=='accept.py':cmd+=['--check',str(ROOT/'certificates')]
            t=time.perf_counter()
            p=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True,env=env,timeout=180)
            commands.append({'program':script,'arguments':['--out','<fresh temporary directory>']+(['--check','certificates'] if script=='accept.py' else []),
                'exit_code':p.returncode,'seconds':round(time.perf_counter()-t,6),'stdout':p.stdout,'stderr':p.stderr})
            if p.returncode:raise RuntimeError(json.dumps(commands[-1],ensure_ascii=False))
        produced={n:(base/'producer'/n).read_bytes() for n in names}
        received={n:(base/'receiver'/n).read_bytes() for n in names}
        if set(p.name for p in (base/'producer').iterdir())!=set(names):raise AssertionError('producer file set')
        if set(p.name for p in (base/'receiver').iterdir())!=set(names):raise AssertionError('receiver file set')
        recv=load_module('r13_receiver',ROOT/'scripts/accept.py')
        recv.validate(received,original);recv.validate(received,produced)
        # Mutations are tested against the separately reconstructed receiver output.
        cases=[]
        def alter_json(label,filename,edit):
            obj=json.loads(original[filename]);edit(obj)
            altered=dict(original);altered[filename]=(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
            if altered[filename]==original[filename]:raise AssertionError('mutation was a no-op')
            try:recv.validate(received,altered)
            except AssertionError as e:cases.append({'mutation':label,'status':'REJECTED','reason':str(e)})
            else:raise AssertionError('mutation accepted: '+label)
        alter_json('inflate original-source target multiplicity','source_kernels.json',lambda x:x['P135']['required_source_powers'].__setitem__(1,4))
        alter_json('illegally divide by g^4','source_kernels.json',lambda x:x['P13'].__setitem__('g_division_power',4))
        alter_json('invent surviving sharp-ratio input','sharp_ratio_tail.json',lambda x:x.__setitem__('remaining_original_inputs',1))
        alter_json('erase real factor 3 in S1','row_constants.json',lambda x:x[-1].__setitem__('S1',1))
        alter_json('claim unexecuted h<=2048 endpoint','h1024.json',lambda x:x.__setitem__('h_max',2048))
        alter_json('alter complete menu count','h1024.json',lambda x:x.__setitem__('pre_square_menu_count',1117))
        alter_json('inflate actual prime exponent','original_examples.json',lambda x:x['six_class_family'][0]['witness'].__setitem__(2,x['six_class_family'][0]['witness'][2]+1))
        alter_json('call failed source1 a passed one','original_examples.json',lambda x:x['six_class_family'][0].__setitem__('first_source_passes',True))
        alter_json('claim historical net deletion','scope_state.json',lambda x:x.__setitem__('historical_net_deleted_domains',1))
        alter_json('claim global h bound','scope_state.json',lambda x:x.__setitem__('new_global_h_bound',True))
        alter_json('claim Lean execution','scope_state.json',lambda x:x.__setitem__('lean_run',True))
        lines=original['h1024_menus.jsonl'].splitlines();first=json.loads(lines[0]);first[3]+=1
        altered=dict(original);altered['h1024_menus.jsonl']=recv.encode(first)+b'\n'.join(lines[1:])+b'\n'
        try:recv.validate(received,altered)
        except AssertionError as e:cases.append({'mutation':'change original gcd in a raw menu','status':'REJECTED','reason':str(e)})
        else:raise AssertionError('raw-menu mutation accepted')
        consumer=load_module('r13_consumer',ROOT/'scripts/consumer.py')
        consumer_count=0
        for x in json.loads(original['original_examples.json'])['six_class_family']:
            out=consumer.sufficient_tests(x['n'],x['j'])
            if out['g']!=x['g'] or 'EPSILON_QUADRATIC' not in out['conditions_met']:raise AssertionError('consumer mismatch')
            w=consumer.verify_common_prime(x['n'],x['j'],7)
            if [w['v_p_choose_n_6'],w['v_p_choose_n_j']]!=x['witness'][3:]:raise AssertionError('witness mismatch')
            consumer_count+=1
        if consumer.sufficient_tests(162,70)['scope']!='OUTSIDE_STATED_SIX_CLASSES':raise AssertionError('scope not guarded')
        for args in [(12,6),(100,3),(100,51)]:
            try:consumer.sufficient_tests(*args)
            except ValueError:pass
            else:raise AssertionError('illegal original range accepted')
    return {'status':'PASS','round':13,'artifact_date':'2026-10-02','started_utc':start,
       'completed_utc':dt.datetime.now(dt.timezone.utc).isoformat(),'elapsed_seconds':round(time.perf_counter()-tic,6),
       'python':sys.version,'manifest_checks':checks,'commands':commands,
       'certificate_file_count':len(names),'certificates_byte_identical':True,
       'certificate_sha256':{n:hashlib.sha256(original[n]).hexdigest() for n in names},
       'tamper_tests':cases,'tamper_rejections':len(cases),
       'consumer_original_examples':consumer_count,'invalid_input_and_scope_guards':'PASS',
       'proof_status':'Author proof and same-author separated implementations; replay is not external mathematical review or Lean.',
       'repository_accessed':False,'lean_run':False,'historical_net_deleted_domains':0}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path,required=True);ap.add_argument('--zip',type=Path)
    a=ap.parse_args();target=a.receipt.resolve()
    if target.is_relative_to(ROOT):raise ValueError('write replay receipt OUTSIDE the frozen package')
    try:
        result=run()
        if a.zip is not None:
            z=a.zip.resolve();result['final_zip']={'filename':z.name,'bytes':z.stat().st_size,'sha256':sha(z)}
    except Exception as e:
        result={'status':'FAIL','error':type(e).__name__+': '+str(e),'round':13}
        target.parent.mkdir(parents=True,exist_ok=True);target.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
        raise
    target.parent.mkdir(parents=True,exist_ok=True);target.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'certificate_files':result['certificate_file_count'],
       'tamper_rejections':result['tamper_rejections'],'receipt':str(target)},ensure_ascii=False))
if __name__=='__main__':main()
