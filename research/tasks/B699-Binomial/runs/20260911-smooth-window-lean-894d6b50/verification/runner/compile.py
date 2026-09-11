import os,sys,json,subprocess,hashlib,datetime,re,resource,time
from pathlib import Path
run=Path(os.environ["B699_RUN"])
out=run/"verification/current"
out.mkdir(parents=True,exist_ok=True)
env=os.environ.copy()
env["LEAN_PATH"]=str(Path.cwd())+os.pathsep+env.get("LEAN_PATH","")
results=[]
failed=False
for name,decls in [("Transfer",["choose_mul_choose","prime_dvd_choose_transfer","same_prime_transfer","strict_transfer_counterexample"]),("Congruence",["prime_dvd_primeProduct","choose_four_modEq_one","prime_not_dvd_choose_four","same_prime_above_of_local_congruence","same_prime_above_of_product_congruence","pow_sixty_modEq","primeProduct_fourteen","pow_sixty_modEq_nine","factorial_period_modEq"])]:
    src=run/"lean"/(name+".lean")
    log=out/(name+".log")
    code=src.read_text()
    if re.search(r"\b(sorry|admit|axiom|native_decide|sorryAx)\b|Lean\.ofReduceBool",code):
        raise SystemExit("Forbidden source token in "+str(src))
    cmd=["/usr/bin/time","-v","lake","env","lean","-M","3072","-o",str(src.with_suffix(".olean")),str(src)]
    started=time.time()
    with log.open("w") as f:
        proc=subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT)
    entry={"source":str(src),"sha256":hashlib.sha256(src.read_bytes()).hexdigest(),"command":cmd,"exit":proc.returncode,"elapsed":time.time()-started}
    if proc.returncode==0:
        audit=subprocess.run([sys.executable,str(run/"verification/runner/audit.py"),str(log),*decls],capture_output=True,text=True)
        (out/(name+".audit.log")).write_text(audit.stdout+audit.stderr)
        entry["audit_exit"]=audit.returncode
        failed |= audit.returncode != 0
    else:
        failed=True
        print(log.read_text()[-6000:])
    results.append(entry)
    (out/"compile.json").write_text(json.dumps(results,indent=2)+"\n")
    print(json.dumps(entry))
    if proc.returncode: break
(out/"complete.exit").write_text(str(int(failed))+"\n")
sys.exit(int(failed))
