#!/usr/bin/env python3
"""New exponent arithmetic using an explicitly frozen PC contract.
Does not independently prove or replay PC/content/BFT or any historical matrix.
"""
from pathlib import Path
from fractions import Fraction as F
import hashlib,json,zipfile
ROOT=Path(__file__).resolve().parents[1]
MEMBER='B699-ProA-i9-H012-d6-20260916/sources/frozen_sources__QUADRATIC_PROOFS.md'

def certificate():
 return {'source_sha256':hashlib.sha256((ROOT/'sources/PC_FROZEN_PROOFS.md').read_bytes()).hexdigest(),
         'pc_power':5000,'pc_n_power':463,'full_small_factor':2,
         'raise_joint':625,'g_power':8125,'g_n_power':787,'constant_bits':96880463,
         'denominator_power':10,'height_n_power':255,'height_d_power':8125,
         'height_constant_bits':968804630,'d10_small_bits':300000,
         'source_small_part_power':10,'source_n_power':9}

def check(d):
 count=0
 def req(ok,why):
  nonlocal count
  if not ok:raise ValueError(why)
  count+=1
 src=(ROOT/'sources/PC_FROZEN_PROOFS.md').read_bytes()
 with zipfile.ZipFile(ROOT/'sources/H012-d6-original.zip') as z:
  req(src==z.read(MEMBER),'exact PC source member')
 req(hashlib.sha256(src).hexdigest()==d['source_sha256'],'PC member sha')
 req((d['pc_power'],d['pc_n_power'],d['full_small_factor'])==(5000,463,2),'fixed PC and complete small factor')
 t=d['raise_joint'];req(t==625,'raise joint power')
 req(8*t==5000 and 9*t>=5000,'rough product coverage')
 req(d['g_power']==13*t==8125,'g power')
 req(d['g_n_power']==2*t-463==787,'n power')
 c=155000*t+5000+463
 req(c==d['constant_bits']==96880463,'retained factor2 constant')
 h=d['denominator_power'];req(h==10,'denominator power')
 req(8125-h*787==d['height_n_power']==255>0,'strict height gap')
 req(d['height_d_power']==8125,'d exponent')
 req(d['height_constant_bits']==h*c==968804630,'height constant')
 req(d['d10_small_bits']==300000,'small domain')
 req(h*c+8125*d['d10_small_bits']==3406304630<255*14000001,'complete ENTRY connection')
 req((d['source_small_part_power'],d['source_n_power'])==(10,9),'source exponents')
 req(10*(8125-787)-9*8125==255,'source height gap')
 req(h*c<255*14000001,'source contradiction')
 req(F(5,6)<F(9,10)<F(8125-787,8125),'source threshold comparison')
 req(F(2,25)<F(787,8125),'surviving precise logarithmic projection')
 return {'status':'PASS_NEW_PC_D10_ARITHMETIC','checks':count,
         'source_member':MEMBER,'source_sha256':d['source_sha256'],
         'g_exponent':'787/8125','height_exponent':'8125/255',
         'pc_replayed':False,'old_chain_replayed':False}

def mutations():
 from copy import deepcopy
 base=certificate();cases=[('omit_full_2','full_small_factor',1),
 ('wrong_pc_power','pc_power',4999),('wrong_pc_exponent','pc_n_power',464),
 ('wrong_g_power','g_power',8126),('wrong_n_power','g_n_power',786),
 ('drop_factor2_constant','constant_bits',96875463),
 ('h11_not10','denominator_power',11),('height_gap256','height_n_power',256),
 ('source_power11','source_small_part_power',11)]
 rejected=[]
 for name,key,val in cases:
  d=deepcopy(base);d[key]=val
  try:check(d)
  except (ValueError,KeyError,AssertionError):rejected.append(name)
  else:raise AssertionError('incorrectly accepted '+name)
 return {'status':'PASS_PC_PARAMETER_MUTATIONS','rejected':rejected,'count':len(rejected)}

if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--write-certificate',action='store_true');a=p.parse_args()
 target=ROOT/'evidence/pc_d10_certificate.json'
 if a.write_certificate:target.write_text(json.dumps(certificate(),indent=2)+'\n')
 print(json.dumps(check(json.loads(target.read_text())),indent=2))
