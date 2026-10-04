from resource_model import *
import ctypes
M=type('M',(ctypes.Structure,),{'_fields_':[('length',ctypes.c_ulong),('load',ctypes.c_ulong)]+[(n,ctypes.c_ulonglong) for n in ['total','available','pt','pa','vt','va','ex']]});m=M();m.length=ctypes.sizeof(m);ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(m));assert m.available>256*1024**2,'resource checkpoint below256MiB'
start=time.monotonic();raw,sigs=signatures()
@lru_cache(None)
def best(n,c):
 if n==0:return 0
 if time.monotonic()-start>90:raise RuntimeError('bounded checkpoint; no mathematical decision')
 return min((s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],c))) for s in sigs if all(x<=y for x,y in zip(s[1:],c))),default=10**6)
positive=[(6,(0,)*6)]
for r in range(6):
 c=[0]*6;c[r]=1 if r%2 else 2;positive.append((4,tuple(c)))
for c in under(2):
 if sum(c)==2 and all(c[r]%2==0 for r in (0,2,4)):positive.append((3,c))
survivors=[];closed=[]
for st in all_states():
 if st['E']!=1:continue
 opts=[];seven=best(7,st['cap'])
 if seven<=st['h']:opts.append(dict(positive=None,min_degree=seven))
 for q,c in positive:
  if all(a<=b for a,b in zip(c,st['cap'])):
   b6=best(6,tuple(b-a for a,b in zip(c,st['cap'])));deg=q+b6
   if deg<=st['h']:opts.append(dict(positive=[q,c],min_degree=deg,positive_q_upper=st['h']-b6))
 if opts:survivors.append(dict(**st,options=opts))
 else:closed.append(st['idx'])
out=dict(scope='author necessary E1 budget using candidate global q3 epsilon1 total-source-cost>=2, plus adopted ODD-SAT3-5 and global649; not original NC classification',source_nonzero_memory_available=m.available,positive_proxies=positive,survivor_count=len(survivors),survivors=survivors,closed=closed,seconds=round(time.monotonic()-start,3),cache=best.cache_info()._asdict())
Path(sys.argv[1]).write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in out.items() if k not in ['survivors','closed','positive_proxies']}));print('first',survivors[0]);print('old78removed',sorted(set(x['idx'] for x in json.loads((Path(__file__).parent/'odd-refined-resources.json').read_text())['survivors'])-set(x['idx'] for x in survivors)))
