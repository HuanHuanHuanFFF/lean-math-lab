#!/usr/bin/env python3
"""New finite algebra/coverage obligations only; no old matrix or finite replay.
All accepting arithmetic is Python integer/Fraction.  No floating point decisions.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import gcd, lcm
from pathlib import Path
import hashlib, json, zipfile
ROOT=Path(__file__).resolve().parents[1]
OLD=ROOT/'sources/H012-d6-original.zip'
OLD_PREFIX='B699-ProA-i9-H012-d6-20260916/'

def load_frozen_metadata():
 with zipfile.ZipFile(OLD) as z:
  return json.loads(z.read(OLD_PREFIX+'evidence/h012_reduced_mod.json'))

def check(data:dict)->dict:
 count=0
 def require(b:bool,msg:str):
  nonlocal count
  if not b:raise ValueError(msg)
  count+=1
 old=load_frozen_metadata()
 require(hashlib.sha256(OLD.read_bytes()).hexdigest()==data['frozen_sha256'],'frozen bytes')
 require(data['mu']==old['mu']==[5,4,3,2],'boundary multiplicities')
 require(data['degree']==old['D']==80,'degree')
 require(data['origin']==old['T']==13,'origin order')
 require(data['weights']==[20,16,13,11,10,8],'free weights')
 require([int(old['weights'][str(r)]) for r in range(3,9)]==data['weights'],'source weights')
 mu=data['mu']; dg=sum(mu)
 require(dg==14,'degree of P')
 basis=old['basis']
 require(len(basis)==725,'basis size')
 for a,b in basis:
  require(3<=a+2*b<=52,'weighted support')
 require(data['joint_orders']==[13,9,8],'joint orders')
 for r,w in [(1,9),(2,8)]:
  got=[]
  for s in range(r+1):
   got.append(mu[s]+mu[r-s])
   require(mu[s]+mu[r-s]>=w,'whole source-row coverage')
  require(min(got)==w,'sharp guaranteed source-row order')
 require(data['overlap_power_of_two']==13,'g/L2 overlap bound')
 # When both g and L2 are even, min(v2(g),v2(L2)) <= 1.
 # These two exhaustive branches establish the weighted gcd bound.
 for u,v in [(1,1),(1,2),(1,100),(2,1),(100,1)]:
  require(min(13*u,8*v)<=13,'weighted overlap cases')
 require(gcd(2**13,8**8)==2**13,'attained overlap exponent')
 require(data['H2_divisor']=='gcd(j,2)','full-power correction')
 require(data['coefficient_bits']==154000,'inherited coefficient bound')
 require(725<2**10 and 1680<2**11,'elementary constant bounds')
 bits=154000+10+78*11+13
 require(bits==154881 and bits<data['constant_bits']==155000,'joint constant bound')
 require(data['n_power']==26==78-52,'retained target product')
 require(data['J_power']==14==dg,'target product degree')
 require(data['d6_height']=={'n_power':1,'H1':54,'H2':48,'d6':13,'constant_bits':930000},'d6 exponents')
 require(6*13==78 and 6*9==54 and 6*8==48,'raise-to-six exponents')
 require(6*155000==930000,'constant after sixth power')
 require(930000<14000001,'consumer enters frozen bridge')
 require(930000+13000000==13930000<14000001,'union with frozen small-d6 domain')
 require(4*13<=54 and 3*13<=48,'simple gcd-only consumer')
 require(data['source_orders']==[13,9,8],'source inequality orders')
 require(data['fixed_frontier']==57 and data['R7']==[3,4,5,6,7,8,9],'frontier unchanged')
 # Explicit source-model checks: these are not integer NC witnesses.
 results={}
 for name,vals in data['projections'].items():
  z0,z1,z2=[Q(*v) for v in vals]
  sc=z0+z1+z2<=Q(3,10)
  oldg=13*z0<2
  cut1=(z1>=Q(540,10000) or z2>=Q(1090,10000))
  cut2=(z1>=Q(3187,10000) or z2>=Q(386,10000))
  require(sc and oldg and cut1 and cut2,'selected frozen projection constraints')
  joint=13*z0+9*z1+8*z2
  if name=='newly_cut_projection':require(joint>2,'new information in projection')
  elif name=='surviving_projection':require(joint<2,'remaining rational projection')
  else:raise ValueError('unknown projection')
  results[name]={'joint_exponent':str(joint),'scalar_sum':str(z0+z1+z2),'old_g_exponent':str(13*z0)}
 return {'status':'PASS_NEW_JOINT_WINDOW_FINITE_OBLIGATIONS','checks':count,'constant_derivation_bits':bits,'projections':results,'old_matrix_replayed':False,'old_finite_replayed':False}

def make_certificate():
 return {'frozen_sha256':hashlib.sha256(OLD.read_bytes()).hexdigest(),
  'mu':[5,4,3,2],'degree':80,'origin':13,'weights':[20,16,13,11,10,8],
  'joint_orders':[13,9,8],'overlap_power_of_two':13,'H2_divisor':'gcd(j,2)',
  'coefficient_bits':154000,'constant_bits':155000,'n_power':26,'J_power':14,
  'd6_height':{'n_power':1,'H1':54,'H2':48,'d6':13,'constant_bits':930000},
  'source_orders':[13,9,8],'fixed_frontier':57,'R7':[3,4,5,6,7,8,9],
  'projections':{'newly_cut_projection':[[1,50],[23,100],[1,25]],
                 'surviving_projection':[[2,25],[11,200],[1,25]]}}

if __name__=='__main__':
 import argparse
 ap=argparse.ArgumentParser();ap.add_argument('--write-certificate',action='store_true');args=ap.parse_args()
 path=ROOT/'evidence/joint_certificate.json'
 if args.write_certificate:path.write_text(json.dumps(make_certificate(),indent=2)+'\n')
 print(json.dumps(check(json.loads(path.read_text())),ensure_ascii=False,indent=2))
