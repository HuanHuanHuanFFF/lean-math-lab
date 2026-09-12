from pathlib import Path
import bisect,ctypes,hashlib,importlib,json,os,sys,time,argparse
if hasattr(sys, 'set_int_max_str_digits'): sys.set_int_max_str_digits(100000)
EXP=Path(__file__).resolve().parent; RUN=EXP.parents[1]
FULL=RUN/"experiments/huan-i11-coverage-feasibility-5e2d13bb/full.json"
OLD=RUN.parent/"20260910-pade-three-closure-4edad426/delivery"; VENDOR=OLD/"vendor"
BP=VENDOR/"crt_bound_probe.py"; CF=VENDOR/"crt_fast.py"; CD=OLD/"code/crt_descent.py"
B=15360; I=11; R=3; S=7; LO=3261; HI=3262; LIMIT=60.0; MEM=256*1024*1024; PS=(2,3,5,7)
class ResourceLimit(RuntimeError): pass
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
dsha=lambda x:hashlib.sha256(str(x).encode()).hexdigest()
def mem():
 if os.name=="nt":
  class C(ctypes.Structure): _fields_=[("cb",ctypes.c_ulong),("pf",ctypes.c_ulong),("peak",ctypes.c_size_t),("ws",ctypes.c_size_t),("x",ctypes.c_size_t*6)]
  k=ctypes.WinDLL("kernel32");p=ctypes.WinDLL("psapi");k.GetCurrentProcess.restype=ctypes.c_void_p;p.GetProcessMemoryInfo.argtypes=[ctypes.c_void_p,ctypes.POINTER(C),ctypes.c_ulong];p.GetProcessMemoryInfo.restype=ctypes.c_int;c=C();c.cb=ctypes.sizeof(c)
  if not p.GetProcessMemoryInfo(k.GetCurrentProcess(),ctypes.byref(c),c.cb):raise OSError("memory")
  return max(c.ws,c.peak)
 import resource
 return resource.getrusage(resource.RUSAGE_SELF).ru_maxrss*1024
def load():
 sys.path.insert(0,str(VENDOR));return importlib.import_module("crt_bound_probe"),importlib.import_module("crt_fast")
def fam(probe,H,M,guard):
 out=[];st=max(I*(I-1),M+1);idx=0
 for p in probe.primes(I):
  v=probe.vp(I,p);h=v+1;Q=p**h;cap=M//p**v
  while Q<H:
   amin=max(1,(st-I)//Q+1);amax=min(cap,(H-1)//Q);lo=max((1<<LO)+1,Q);hi=min(H-1,(1<<HI)*Q+10)
   if amin<=amax:out.append(dict(index=idx,p=p,h=h,Q=Q,amin=amin,amax=amax,shell_lo=lo,shell_hi=hi,bits=Q.bit_length()));idx+=1
   h+=1;Q*=p
   if idx%512==0:guard()
 return out
def lev(x):return "low" if x<=B//3 else "middle" if x<=2*B//3 else "high"
def choose(fs,n):
 by={p:[x for x in fs if x["p"]==p] for p in PS};out=[]
 for ii,p in enumerate(PS):
  for q in PS[ii+1:]:
   rs=by[q];los=[x["shell_lo"] for x in rs];his=[x["shell_hi"] for x in rs]
   def rg(x):return bisect.bisect_left(his,x["shell_lo"]),bisect.bisect_right(los,x["shell_hi"])
   for z in ("low","middle","high"):
    ls=[x for x in by[p] if lev(x["bits"])==z and rg(x)[0]<rg(x)[1]]
    if not ls:raise ResourceLimit("empty stratum")
    for j in range(n):
     a=ls[j*len(ls)//n];lo,hi=rg(a);out.append((a,rs[min(hi-1,lo+(j+1)*(hi-lo)//(n+1))]))
 return out
def pair(a,b,H,st,guard):
 Q,Rq=a["Q"],b["Q"];w=I-1;amin,amax=a["amin"],a["amax"];bmin,bmax=b["amin"],b["amax"];ne=terms=0;mx=st-1;mxn=None
 if Rq>amax:
  mode=0;inv=pow(Q,-1,Rq);aa=(-w*inv)%Rq
  for d in range(-w,w+1):
   if amin<=aa<=amax:
    u=Q*aa;assert (u-d)%Rq==0;bb=(u-d)//Rq
    if bmin<=bb<=bmax:
     v=Rq*bb;lo=max(st,u,v);hi=min(H-1,u+w,v+w)
     if lo<=hi:ne+=1;terms+=1;mx,mxn=(hi,hi) if hi>mx else (mx,mxn)
   aa=(aa+inv)%Rq;guard()
 elif Q>bmax:
  mode=1;inv=pow(Rq,-1,Q);bb=(w*inv)%Q
  for d in range(-w,w+1):
   if bmin<=bb<=bmax:
    v=Rq*bb;assert (v+d)%Q==0;aa=(v+d)//Q
    if amin<=aa<=amax:
     u=Q*aa;lo=max(st,u,v);hi=min(H-1,u+w,v+w)
     if lo<=hi:ne+=1;terms+=1;mx,mxn=(hi,hi) if hi>mx else (mx,mxn)
   bb=(bb-inv)%Q;guard()
 else:
  mode=2;inv=pow(Q,-1,Rq);aa=(-w*inv)%Rq;period=Q*Rq
  for d in range(-w,w+1):
   b0=(Q*aa-d)//Rq;base=Q*aa;lo0=base+max(0,-d);hi0=base+w-max(d,0)
   lt=max(-((aa-amin)//Rq),-((b0-bmin)//Q),-((hi0-st)//period));ht=min((amax-aa)//Rq,(bmax-b0)//Q,(H-1-lo0)//period)
   if lt<=ht:
    ne+=1;terms+=ht-lt+1;end=min(H-1,hi0+period*ht)
    if end>mx:mx,mxn=end,end
   aa=(aa+inv)%Rq;guard()
 return dict(indices=[a["index"],b["index"]],p=a["p"],h=a["h"],q=b["p"],k=b["h"],Q_bits=Q.bit_length(),R_bits=Rq.bit_length(),Q_sha=dsha(Q),R_sha=dsha(Rq),shell_overlap=True,mode=mode,d_count=2*w+1,nonempty_d=ne,progression_terms=terms,max_n_bits=mxn.bit_length() if mxn else None,max_n_sha=dsha(mxn) if mxn else None)
def run(mode,n,out):
 t=time.perf_counter();full=json.loads(FULL.read_text());s=full["statistics"];assert s["B"]==B and s["i"]==I and s["family_counts"]=={"2":15359,"3":9691,"5":6615,"7":5471} and s["total_families"]==37136
 probe,fast=load();txt=CF.read_text().replace(" ","");assert "pow(Q,-1,R)" in txt and "range(-width,width+1)" in txt and callable(fast.bound)
 H=1<<B;M=probe.get_M(probe.params({"i":I,"r":R,"s":S}),H);assert 1<<LO<M<=1<<HI;st=max(I*(I-1),M+1);peak=mem();guards=0
 def guard():
  nonlocal peak,guards
  guards+=1;peak=max(peak,mem())
  if time.perf_counter()-t>LIMIT:raise ResourceLimit("wall-time")
  if peak>MEM:raise ResourceLimit("memory")
 family_t=time.perf_counter();fs=fam(probe,H,M,guard);family_seconds=time.perf_counter()-family_t;counts={str(p):sum(x["p"]==p for x in fs) for p in PS};assert counts=={"2":15359,"3":9691,"5":6615,"7":5471};sel=choose(fs,n);assert len(sel)==18*n
 primitive_t=time.perf_counter();rec=[]
 for a,b in sel:
  pair_t=time.perf_counter();item=pair(a,b,H,st,guard);item["pair_wall_seconds"]=round(time.perf_counter()-pair_t,9);rec.append(item)
 primitive_seconds=time.perf_counter()-primitive_t;guard()
 r={"status":"benchmark_passed","mode":mode,"sample_count":len(rec),"selection":{"per_color_pair_per_bit_stratum":n,"bit_strata":{"low":[1,B//3],"middle":[B//3+1,2*B//3],"high":[2*B//3+1,B]},"shell_overlap_only":True},"parameters":{"B":B,"i":I,"r":R,"s":S,"H_bits":H.bit_length(),"M_bits":M.bit_length(),"M_bounds":[LO,HI],"M_sha":dsha(M),"start_bits":st.bit_length()},"family_counts":counts,"frozen":{"total_families":s["total_families"],"shell_overlap_upper":s["shell_overlap_pair_upper_bound"],"pair_offset_upper":s["pair_offset_loop_upper_bound_after_shell_pruning"]},"records":rec,"resource":{"wall_seconds":round(time.perf_counter()-t,6),"family_build_seconds":round(family_seconds,6),"primitive_total_seconds":round(primitive_seconds,6),"pair_wall_seconds":{"min":min(x["pair_wall_seconds"] for x in rec),"max":max(x["pair_wall_seconds"] for x in rec),"mean":sum(x["pair_wall_seconds"] for x in rec)/len(rec)},"peak_working_set_bytes":peak,"peak_working_set_mib":round(peak/(1024*1024),3),"guard_samples":guards,"seconds_limit":LIMIT,"memory_limit_bytes":MEM},"source_hashes":{str(x):sha(x) for x in (FULL,BP,CF,CD)},"source_mapping":{"crt_fast_bound":"crt_fast.py:9-77; one-pair branch copied, bound() not called","crt_bound_probe":"crt_bound_probe.py:11-35; params/get_M/primes/vp","main_not_invoked":True},"not_executed":["full crt_fast.bound","all 185190380 shell pairs","pair-offset coverage","cofactor enumeration","full n/j","Lean","Git"]}
 out.write_text(json.dumps(r,ensure_ascii=False,indent=2)+"\n");out.with_name(out.stem+"-integrity.json").write_text(json.dumps({"output":str(out.relative_to(EXP)).replace("\\","/"),"output_sha256":sha(out),"input_sha256":r["source_hashes"]},indent=2)+"\n");return r
def main():
 p=argparse.ArgumentParser();p.add_argument("--mode",choices=["pilot","full"],required=True);p.add_argument("--per-stratum",type=int);p.add_argument("--output",type=Path);a=p.parse_args();n=a.per_stratum or (1 if a.mode=="pilot" else 8)
 if n<=0 or 18*n>200:p.error("sample count must be in 1..200")
 r=run(a.mode,n,a.output or EXP/f"{a.mode}.json");print(json.dumps({"status":r["status"],"mode":r["mode"],"sample_count":r["sample_count"],"wall_seconds":r["resource"]["wall_seconds"],"peak_working_set_bytes":r["resource"]["peak_working_set_bytes"],"M_bits":r["parameters"]["M_bits"],"family_counts":r["family_counts"]}));return 0
if __name__=="__main__":raise SystemExit(main())
