#!/usr/bin/env python3
import argparse,copy,json,time
from pathlib import Path
from check_finite import validate,Invalid

def main():
 p=argparse.ArgumentParser();p.add_argument('certificate',type=Path);p.add_argument('--output',type=Path);a=p.parse_args()
 original=json.loads(a.certificate.read_text());start=time.monotonic();tests=[]
 def run(name,fn):
  d=copy.deepcopy(original);fn(d)
  try:validate(d)
  except (Invalid,ValueError,TypeError,KeyError,ZeroDivisionError) as e:tests.append({'case':name,'result':'REJECT','message':str(e)})
  else:raise RuntimeError('bad certificate accepted: '+name)
 run('missing complete row',lambda d:d['rows'].pop())
 run('duplicate row',lambda d:d['rows'].append(copy.deepcopy(d['rows'][0])))
 run('empty row domain',lambda d:d.update(rows=[]))
 run('changed target exponent',lambda d:d.update(vmax=35))
 run('extra target exponent',lambda d:d.update(vmax=37))
 run('zero odd part',lambda d:d['rows'][0].__setitem__(1,0))
 run('changed row odd part',lambda d:d['rows'][0].__setitem__(1,d['rows'][0][1]+2))
 run('changed prime-power exponent',lambda d:d['rows'][0][2][0].__setitem__(1,d['rows'][0][2][0][1]+1))
 run('missing row prime power',lambda d:d['rows'][0][2].pop())
 run('missing base primality certificate',lambda d:d['primes'].pop('2'))
 run('false base certificate',lambda d:d['primes']['2'].update(a=0))
 run('order witness one',lambda d:d['primes']['3'].update(a=1))
 run('order witness zero',lambda d:d['primes']['3'].update(a=0))
 run('incomplete p-minus-one factors',lambda d:d['primes']['3'].update(factors=[]))
 run('composite factor used as prime',lambda d:d['primes'].update({'4':{'a':3,'factors':[[3,1]]}}))
 run('negative prime exponent',lambda d:d['primes']['3']['factors'][0].__setitem__(1,-1))
 result={'status':'PASS','rejected':len(tests),'cases':tests,'seconds':time.monotonic()-start}
 if a.output:a.output.write_text(json.dumps(result,indent=2)+'\n')
 print(json.dumps({'status':'PASS','rejected':len(tests),'seconds':result['seconds']}))
if __name__=='__main__':main()
