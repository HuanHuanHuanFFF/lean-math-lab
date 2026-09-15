#!/usr/bin/env python3
"""Negative receiver tests. Rejections do not constitute independent mathematical review."""
import argparse,copy,json,time
from pathlib import Path
import verify as V
ROOT=Path(__file__).resolve().parents[1]

def main(out):
 t=time.perf_counter();ds=json.loads((ROOT/'evidence/dual_certificates.json').read_text());fc=json.loads((ROOT/'evidence/finite_certificate.json').read_text());ans=[]
 def reject(name,obj,fn,change):
  x=copy.deepcopy(obj);change(x)
  try:fn(x)
  except (ValueError,KeyError,TypeError,IndexError,AssertionError,ZeroDivisionError) as e:ans.append({'name':name,'rejected':True,'reason':str(e)[:140]})
  else:raise ValueError('MUTATION ACCEPTED: '+name)
 d=ds['certificates'][0]
 reject('lower claimed height',d,V.verify_dual,lambda c:c.__setitem__('height_exponent',0))
 reject('alter logarithmic constant',d,V.verify_dual,lambda c:c.__setitem__('K',c['K']+1))
 reject('wrong exact degree gap',d,V.verify_dual,lambda c:c.__setitem__('gap',0))
 reject('missing incidence polynomial',d,V.verify_dual,lambda c:c['polynomials'].clear())
 reject('zero polynomial',d,V.verify_dual,lambda c:c['polynomials'][0].__setitem__('coeffs',[0]*len(c['polynomials'][0]['coeffs'])))
 reject('negative polynomial weight',d,V.verify_dual,lambda c:c['polynomials'][0].__setitem__('weight',-1))
 reject('rough weight put at maximum position',d,V.verify_dual,lambda c:c['row_weights'].__setitem__(str(c['H'][0]),1))
 reject('missing dual profile',ds,V.verify_all_duals,lambda c:c['certificates'].pop())
 reject('duplicate dual profile',ds,V.verify_all_duals,lambda c:c['certificates'].append(copy.deepcopy(c['certificates'][0])))
 d7=next(c for c in ds['certificates'] if c['target']==7)
 reject('drop isolated endpoint cost',d7,V.verify_dual,lambda c:c['small_exponents'].__setitem__('7',0))
 bs=fc['bounds'];b=next(c for c in bs if c['kind']=='moment')
 reject('lower analytic tail cutoff',b,V.verify_moment,lambda c:c.__setitem__('cutoff',c['cutoff']-1))
 reject('remove moment axis',b,V.verify_moment,lambda c:c.__setitem__('axes',[0]*c['d']))
 reject('negative moment quadratic',b,V.verify_moment,lambda c:c.__setitem__('quad',-1))
 reject('fractional moment weight',b,V.verify_moment,lambda c:c.__setitem__('quad',1.5))
 reject('wrong moment C',b,V.verify_moment,lambda c:c.__setitem__('C',c['C']+1))
 reject('missing tail family',bs,V.verify_bounds,lambda c:c.pop())
 reject('duplicate tail family',bs,V.verify_bounds,lambda c:c.append(copy.deepcopy(c[0])))
 reject('wrong direct target5 cutoff',bs,V.verify_bounds,lambda c:next(b for b in c if b['m']==5).__setitem__('cutoff',226))
 reject('wrong alpha14 cutoff',bs,V.verify_bounds,lambda c:next(b for b in c if b['kind']=='alpha14' and b['m']==7).__setitem__('cutoff',421))
 row={'n':50,'m':7,'cover':[[8,25,7,2]]};V.verify_row(row)
 reject('drop top layer49 to7',row,V.verify_row,lambda c:c['cover'][0].__setitem__(3,1))
 reject('prime below target threshold',row,V.verify_row,lambda c:c['cover'][0].__setitem__(2,5))
 reject('composite witness',row,V.verify_row,lambda c:c['cover'][0].__setitem__(2,9))
 reject('gap at start of row',row,V.verify_row,lambda c:c['cover'][0].__setitem__(0,9))
 reject('missing final legal j',row,V.verify_row,lambda c:c['cover'][0].__setitem__(1,24))
 reject('past half row',row,V.verify_row,lambda c:c['cover'][0].__setitem__(1,26))
 reject('empty row certificate',row,V.verify_row,lambda c:c['cover'].clear())
 reject('zero carry exponent',row,V.verify_row,lambda c:c['cover'][0].__setitem__(3,0))
 reject('prime power exceeds n',row,V.verify_row,lambda c:c['cover'][0].__setitem__(3,3))
 reject('isolated endpoint does not divide source',row,V.verify_row,lambda c:c.update({'n':22,'cover':[[8,11,7,1]]}))
 reject('illegal target range',row,V.verify_row,lambda c:c.__setitem__('n',10))
 # Full domain mutations reuse a verified expensive CRT enumeration, not skip its semantics.
 low,summary=V.finite_domain(bs);high,stats=V.receiver_crt(fc['crt027']['N'],fc['crt027']['lower']);expected=low|{(8,n) for n in high}
 def domain_only(c):
  V.check(c['schema']=='b699-D-position-descent-finite-v1','schema');V.check(c['domain_summary']==summary,'low domain');V.check(c['crt027']==stats,'full CRT domain');V.check(c['high027']==sorted(high),'CRT set')
  rows=[(r['m'],r['n']) for r in c['rows']];V.check(len(rows)==len(set(rows)) and set(rows)==expected and rows==sorted(rows),'final domain')
 domain_only(fc)
 reject('delete low finite row',fc,domain_only,lambda c:c['rows'].pop(0))
 reject('delete high CRT candidate',fc,domain_only,lambda c:c['high027'].pop())
 reject('duplicate finite row',fc,domain_only,lambda c:c['rows'].append(copy.deepcopy(c['rows'][0])))
 reject('tamper exponent enumeration count',fc,domain_only,lambda c:c['crt027'].__setitem__('assignments_tested',1))
 reject('omit an old residue table class',fc,domain_only,lambda c:c['domain_summary'][0].__setitem__('structural_classes',0))
 data={'status':'PASS_BAD_CERTIFICATE_REJECTIONS','tests':len(ans),'results':ans,'scope':'Exact schema/arithmetic/coverage rejections; no Lean or independent reviewer.'}
 out.mkdir(parents=True,exist_ok=True);(out/'mutations.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':data['status'],'tests':len(ans),'seconds':time.perf_counter()-t}))
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args();main(a.out)
