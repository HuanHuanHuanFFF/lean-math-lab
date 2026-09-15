from pathlib import Path
import json,zipfile,hashlib,shutil
R=Path(__file__).resolve().parents[1]
cs=[]
with zipfile.ZipFile('/mnt/data/B699-ProD-position-descent-20260915.zip') as z:
 old=json.loads(z.read('evidence/dual_certificates.json'))['certificates']
 for c in old:
  if c['target']==8 and c['H'] in [[0,1,7],[0,2,6],[0,3,4],[0,3,5]]:
   c=dict(c);c['id']='8-'+''.join(map(str,c['H']));c['origin']='frozen-position-height';c['bound_kind']='coarse';c['N']=str(2**c['height_exponent']);c['T']=32768;cs.append(c)
for c0 in json.loads((R/'exploration/four_full_bounds.json').read_text()):
 c=dict(c0);c['d']=c['target']=8;c['row_weights']=c.pop('w');c['gap']=c.pop('delta');c['degree_weight']=c['W']-c['gap'];c['id']='8-'+''.join(map(str,c['H']));c['origin']='new-four-position-height';c['bound_kind']='coarse';c['N']=str(2**c['height_exponent']);c['T']=32768;cs.append(c)
x=json.loads((R/'exploration/six_three_full_lp.json').read_text())['certificates'][0]
for m,N,T in [(6,46657,256),(7,5489031745,262144)]:
 c={'d':6,'target':m,'H':[0,4,5],'row_weights':x['w'],'polynomials':x['polynomials'],'gap':1,'W':13,'degree_weight':12,
    'id':str(m)+'-045','origin':'new-three-position-height','bound_kind':'six-geometric','N':str(N),'T':T}
 cs.append(c)
(R/'evidence/height_certificates.json').write_text(json.dumps({'format':1,'cases':cs},indent=2)+'\n')
# Store the two complete frozen positive sources, not their large historical replays.
(R/'sources/archives').mkdir(exist_ok=True)
inputs=[]
for name in ['B699-ProD-position-descent-20260915.zip','B699-ProD-even-gap-cluster-closure-20260914.zip']:
 p=Path('/mnt/data')/name;dst=R/'sources/archives'/name;shutil.copyfile(p,dst)
 inputs.append({'role':'frozen positive mathematical input','file':str(dst.relative_to(R)),'bytes':dst.stat().st_size,'sha256':hashlib.sha256(dst.read_bytes()).hexdigest(),'replay':'NOT rerun; only the four explicitly selected old height certificates are rechecked'})
# The latest LCM frontier is read but not a dependency of the new positive chain.
p=Path('/mnt/data/B699-ProD-lcm-denominator-closure-20260915.zip')
inputs.append({'role':'frontier reference, not a positive dependency','original_filename':p.name,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'excerpts':'sources/lcm/'})
(R/'sources/INPUTS.json').write_text(json.dumps(inputs,indent=2)+'\n')
print('Prepared',len(cs),'target cases')
