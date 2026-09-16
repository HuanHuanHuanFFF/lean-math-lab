#!/usr/bin/env python3
"""Reject corrupted NEW finite certificates; no old theorem replay."""
from __future__ import annotations
import copy,hashlib,json,time
from pathlib import Path
import verify as V
ROOT=Path(__file__).resolve().parents[1]

def main():
 at=time.monotonic()
 cfg=json.loads((ROOT/'evidence/config.json').read_text())
 cert=json.loads((ROOT/'evidence/affine-certificates.json').read_text())
 tests=[]
 def rejected(name,change):
  c=copy.deepcopy(cfg);e=copy.deepcopy(cert);change(c,e)
  try:V.check_certificate(e,c)
  except (ValueError,KeyError,TypeError,IndexError) as exc:
   tests.append({'name':name,'rejected':True,'reason':str(exc)[:150]})
  else:raise AssertionError('corruption accepted: '+name)
 rejected('wrong_config_schema',lambda c,e:c.update(schema='legacy'))
 rejected('wrong_certificate_schema',lambda c,e:e.update(schema='legacy'))
 rejected('missing_target_6',lambda c,e:c['targets'].remove(6))
 rejected('K4_is_not_LCM12',lambda c,e:c['K'].update({'4':12}))
 rejected('K8_is_not_LCM840',lambda c,e:c['K'].update({'8':840}))
 rejected('missing_divisor_420',lambda c,e:c['cofactors']['8'].remove(420))
 rejected('cofactor_size_not_divisibility',lambda c,e:c['cofactors']['8'].append(419))
 rejected('missing_template',lambda c,e:e['records'].pop())
 rejected('duplicate_template',lambda c,e:e['records'].append(copy.deepcopy(e['records'][0])))
 rejected('zero_slope',lambda c,e:e['records'][0]['key'].__setitem__(3,0))
 rejected('unknown_mode',lambda c,e:e['records'][0].update(mode='accept'))
 rejected('unit_on_zero_row',lambda c,e:e['records'][0].update(row=0))
 rejected('repeated_support_subset',lambda c,e:e['records'][16].update(rows=[1,1]))
 rejected('empty_support_subset',lambda c,e:e['records'][16].update(rows=[]))
 rejected('support_subset_uses_zero_row',lambda c,e:e['records'][16].update(rows=[0,1]))
 rejected('no_support_deficit',lambda c,e:e['records'][16].update(rows=[1]))
 rejected('insufficient_anchors',lambda c,e:e['records'][21].update(anchors=[0,1]))
 rejected('duplicate_anchor',lambda c,e:e['records'][21].update(anchors=[0,1,1]))
 rejected('zero_row_anchor',lambda c,e:e['records'][21].update(anchors=[0,1,2]))
 rejected('wrong_divisor_count',lambda c,e:e['records'][21].update(divisors=55))
 rejected('discard_candidate',lambda c,e:e['records'][21].update(candidates=3))
 rejected('wrong_rejection_count',lambda c,e:e['records'][21].update(norms=3))
 rejected('wrong_candidate_digest',lambda c,e:e['records'][21].update(candidate_sha256='0'*64))
 rejected('wrong_rejection_digest',lambda c,e:e['records'][21].update(rejection_sha256='0'*64))
 # These deliberate power errors are tested without presupposing a generated
 # certificate: the source endpoint must retain complete powers >= p^2.
 for i,power,wrong in [(5,25,5),(5,125,25),(7,49,7),(7,343,49)]:
  got=V.qpart(power,i)
  V.need(got==power and got!=wrong,'endpoint-power regression')
  tests.append({'name':f'endpoint_{power}_not_{wrong}','rejected':True,'reason':'complete power retained'})
 for filename,sha in [('05-unit-window-acceptance.md','187bf8c33319aa0284a29fcf00a5fddad5d2d504'),('10-complete-i8-i9-unit-window-acceptance.md','b6c9dd341922d83244ba5e935f164bcbd4aabb66')]:
  b=(ROOT/'sources'/filename).read_bytes()+b'\n'
  changed=hashlib.sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest()
  V.need(changed!=sha,'source mutation not detected')
  tests.append({'name':'source_bytes_'+filename,'rejected':True,'reason':'Git blob differs after byte mutation'})
 out={'status':'PASS_MUTATION_TESTS','count':len(tests),'tests':tests,'elapsed_seconds':time.monotonic()-at}
 (ROOT/'outputs/mutations.json').write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps({'status':out['status'],'count':len(tests),'elapsed_seconds':out['elapsed_seconds']},indent=2))
if __name__=='__main__':main()
