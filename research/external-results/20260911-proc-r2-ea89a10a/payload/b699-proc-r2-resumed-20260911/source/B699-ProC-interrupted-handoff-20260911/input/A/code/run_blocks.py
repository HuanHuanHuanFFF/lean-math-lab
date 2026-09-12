"""All six i10 constant-cube pairs, serial generation with atomic checkpoint files."""
from pathlib import Path
from itertools import combinations
import json,subprocess,sys,time,argparse,resource
R=Path(__file__).resolve().parents[1];PS=[2,3,5,7];D=9;C=2662;H=1048577

def cpp_check(d):
 head=[d[k] for k in ['p','q','source_height_bits','D','cube_factor','first_exponent','max_exponent','small_exponent_height_bits']]+[len(d['blocks'])]
 text=' '.join(map(str,head))+'\n'+''.join(f"{b['K']} {b['L']} {b['B']} {b['inverse_hex']}\n" for b in d['blocks'])
 z=subprocess.run([str(R/'bin/check_blocks')],input=text,text=True,capture_output=True,check=True)
 return json.loads(z.stdout)
def python_check(d):
 p,q=d['p'],d['q'];first,last,h=[d[k] for k in ['first_exponent','max_exponent','small_exponent_height_bits']]
 assert (d['source_height_bits'],d['D'],d['cube_factor'])==(H,D,C) and p in PS and q in PS and p<q
 assert first>=1 and first<=last and p**last<1<<H<=p**(last+1)
 assert (1<<h)>D and ((1<<h)-D)**2>C*p**(3*(first-1))
 nxt=first
 for b in d['blocks']:
  K,L,B=b['K'],b['L'],b['B'];assert K==nxt and L>=0 and B>=1 and K+L<=last
  P,Q=p**K,q**B;v=int(b['inverse_hex'],16)
  assert P>D and C*Q**3<=(P-D)**2 and 0<v<Q and P*v%Q==1
  least=min((shift*v)%Q or Q for shift in range(-D,D+1))
  assert least*least>C*p**(K+3*L)
  nxt=K+L+1
 assert nxt==last+1
 return dict(status='PASS_PYTHON_INTEGERS',p=p,q=q,blocks=len(d['blocks']),residue_checks=len(d['blocks'])*(2*D+1),small_height=h)

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--generate',action='store_true');ap.add_argument('--python',action='store_true');a=ap.parse_args()
 target=json.loads((R/'input/i10_target.json').read_text());assert target['height_bits']==H and target['primes']==PS and target['cube_bridge']['cube_factor']==C and target['cube_bridge']['start_n']==90
 dest=R/'evidence/blocks';dest.mkdir(exist_ok=True);st=time.monotonic();records=[]
 for p,q in combinations(PS,2):
  path=dest/f'block_{p}_{q}.json'
  if a.generate and not path.exists():
   temp=path.with_suffix('.tmp')
   with temp.open('w') as h:subprocess.run([str(R/'bin/generate_blocks'),str(p),str(q),str(H),str(D),str(C)],stdout=h,check=True)
   temp.replace(path)
  d=json.loads(path.read_text());assert (d['p'],d['q'],d['source_height_bits'],d['D'],d['cube_factor'])==(p,q,H,D,C)
  ts=time.monotonic();x=python_check(d) if a.python else cpp_check(d);x.update(check_seconds=time.monotonic()-ts,bytes=path.stat().st_size,first_exponent=d['first_exponent'],generation_seconds=d['elapsed_seconds'],generation_peak_rss_kib=d['peak_rss_kib']);records.append(x)
  print(json.dumps(x),flush=True)
  (R/'evidence'/('blocks_python_progress.json' if a.python else 'blocks_cpp_progress.json')).write_text(json.dumps(dict(status='PARTIAL_UNTIL_ALL_SIX_PAIRS',records=records),indent=2)+'\n')
 assert {p.name for p in dest.glob('*.json')}=={f'block_{p}_{q}.json' for p,q in combinations(PS,2)}
 # n < 90 is a separately retained small-input branch, bounded by 2^7.
 height=max(7,*(x['small_height'] for x in records))
 out=dict(status='PASS_ALL_SIX_PAIRS_PYTHON' if a.python else 'PASS_ALL_SIX_PAIRS_CPP',source_height_bits=H,destination_height_bits=height,cube_factor=C,D=D,pairs=6,blocks=sum(x['blocks'] for x in records),residue_checks=sum(x['residue_checks'] for x in records),certificate_bytes=sum(x['bytes'] for x in records),records=records,seconds=time.monotonic()-st,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (R/'evidence'/('blocks_python_check.json' if a.python else 'blocks_summary.json')).write_text(json.dumps(out,indent=2)+'\n');print('SUMMARY',json.dumps({k:v for k,v in out.items() if k!='records'}),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
