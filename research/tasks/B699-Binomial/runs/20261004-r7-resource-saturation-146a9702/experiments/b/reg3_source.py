from pathlib import Path
import json, hashlib, sys, ctypes, time
from sympy import QQ
from sympy.polys.rings import ring
ROOT=Path.cwd()
RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
OUT=RUN/'experiments/b'
SRC=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results'
CONTAINER='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c'
R,u,y,r=ring('u,y,r',QQ)
manifest=json.loads((SRC/'MEMBERS.json').read_text(encoding='utf-8'))
records={m['name'].split('/',1)[1]:m for m in manifest['members'] if m['archive_sha256']==CONTAINER and m.get('retained_path')}
def load(name):
    m=records[name]; p=SRC/m['retained_path']; b=p.read_bytes(); h=hashlib.sha256(b).hexdigest()
    assert h==m['sha256'], (name,h,m['sha256'])
    return json.loads(b), {'member':name,'retained_path':m['retained_path'],'bytes':len(b),'sha256':h}
def poly(ts):
    assert all(len(e) in (3,4) and (len(e)==3 or e[3]==0) for e,c in ts)
    assert len({tuple(e[:3]) for e,c in ts})==len(ts)
    return R.from_dict({tuple(e[:3]):QQ(c) for e,c in ts})
def stats(p):
    return {'terms':len(p),'total_degree':max(map(sum,p)),'degrees':[max(e[i] for e in p) for i in range(3)],'coefficient_bits':max(abs(int(c.numerator)).bit_length() for c in p.values()),'denominators':sorted({int(c.denominator) for c in p.values()})}
def sources():
    g,rec=load('inputs/generic.json'); provenance=[rec]; fs={'P5':poly(g['B5'])}
    for i in [4,3,2,1,0]:
        c,rec=load(f'certificates/colon_{i}.json'); provenance.append(rec); fs[f'V{i}']=poly(c['V'])
    return fs, {k:poly(g[k]) for k in ['N','K']}, provenance
class Memory(ctypes.Structure):
    _fields_=[('length',ctypes.c_ulong),('load',ctypes.c_ulong),('physical_total',ctypes.c_ulonglong),('physical_available',ctypes.c_ulonglong),('pagefile_total',ctypes.c_ulonglong),('pagefile_available',ctypes.c_ulonglong),('virtual_total',ctypes.c_ulonglong),('virtual_available',ctypes.c_ulonglong),('extended_virtual_available',ctypes.c_ulonglong)]
def memory():
    m=Memory();m.length=ctypes.sizeof(m);assert ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m));return {k:int(getattr(m,k)) for k,t in m._fields_}
if __name__=='__main__':
    st=time.monotonic(); mem=memory(); fs, gates, provenance=sources()
    H=u*u-u*y*y+3*u*y-2*u+(y-1)**2; J=u*u+u*y*y-3*u*y+y
    A=4*u*y*y*H; B=3*(u-1)*(y-1)**2*J
    assert gates['N']==(u-1)*(A*r-B)
    d={'resource':mem,'source_provenance':provenance,'polynomials':{k:stats(v) for k,v in (fs|gates).items()},'N_definition_exact':True,'elapsed_seconds':round(time.monotonic()-st,3)}
    (OUT/'01-source-audit.json').write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in d.items() if k!='source_provenance'},ensure_ascii=False))

