#!/usr/bin/env python3
"""Optional portable projection regeneration (SymPy + C++17 required).
Usage: python -B code/regenerate_projection.py --output /absolute/new/directory
Reconstructs all three full INTEGER resultants from complete modular grids,
then obtains the advertised Ui by exact polynomial division. Replay does not
call this discovery program and does not require SymPy.
"""
from __future__ import annotations
import argparse,hashlib,json,math,os,subprocess
from pathlib import Path
from sympy.polys.rings import ring
from sympy import QQ
ROOT=Path(__file__).resolve().parents[1]
def terms(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
def serial(ts):
 out=[str(len(ts))]
 for m,c in ts:out.append(' '.join(map(str,list(m[:3])+[c])))
 return '\n'.join(out)+'\n'
def main():
 ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output',type=Path,required=True);args=ap.parse_args();out=args.output.resolve()
 if ROOT==out or ROOT in out.parents:ap.error('Use an output directory outside the immutable evidence package.')
 if out.exists() and any(out.iterdir()):ap.error('Output directory must be absent or empty.')
 out.mkdir(parents=True,exist_ok=True);exe=out/'generator'
 subprocess.run([os.environ.get('CXX','g++'),'-O2','-std=c++17',str(ROOT/'code/discovery_grid_resultant.cpp'),'-o',str(exe)],check=True)
 G=json.loads((ROOT/'inputs/generic.json').read_text());rec=json.loads((ROOT/'certificates/projections.json').read_text());bf=json.loads((ROOT/'certificates/branch_factors.json').read_text())
 R,u,y=ring('u,y',QQ);J=u*u+u*y*y-3*u*y+y;A=8*u**3*y-5*(u-1)**2*(y-1)**3
 B=R.from_dict({tuple(m):QQ(c) for m,c in next(z['terms'] for z in bf['KN']['factors'] if z['degrees']==[9,10])})
 for i in [4,3,2]:
  rr=rec[str(i)];du,dy=rr['degree_bounds'];data={};M=1
  inp=serial(G['B5'])+serial(G['low'][str(i)]['stripped'])
  for p in rr['primes']:
   proc=subprocess.run([str(exe),str(p),str(du),str(dy)],input=inp,text=True,capture_output=True,check=True)
   residues={tuple(map(int,line.split()[:2])):int(line.split()[2]) for line in proc.stdout.splitlines()}
   iv=pow(M,-1,p)
   for m in set(data)|set(residues):data[m]=data.get(m,0)+M*((residues.get(m,0)-data.get(m,0))*iv%p)
   M*=p
  coeffs={m:v-M if 2*v>M else v for m,v in data.items()};coeffs={m:v for m,v in coeffs.items() if v}
  E=R.from_dict({m:QQ(v) for m,v in coeffs.items()});ex=dict(rr['known_factors'])
  divisor=QQ(rr['scalar'])*u**ex['u']*y**ex['y']*(u-1)**ex['u-1']*(y-1)**ex['y-1']*J*A*B**8
  U=E.exquo(divisor);assert all(c.denominator==1 for c in U.values())
  target=json.loads((ROOT/f'certificates/U{i}_exact.json').read_text())['terms'];expected=R.from_dict({tuple(m):QQ(c) for m,c in target});assert U==expected
  (out/f'E{i}.json').write_text(json.dumps({'terms':terms(E),'CRT_modulus':str(M)},separators=(',',':')))
  (out/f'U{i}.json').write_text(json.dumps({'terms':terms(U)},separators=(',',':')))
  print(json.dumps({'index':i,'status':'PASS','exact_U_terms':len(U),'E_terms':len(E)}),flush=True)
if __name__=='__main__':main()
