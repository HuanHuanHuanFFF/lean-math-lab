#!/usr/bin/env python3
import argparse,datetime,hashlib,json,os,re,subprocess,time
from pathlib import Path
ap=argparse.ArgumentParser()
ap.add_argument("module")
ap.add_argument("--root",default="research/tasks/B699-Binomial/runs/20260911-smooth-window-lean-894d6b50")
args=ap.parse_args()
root=Path.cwd(); run=Path(args.root); src=run/"lean"/(args.module+".lean")
stamp=datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
out=run/"verification"/stamp
out.mkdir(parents=True,exist_ok=False)
code=src.read_text()
if re.search(r"\b(sorry|admit|axiom|native_decide|sorryAx)\b|Lean\.ofReduceBool",code):
    raise SystemExit("Forbidden source token")
env=os.environ.copy()
elan_dir=root/".elan"
if not (elan_dir/"bin/elan").exists():
    elan_dir=Path(env.get("ELAN_HOME",str(Path.home()/".elan")))
env["ELAN_HOME"]=str(elan_dir)
env["PATH"]=str(elan_dir/"bin")+os.pathsep+env["PATH"]
env["LEAN_PATH"]=str(root)+os.pathsep+env.get("LEAN_PATH","")
def resources():
    d={}
    for name in ["memory.max","memory.current","memory.peak","cpu.max"]:
        p=Path("/sys/fs/cgroup")/name
        if p.exists():d[name]=p.read_text().strip()
    v=os.statvfs(".");d["disk_available_bytes"]=v.f_bavail*v.f_frsize
    return d
def family_rss(pid):
    entries=[]
    for p in Path("/proc").iterdir():
        if not p.name.isdigit():continue
        try:
            d=dict(x.split(":",1) for x in (p/"status").read_text().splitlines() if ":" in x)
            ns=[int(x) for x in d.get("NSpid",p.name).split()]
            entries.append((int(p.name),ns[-1],int(d.get("PPid","0")),int(d.get("VmRSS","0 kB").split()[0])))
        except (OSError,ValueError,IndexError):continue
    mapping={outer:inner for outer,inner,_,_ in entries}
    ds={pid}
    for _ in range(10):
        old=len(ds)
        for outer,inner,ppid,rss in entries:
            if mapping.get(ppid,ppid) in ds:ds.add(inner)
        if len(ds)==old:break
    return sum(rss for _,inner,_,rss in entries if inner in ds)
records=[]
def execute(label,path,object_path=None):
    cmd=["bash","scripts/lean-work.sh","lake","env","lean","-M","3072"]
    if object_path is not None:cmd+=["-o",str(object_path)]
    cmd+=[str(path)]
    log=out/(label+".log")
    started=time.monotonic();peak=0;before=resources()
    with log.open("w") as f:
        proc=subprocess.Popen(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,start_new_session=True)
        while proc.poll() is None:
            peak=max(peak,family_rss(proc.pid))
            time.sleep(0.2)
    d={"source":str(path),"sha256":hashlib.sha256(path.read_bytes()).hexdigest(),"command":cmd,
       "exit":proc.returncode,"elapsed_seconds":time.monotonic()-started,
       "observed_process_tree_peak_rss_kib":peak,"before":before,"after":resources()}
    records.append(d)
    (out/"commands.json").write_text(json.dumps(records,indent=2)+"\n")
    print(json.dumps({k:v for k,v in d.items() if k not in ["before","after","command"]}))
    if proc.returncode:
        print(log.read_text()[-6500:])
        raise SystemExit(proc.returncode)
    return log
log=execute("compile",src,src.with_suffix(".olean"))
decls=re.findall(r"^theorem\s+([A-Za-z_][A-Za-z_0-9]*)",code,re.M)
module=str(src.with_suffix("")).replace("/",".").replace("B699-Binomial","«B699-Binomial»").replace("20260911-smooth-window-lean-894d6b50","«20260911-smooth-window-lean-894d6b50»")
audit=out/"Audit.lean"
audit.write_text("import "+module+"\n"+"\n".join("#check @B699.SmoothWindow."+n+"\n#print axioms B699.SmoothWindow."+n for n in decls)+"\n")
alog=execute("audit",audit)
r=subprocess.run(["python3",str(run/"verification/runner/audit.py"),str(alog),*decls],capture_output=True,text=True)
(out/"axiom-parser.log").write_text(r.stdout+r.stderr)
if r.returncode:
    print(r.stdout+r.stderr);raise SystemExit(r.returncode)
summary={"status":"accepted","module":args.module,"source_sha256":hashlib.sha256(src.read_bytes()).hexdigest(),
         "declarations":decls,"axioms":json.loads(Path(str(alog)+".axioms.json").read_text()),"evidence":str(out)}
(out/"acceptance.json").write_text(json.dumps(summary,indent=2)+"\n")
(run/"verification"/("latest-"+args.module+".json")).write_text(json.dumps(summary,indent=2)+"\n")
print(json.dumps({"accepted":args.module,"declarations":len(decls),"evidence":str(out)}))

