#!/usr/bin/env python3
"""Deterministic, offline complete reconstruction and independent reception.
Stages permit a stopped tool call to be resumed explicitly; a slice is not a full PASS.
No Lean, repository, network, or CAS is used. Python 3.10+ and a C++17 compiler suffice.
"""
from __future__ import annotations
import argparse,hashlib,importlib.util,itertools,json,os,platform,resource,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
CASES=json.loads((ROOT/'inputs/cases.json').read_text())
DIMS={1615:3,1619:1,1620:4,1622:4,1623:5,1641:2}
RANGES=[(a,a+2000) for a in range(0,14000,2000)]+[(14000,16105)]
assert len(RANGES)==8 and RANGES[0][0]==0 and RANGES[-1][1]==16105
assert all(a[1]==b[0] for a,b in zip(RANGES,RANGES[1:]))
EXCEPTIONS=[(1,5,5,8,10),(1,9,7,6,8)]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,z):
 p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(z,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
def run(cmd,out,label):
 t=time.monotonic();r=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 if r.returncode:raise RuntimeError((label,r.returncode,r.stdout,r.stderr))
 dump(out/'runs'/f'{label}.json',dict(command=[str(x)for x in cmd],exit_code=r.returncode,elapsed_seconds=time.monotonic()-t))
 return r.stdout

def init(out):
 out.mkdir(parents=True,exist_ok=False)
 for x in ['bin','logs','runs','certificates/modules','certificates/covers','certificates/extensions']:(out/x).mkdir(parents=True)
 resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 for src,name in [('generate_module.cpp','module'),('generate_factor_cover.cpp','factors'),('generate_extension_cover.cpp','extension'),('check_coefficients_and_prime_cover.cpp','checker')]:
  run(['g++','-O3','-march=native','-std=c++17','-DPRIME=11',ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
 hashes={str(p.relative_to(ROOT)):sha(p)for directory in ['code','inputs']for p in (ROOT/directory).rglob('*')if p.is_file()}
 dump(out/'FROZEN_RUN_INPUTS.json',hashes)
 dump(out/'environment.json',dict(python=sys.version,platform=platform.platform(),compiler=subprocess.check_output(['g++','--version'],text=True).splitlines()[0]))

def guard(out):
 for rel,h in json.loads((out/'FROZEN_RUN_INPUTS.json').read_text()).items():assert sha(ROOT/rel)==h,rel

def read_basis(path):
 ls=path.read_text().splitlines();a=ls[0].split();assert a[0]=='p' and int(a[1])==11;h,dim=int(a[3]),int(a[5]);pos=1;vectors=[]
 for k in range(dim):
  assert ls[pos].startswith('BASIS ');pos+=1;flat=[]
  for b in range(h+1):
   bb,d,*c=map(int,ls[pos].split());pos+=1;assert bb==b and len(c)==d+1 and d<=2*h-2*b
   flat.extend(c+[0]*(2*h-2*b+1-len(c)))
  vectors.append(flat)
 assert pos==len(ls);return h,vectors

def rref(a):
 a=[x[:]for x in a];row=0
 for col in range(len(a[0])):
  found=next((i for i in range(row,len(a))if a[i][col]),None)
  if found is None:continue
  a[row],a[found]=a[found],a[row];inv=pow(a[row][col],-1,11);a[row]=[(x*inv)%11 for x in a[row]]
  for i in range(len(a)):
   if i!=row and a[i][col]:
    c=a[i][col];a[i]=[(x-c*y)%11 for x,y in zip(a[i],a[row])]
  row+=1
  if row==len(a):break
 assert row==len(a);return a

def modules(out):
 guard(out);records=[]
 for st in CASES:
  i,h,v=st['index'],st['h'],st['v'];spaces=[]
  for rev,name in [(0,'forward'),(1,'reverse')]:
   target=out/f'certificates/modules/state_{i}_{name}.txt'
   run([out/'bin/module',h,*v,0,0,0,0,target,rev],out,f'module_{i}_{name}')
   ls=target.read_text().splitlines();J=int(ls[0].split()[-1]);w=list(map(int,ls[-1].split()[1:]));nu=sum(max(0,2*h-x+1)for x in w)
   assert len(w)==h+1 and nu==DIMS[i] and min(w)==2*h and w[h]==2*h
   nonzero=0;ww=list(range(0,2*h+1,2))
   for n,line in enumerate(ls[1:J+1]):
    rec=list(map(int,line.split()));assert rec[0]==n
    if rec[1]==-1:assert len(rec)==2;continue
    k,b,d,weight=rec;assert 0<d<11 and weight==ww[b];ww[b]+=1;nonzero+=1
   assert ww==w and sum(w)==h*(h+1)+nonzero
   hh,vec=read_basis(Path(str(target)+'.basis'));assert hh==h and len(vec)==nu
   spaces.append(rref(vec));records.append(dict(index=i,h=h,order=name,constraints=J,variables=(h+1)**2,rank=(h+1)**2-nu,dimension=nu,trace_sha256=sha(target),basis_sha256=sha(Path(str(target)+'.basis'))))
  assert spaces[0]==spaces[1],('kernel-space mismatch',i)
 dump(out/'certificates/module_receipts.json',records)
 print('PASS_COMPLETE_KERNELS_AND_REVERSED_ORDER_SPANS',flush=True)

def records(path):
 ls=path.read_text().splitlines();pos=1;out=[]
 while pos<len(ls):
  t=ls[pos].split();assert t[0]=='POINT';a=t.index('AT');nb=int(t[-1]);chunk=ls[pos:pos+nb+1];assert len(chunk)==nb+1
  out.append(dict(point=tuple(map(int,t[1:a])),N=int(t[a+1]),bound=int(t[a+3]),degree=int(t[a+5]),blocks=nb,lines=chunk));pos+=nb+1
 return ls[0],out

def filter_prime(src,dst):
 head,rr=records(src);kept=[r for r in rr if r['bound']<8]
 dst.write_text('\n'.join([head]+[line for r in kept for line in r['lines']])+'\n')
 return [r['point']for r in rr if r['bound']>=8]

def covers(out,start=0,stop=8):
 guard(out)
 if start==0:
  for st in CASES:
   i=st['index']
   if i==1623:continue
   run([out/'bin/factors',out/f'certificates/modules/state_{i}_forward.txt',11,out/f'certificates/covers/state_{i}_p11.txt',8],out,f'cover_{i}')
 for a,b in RANGES[start:stop]:
  label=f'{a:05d}_{b:05d}';src=out/f'certificates/covers/state_1623_{label}.txt';dst=out/f'certificates/covers/accepted_1623_{label}.txt'
  run([out/'bin/factors',out/'certificates/modules/state_1623_forward.txt',11,src,8,a,b],out,'cover_1623_'+label)
  filter_prime(src,dst);print('GENERATED_COVER_SLICE',label,flush=True)

def extensions(out):
 guard(out)
 for label,point in zip(('a','b'),EXCEPTIONS):
  run([out/'bin/extension',out/'certificates/modules/state_1623_forward.txt.basis',','.join(map(str,point)),out/f'certificates/extensions/state_1623_{label}.txt'],out,'extension_'+label)
 print('PASS_TWO_EXTENSION_WITNESSES',flush=True)

def check(out):
 guard(out)
 for st in CASES:
  i=st['index'];base=out/f'certificates/modules/state_{i}_forward.txt.basis';cmd=[out/'bin/checker',base,*st['v']]
  if i==1623:
   for a,b in RANGES:
    label=f'{a:05d}_{b:05d}';print(run(cmd+['--partial',out/f'certificates/covers/accepted_1623_{label}.txt'],out,'check_1623_'+label).strip(),flush=True)
  else:print(run(cmd+[out/f'certificates/covers/state_{i}_p11.txt'],out,f'check_{i}').strip(),flush=True)
 stdout=run([sys.executable,ROOT/'code/check_extension.py',out/'certificates/modules/state_1623_forward.txt.basis',out/'certificates/extensions/state_1623_a.txt',out/'certificates/extensions/state_1623_b.txt'],out,'check_extensions')
 ext=json.loads(stdout);assert ext['status']=='PASS_INDEPENDENT_EXTENSION_COVERS';ext.pop('seconds',None);dump(out/'certificates/extension_receipt.json',ext)


def finish(out):
 guard(out);allstats=[];total=0;blocks=0
 for st in CASES:
  i=st['index'];dim=DIMS[i];paths=[out/f'certificates/covers/state_{i}_p11.txt'] if i!=1623 else [out/f'certificates/covers/accepted_1623_{a:05d}_{b:05d}.txt'for a,b in RANGES]+[out/f'certificates/extensions/state_1623_{l}.txt'for l in ('a','b')]
  seen={};hist={};bc=0
  for path in paths:
   _,rr=records(path)
   for r in rr:
    v=r['point'];assert len(v)==dim and all(0<=x<11 for x in v);lead=next(x for x in v if x);assert lead==1
    assert v not in seen and r['bound']<8;seen[v]=r;hist[r['bound']]=hist.get(r['bound'],0)+1;bc+=r['blocks']
  expected=set()
  for lead in range(dim):
   for tail in itertools.product(range(11),repeat=dim-lead-1):expected.add((0,)*lead+(1,)+tail)
  assert set(seen)==expected
  allstats.append(dict(index=i,h=st['h'],dimension_mod_11=dim,projective_directions=len(seen),maximum_bound=max(hist),bound_histogram=hist,certified_factor_blocks=bc));total+=len(seen);blocks+=bc
 rejected=[]
 for a,b in RANGES:
  _,rr=records(out/f'certificates/covers/state_1623_{a:05d}_{b:05d}.txt');rejected.extend(r['point']for r in rr if r['bound']>=8)
 assert sorted(rejected)==sorted(EXCEPTIONS)
 spec=importlib.util.spec_from_file_location('frozen_model',ROOT/'inputs/frozen_model.py');model=importlib.util.module_from_spec(spec);spec.loader.exec_module(model)
 states=model.all_states();old=model.read_frontier(ROOT/'inputs/h109_frontier.tsv');killed=[st['index']for st in CASES];assert len(old)==233 and all(i in old for i in killed)
 for st in CASES:assert states[st['index']]['h']==st['h'] and states[st['index']]['v']==st['v']
 # Only six explicitly certified states are removed; no hidden scan exclusions.
 final=[i for i in old if i not in killed];assert len(final)==227 and min(states[i]['h'] for i in final)==111
 text='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'+''.join(f'{i}\t{states[i]["h"]}\t0\t'+','.join(map(str,states[i]['v']))+'\n'for i in final)
 (out/'certificates/final_E0_frontier.tsv').write_text(text)
 base_checks=sum(len(model.jets(states[st['index']]))*DIMS[st['index']]for st in CASES)
 assert total==19179 and blocks==83250 and base_checks==234715
 result=dict(status='PASS_PROJECTIVE_FACTOR_COVER_H111',input_E0_states=233,eliminated_states=killed,remaining_E0_states=227,minimum_equality_h=111,maximum_vertical_sum=83,same_fixed_G_cover_upper_bound=8,COVER7_proved=False,original_NC9_finite_bound=False,original_smaller_nj_descent=False,
  field_characteristic=11,extension_field_size=121,extension_modulus='u^2+1',complete_projective_directions=total,prime_field_witnesses=19177,extension_field_witnesses=2,certified_equal_degree_blocks=blocks,unique_full_coefficient_jet_checks=base_checks,complete_modular_basis_vectors=sum(DIMS.values()),kernel_basis_orders=['forward','reverse'],states=allstats,
  external_independent_math_review=False,Lean=False,repository_writes=False,batch=dict(shared_authorization_total=25,this_session_consumed_in_this_batch=1,global_shared_consumption='not observed; no claim about other three sessions'))
 dump(out/'certificates/summary.json',result);print(result['status'],flush=True)


def compare(out):
 pairs=[]
 for src in sorted((ROOT/'certificates').rglob('*')):
  if not src.is_file():continue
  rel=src.relative_to(ROOT);dst=out/rel
  assert dst.is_file(),str(rel);assert src.read_bytes()==dst.read_bytes(),('byte mismatch',str(rel));pairs.append(dict(path=str(rel),sha256=sha(dst)))
 dump(out/'BYTE_COMPARISON.json',dict(status='PASS_BYTE_IDENTICAL_CERTIFICATE_REPLAY',count=len(pairs),files=pairs))
 print('PASS_BYTE_IDENTICAL_CERTIFICATE_REPLAY',len(pairs),flush=True)


def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--stage',choices=['all','init','modules','covers','extensions','check','finish','compare'],default='all');ap.add_argument('--start',type=int,default=0);ap.add_argument('--stop',type=int,default=8);ap.add_argument('--compare',action='store_true');a=ap.parse_args();resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 if a.stage in ['all','init']:init(a.out)
 if a.stage in ['all','modules']:modules(a.out)
 if a.stage in ['all','covers']:covers(a.out,a.start,a.stop)
 if a.stage in ['all','extensions']:extensions(a.out)
 if a.stage in ['all','check']:check(a.out)
 if a.stage in ['all','finish']:finish(a.out)
 if a.stage=='compare' or (a.stage=='all' and a.compare):compare(a.out)
if __name__=='__main__':main()
