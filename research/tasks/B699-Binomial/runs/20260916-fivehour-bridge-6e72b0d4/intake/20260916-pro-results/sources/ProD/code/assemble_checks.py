#!/usr/bin/env python3
"""Validate exact coverage of all bounded high-domain chunks, not zero summaries alone."""
from pathlib import Path
import json,argparse
ROOT=Path(__file__).resolve().parents[1]
def assemble(directory):
 chunks=[json.loads(p.read_text())for p in directory.glob('*.json')]
 expected={(2,3):(884,559),(2,5):(884,381),(3,5):(559,381)};counts=None
 assert len(chunks)==13
 for pair,(outer,inner)in expected.items():
  cs=sorted((c for c in chunks if tuple(c['primes'])==pair),key=lambda c:c['outer_indices'][0]);at=0
  for c in cs:
   a,b=c['outer_indices'];assert a==at and a<b<=outer;at=b
   assert c['outer_length']==outer and c['inner_length']==inner
   assert c['N_exponent']==886 and c['cutoff_exponent']==18
   assert c['status']=='PASS_H023_DOMAIN_CHUNK' and c['candidates']==[]
   st=c['counts'];assert st['pairs']==(b-a)*inner and st['positions']==6*st['pairs']
   assert 0<=st['mass_survivors']<=st['exact_pair']<=st['full_H023']<=st['range']<=st['positions']
   assert st['mass_survivors']==0
   if counts is None:counts={k:0 for k in st}
   for k in counts:counts[k]+=st[k]
  assert at==outer
 assert sum(counts[k]for k in ['pairs'])==884*559+884*381+559*381
 return {'status':'PASS_H023_COMPLETE_DOMAIN','chunks':len(chunks),'complete_range':'2^18 <= n < 2^886','counts':counts,'candidates':[],
 'meaning':'Complete necessary two-power candidate domain is empty; no extrapolation to n >= 2^886.'}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--directory',type=Path,default=ROOT/'evidence/high_check');ap.add_argument('--out',type=Path,default=ROOT/'evidence/high_complete.json');a=ap.parse_args();v=assemble(a.directory);a.out.write_text(json.dumps(v,indent=2)+'\n');print(v)
