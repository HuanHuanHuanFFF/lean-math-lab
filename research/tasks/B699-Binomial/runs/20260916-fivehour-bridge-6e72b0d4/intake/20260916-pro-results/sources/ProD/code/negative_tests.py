#!/usr/bin/env python3
from pathlib import Path
import copy,json,time,tempfile,shutil
from check_finite import verify
from assemble_checks import assemble
ROOT=Path(__file__).resolve().parents[1]

def main():
 d=json.loads((ROOT/'evidence/finite_certificate.json').read_text());mods=[]
 def case(name,f):mods.append((name,f))
 case('wrong-H02-height',lambda z:z.update(H02_height=str(int(z['H02_height'])-1)))
 case('wrong-H023-height',lambda z:z.update(H023_height_exponent=885))
 case('drop-low-H02-row',lambda z:z['low']['5']['rows'].pop())
 case('drop-low-H023-row',lambda z:z['low']['7']['rows'].pop())
 case('wrong-target',lambda z:z['low']['7']['rows'][0].update(m=6))
 case('carry-gap-left',lambda z:z['low']['5']['rows'][0]['intervals'][0].__setitem__(0,7))
 case('carry-gap-right',lambda z:z['low']['7']['rows'][0]['intervals'][-1].__setitem__(1,8))
 case('composite-source-base',lambda z:z['low']['5']['rows'][0]['intervals'][0].__setitem__(2,9))
 case('delete-high-row',lambda z:z['H02_high']['post_QIG'].pop())
 case('fabricate-high-row',lambda z:z['H02_high']['post_QIG'].append(2**120))
 rid=next(i for i,r in enumerate(d['H02_high']['norm']['rows'])if r['templates'])
 case('missing-alpha-template',lambda z:z['H02_high']['norm']['rows'][rid]['templates'].pop())
 case('wrong-q1',lambda z:z['H02_high']['norm']['rows'][rid].__setitem__('q1',1))
 case('drop-full-prime-factor',lambda z:z['H02_high']['norm']['rows'][rid]['factors'].pop())
 rr,tt=next((i,k)for i,r in enumerate(d['H02_high']['norm']['rows'])for k,t in enumerate(r['templates'])if t['betas'])
 case('erase-real-beta',lambda z:z['H02_high']['norm']['rows'][rr]['templates'][tt]['betas'].pop())
 case('false-NORM-failure-list',lambda z:z['H02_high']['norm']['rows'][rr]['templates'][tt]['betas'][0].__setitem__('failed_rows',[]))
 pp=max(int(p)for p in d['primes'])
 case('invalid-prime-witness',lambda z:z['primes'][str(pp)].update(witness=1))
 case('wrong-prime-factorization',lambda z:z['primes'][str(pp)]['factors'].pop())
 mm,ii,jj=next((m,i,k)for m,z in d['low'].items()for i,r in enumerate(z['rows'])for k,iv in enumerate(r['intervals'])if iv[3]>iv[2])
 case('truncate-carry-power',lambda z:z['low'][mm]['rows'][ii]['intervals'][jj].__setitem__(3,z['low'][mm]['rows'][ii]['intervals'][jj][3]//z['low'][mm]['rows'][ii]['intervals'][jj][2]))
 results=[];st=time.time()
 for name,f in mods:
  z=copy.deepcopy(d);f(z)
  try:verify(z)
  except (AssertionError,KeyError,ValueError,IndexError)as e:results.append({'test':name,'result':'REJECT','exception':type(e).__name__})
  else:raise AssertionError('Bad certificate accepted: '+name)
 for mode in ('missing-high-chunk','overlap-high-chunks'):
  with tempfile.TemporaryDirectory()as tmp:
   t=Path(tmp)
   for p in(ROOT/'evidence/high_check').glob('*.json'):shutil.copyfile(p,t/p.name)
   p=sorted(t.glob('*.json'))[0]
   if mode=='missing-high-chunk':p.unlink()
   else:
    z=json.loads(p.read_text());z['outer_indices'][0]=1;p.write_text(json.dumps(z))
   try:assemble(t)
   except AssertionError:results.append({'test':mode,'result':'REJECT','exception':'AssertionError'})
   else:raise AssertionError(mode)
 out={'status':'PASS_NEGATIVE_TESTS','count':len(results),'tests':results,'limits':'Targeted certificate-corruption tests, not proof of arbitrary checker correctness.'}
 (ROOT/'evidence/negative_tests.json').write_text(json.dumps(out,indent=2)+'\n');print(out['status'],out['count'],'seconds',time.time()-st)
if __name__=='__main__':main()
